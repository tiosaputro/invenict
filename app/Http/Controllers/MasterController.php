<?php

namespace App\Http\Controllers;
use App\Master;
use App\Exports\MasterExport;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use DB;
use Auth;
use Excel;

class MasterController extends Controller
{
    public function index()
        {
        $mas = DB::table('invent_mst as im')
        ->select('im.*','vf.name as invent_bu','lr.lookup_desc as invent_brand')
        ->join('vcompany_refs as vf','im.invent_bu','vf.company_code')
        ->join('lookup_refs as lr','im.invent_brand','lr.lookup_code')
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('merk')).'%'])
        ->orderBy('im.invent_code','ASC')
        ->get();
        return json_encode($mas);
    }
    public function save(Request $request)
    {
        $message = [
            'code.unique' => 'Kode Sudah Ada',
            'nama.required' => 'Nama Wajib Diisi',
            'merk.required' => 'Merk Wajib Diisi',
            'type.required' => 'Merk Wajib Diisi',
            'sn.required' => 'S/N Wajib Diisi',
            'tgl.required' => 'Tanggal Wajib Diisi',
            'kondisi.required'=>'Kondisi Wajib Diisi',
            'garansi.required' => 'Garansi Wajib Diisi',
            'garansi.numeric' => 'Garansi Wajib Diisi',
            'barcode.required' => 'Barcode Wajib Diisi',
            'lastloct.required' => 'Lokasi Terakhir Wajib Diisi',
            'lastuser.required' => 'Pengguna Terakhir Wajib Diisi',
            'prevloct.required' => 'Lokasi Sebelumnya Wajib Diisi',
            'prevuser.required' => 'User Sebelumnya Wajib Diisi',
            'bu.required' => 'Bisnis Unit Wajib Diisi'
        ];
        $request->validate([
            'code' => 'required|unique:invent_mst,invent_code',
            'nama' => 'required',
            'merk' => 'required',
            'type' => 'required',
            'sn' => 'required',
            'tgl'=>'required',
            'kondisi'=>'required',
            'garansi'=>'required|numeric',
            'barcode'=>'required',
            'lastloct'=>'required',
            'lastuser' => 'required',
            'prevloct'=> 'required',
            'prevuser'=> 'required',
            'bu'=> 'required'
        ],$message);

        $date = Carbon::now();
        $newCreation =Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');

        $newDate = Carbon::createFromFormat('D M d Y H:i:s e+',$request->tgl)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $image= $request->foto;
        $extension = explode('/', explode(':', substr($image, 0, strpos($image, ';')))[1])[1];
        $replace = substr($image, 0, strpos($image, ',')+1); 
        $fotoo = str_replace($replace, '', $image);
        $foto= str_replace(' ', '+', $fotoo); 
        $nama_file = time().".".$extension;
        Storage::disk('master_peripheral')->put($nama_file, base64_decode($foto));
        $mas = Master::Create([
            'invent_code' => $request->code,
            'invent_desc' => $request->nama,
            'invent_brand' => $request->merk,
            'invent_type' => $request->type,
            'invent_sn' => $request->sn,
            'invent_tgl_perolehan' => $newDate,
            'invent_lama_garansi' => $request->garansi,
            'invent_kondisi' => $request->kondisi,
            'creation_date' => $newCreation,
            'created_by' => Auth::user()->usr_name,
            'program_name' => "Master_Save",
            'invent_barcode' => $request->barcode,
            'invent_lokasi_update' => $request->lastloct,
            'invent_pengguna_update' => $request->lastuser,
            'invent_photo' => $nama_file,
            'invent_lokasi_previous' => $request->prevloct,
            'invent_pengguna_previous' => $request->prevuser,
            'invent_bu' => $request->bu,
        ]);
        $msg = [
            'success' => true,
            'message' => 'Created Successfully'
        ];
        return json_encode($msg);
    }
    public function edit($code)
    {
        $mas = DB::table('invent_mst as im')
        ->select('im.invent_code','im.invent_desc','im.invent_brand','im.invent_type','im.invent_sn','im.invent_kondisi',
                'im.invent_lama_garansi','im.invent_barcode','im.invent_lokasi_update','im.invent_pengguna_update','im.invent_photo',
                'im.invent_lokasi_previous', 'im.invent_pengguna_previous', 'im.invent_bu', 
                DB::raw("TO_CHAR(im.invent_tgl_perolehan,' dd Mon YYYY') as invent_tgl_perolehan"))
        ->where('im.invent_code',$code)
        ->first();
        return json_encode($mas);
    }
    public function update(Request $request, $code)
    {
        $newDate = Carbon::parse($request->invent_tgl_perolehan)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $mas = Master::find($code);
        //jika user update photo
        if($request->image) {

            unlink(Storage_path('app/public/master_peripheral/'.$mas->invent_photo));
            $image= $request->image;
            $extension = explode('/', explode(':', substr($image, 0, strpos($image, ';')))[1])[1];
            $replace = substr($image, 0, strpos($image, ',')+1); 
            $fotoo = str_replace($replace, '', $image);
            $foto= str_replace(' ', '+', $fotoo); 
            $nama_file = time().".".$extension;
            Storage::disk('master_peripheral')->put($nama_file, base64_decode($foto));

            $mas->invent_desc = $request->invent_desc;
            $mas->invent_brand = $request->invent_brand;
            $mas->invent_type = $request->invent_type;
            $mas->invent_sn =$request->invent_sn;
            $mas->invent_tgl_perolehan =$newDate;
            $mas->invent_lama_garansi = $request->invent_lama_garansi;
            $mas->invent_kondisi = $request->invent_kondisi;
            $mas->last_update_date = $newUpdate;
            $mas->last_updated_by = Auth::user()->usr_name;
            $mas->program_name = "Master_Update";
            $mas->invent_barcode = $request->invent_barcode;
            $mas->invent_lokasi_update =$request->invent_lokasi_update;
            $mas->invent_pengguna_update=  $request->invent_pengguna_update;
            $mas->invent_lokasi_previous = $request-> invent_lokasi_previous;
            $mas->invent_pengguna_previous = $request-> invent_pengguna_previous;
            $mas->invent_bu = $request->invent_bu;
            $mas->invent_photo = $nama_file;
            $mas->save();
        }
        //jika tidak
            $mas->invent_desc = $request->invent_desc;
            $mas->invent_brand = $request->invent_brand;
            $mas->invent_type = $request->invent_type;
            $mas->invent_sn =$request->invent_sn;
            $mas->invent_tgl_perolehan =$newDate;
            $mas->invent_lama_garansi = $request->invent_lama_garansi;
            $mas->invent_kondisi = $request->invent_kondisi;
            $mas->last_update_date = $newUpdate;
            $mas->last_updated_by = $request->name;
            $mas->program_name = "Master_Update";
            $mas->invent_barcode = $request->invent_barcode;
            $mas->invent_lokasi_update =$request->invent_lokasi_update;
            $mas->invent_pengguna_update=  $request->invent_pengguna_update;
            $mas->invent_lokasi_previous = $request-> invent_lokasi_previous;
            $mas->invent_pengguna_previous = $request-> invent_pengguna_previous;
            $mas->invent_bu = $request->invent_bu;
            $mas->save();
        //end
        $msg = [
            'success' => true,
            'message' => 'Updated Successfully'
        ];
 
        return json_encode($msg);
    }
    public function delete($invent_code)
    {
        $mas = Master::find($invent_code);
        unlink(Storage_path('app/public/master_peripheral/'.$mas->invent_photo));
        $mas->delete();
            return json_encode('Successfully deleted');
    }
    public function cetak_pdf()
    {
        $mass = DB::table('invent_mst as im')
        ->select('im.invent_code','im.invent_desc','im.invent_brand','im.invent_type','im.invent_sn',
                'im.invent_lama_garansi','im.invent_barcode','im.invent_lokasi_update','im.invent_pengguna_update','im.invent_photo',
                'im.invent_lokasi_previous', 'im.invent_pengguna_previous', 'im.invent_bu', 'vcompany_refs.name as invent_bu','lookup_refs.lookup_desc as invent_brand', 'lf.lookup_desc as invent_kondisi',
        DB::raw("TO_CHAR(im.invent_tgl_perolehan,' dd Mon YYYY') as invent_tgl_perolehan"))
        ->leftjoin('lookup_refs', function($join)
        {
            $join->on('im.invent_brand', '=', 'lookup_refs.lookup_code');
        })
        ->leftjoin('lookup_refs as lf', function($join)
        {
            $join->on('im.invent_kondisi', '=', 'lf.lookup_code');
        })
        ->leftjoin('vcompany_refs', function($join)
        {
            $join->on('im.invent_bu','=','vcompany_refs.company_code');
        })
        ->orderBy('im.invent_code','ASC')
        ->get();
        return view ('pdf/Laporan_Master',compact ('mass'));
    }
    public function cetak_excel()
    {
        return Excel::download(new MasterExport,'Laporan_Master.xlsx');
    }
    public function getKode()
    {
        $mas = Master::Select('invent_code as code',DB::raw("(invent_code ||'-'|| invent_desc) as name"))->get();
        return json_encode($mas);
    }
    public function getKodeIct($code)
    {
        $mas = DB::table('invent_mst as im')->select('im.invent_code as code', DB::raw("(im.invent_code ||'-'|| im.invent_desc) as name"))
        ->whereNotExists(function($query) use($code)
        {
            $query->select(DB::raw(1))
            ->from('ireq_dtl')
            ->join('ireq.dtl.invent_code','=','im.invent_code')
            ->whereRaw('ireq_dtl.ireq_id',$code);
        })->get();
        return json_encode($mas);
    }
    public function getImage($kode)
    {
        $mas = Master::select('invent_photo as photo')->where('invent_code',$kode)->first();
        return json_encode($mas);
    }
    public function getBarcode($invent_code)
    {
        $mas = DB::table('invent_mst as im')
            ->leftjoin('vcompany_refs as vr','im.invent_bu','vr.company_code')
            ->leftjoin('lookup_refs as lr','im.invent_brand','lr.lookup_code')
            ->select('im.invent_code','lr.lookup_desc as invent_brand','vr.name as invent_bu','im.invent_desc',
                     'im.invent_type','im.invent_sn','im.invent_lama_garansi','im.invent_pengguna_previous',
                     'im.invent_lokasi_previous',DB::raw("TO_CHAR(im.invent_tgl_perolehan,' dd Mon YYYY') as invent_tgl_perolehan"))
            ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('merk')).'%'])     
            ->where('im.invent_code',$invent_code)    
            ->first();
            return json_encode($mas);
    }
}
