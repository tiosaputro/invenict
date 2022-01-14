<?php

namespace App\Http\Controllers;

use App\Mutasi;
use App\Master;
use App\Exports\MutasiExport;
use Excel;
use DB;
use Auth;
use Illuminate\Http\Request;
use Carbon\Carbon;

class MutasiController extends Controller
{
    Public Function index()
    {
        $mutasi = DB::table('invent_mutasi as im')
        ->select('im.*','invent_mst.invent_code','invent_mst.invent_desc')
        ->join('invent_mst','im.invent_code','invent_mst.invent_code')
        ->orderBy('im.creation_date','ASC')
        ->get();

        return $mutasi->toJson();
    }
    Public function save(Request $request)
    {
        $date = Carbon::now();
        $newCreation = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $newFromDate = Carbon::createFromFormat('D M d Y H:i:s e+',$request->fromdate)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        if ($request->todate){   
        $newToDate = Carbon::createFromFormat('D M d Y H:i:s e+',$request->todate)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $mut = Mutasi::Create([
            'invent_code'=> $request->kode,
            'imutasi_tgl_dari' => $newFromDate,
            'imutasi_tgl_sd'=>$newToDate,
            'imutasi_lokasi' => $request->lokasi,
            'imutasi_pengguna' => $request->user,
            'imutasi_keterangan' => $request->ket,
            'creation_date'=> $newCreation,
            'created_by' => Auth::user()->usr_name,
            'program_name'=> "Mutasi_Save"
        ]);
    }else{
    $mut = Mutasi::Create([
        'invent_code'=> $request->kode,
        'imutasi_tgl_dari' => $newFromDate,
        'imutasi_lokasi' => $request->lokasi,
        'imutasi_pengguna' => $request->user,
        'imutasi_keterangan' => $request->ket,
        'creation_date'=> $newCreation,
        'created_by' => Auth::user()->usr_name,
        'program_name'=> "Mutasi_Save"
    ]);
}
        $msg = [
            'success' => true,
            'message' => 'Created Successfully'
        ];
        return json_encode($msg);
    }
    Public function edit($code)
    {
        $mut = DB::table('invent_mutasi as im')
            ->Select('im.imutasi_lokasi','im.imutasi_pengguna','im.imutasi_keterangan','imm.invent_photo',
                    DB::raw("TO_CHAR(im.imutasi_tgl_dari,' dd Mon YYYY') as imutasi_tgl_dari"),
                    DB::raw("TO_CHAR(im.imutasi_tgl_sd,' dd Mon YYYY') as imutasi_tgl_sd"),
                    DB::raw("(im.invent_code ||'-'|| imm.invent_desc) as invent_code"))
            ->join('invent_mst as imm','im.invent_code','imm.invent_code')
            ->Where('im.imutasi_id',$code)
            ->first();
            return json_encode($mut);
    }
    Public function update(Request $request, $code)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $newFromDate = Carbon::parse($request->imutasi_tgl_dari)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        
        if ($request->imutasi_tgl_sd){
            $newToDate = Carbon::parse($request->imutasi_tgl_sd)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
            $mut = Mutasi::where('imutasi_id',$code)->first();
            $mut->imutasi_tgl_dari = $newFromDate;
            $mut->imutasi_tgl_sd = $newToDate;
            $mut->imutasi_lokasi = $request->imutasi_lokasi;
            $mut->imutasi_pengguna = $request->imutasi_pengguna;
            $mut->imutasi_keterangan = $request->imutasi_keterangan;
            $mut->last_update_date = $newUpdate;
            $mut->last_updated_by = Auth::user()->usr_name;
            $mut->program_name = "Mutasi_Update";
            $mut->save();
        }else{
            $mut = Mutasi::where('imutasi_id',$code)->first();
            $mut->imutasi_tgl_dari = $newFromDate;
            $mut->imutasi_tgl_sd = $request->imutasi_tgl_sd;
            $mut->imutasi_lokasi = $request->imutasi_lokasi;
            $mut->imutasi_pengguna = $request->imutasi_pengguna;
            $mut->imutasi_keterangan = $request->imutasi_keterangan;
            $mut->last_update_date = $newUpdate;
            $mut->last_updated_by = Auth::user()->usr_name;
            $mut->program_name = "Mutasi_Update";
            $mut->save();
        }
        $msg = [
                'success' => true,
                'message' => 'Updated Successfully'
            ];
        return json_encode($msg);
    }
    Public function delete($imutasi_id)
    {
        $mut = Mutasi::find($imutasi_id);
        $mut->delete();
        return json_encode('Successfully deleted');
    }
    public function cetak_excel()
    {
        return Excel::download(new MutasiExport,'Laporan_Mutasi.xlsx');
    }
    public function cetak_pdf()
    {
        $mut = DB::table('invent_mutasi as im')
        ->select('im.*','invent_mst.invent_code','invent_mst.invent_desc',
            DB::raw("TO_CHAR(im.imutasi_tgl_dari,' dd Mon YYYY') as imutasi_tgl_dari"),
            DB::raw("TO_CHAR(im.imutasi_tgl_sd,' dd Mon YYYY') as imutasi_tgl_sd"))
        ->join('invent_mst','im.invent_code','invent_mst.invent_code')
        ->orderBy('im.creation_date','ASC')
        ->get();
        return view('pdf/Laporan_Mutasi', compact('mut'));
    }
}
