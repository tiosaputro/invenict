<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Lookup_Refs;
use DB;
use Auth;
use Carbon\Carbon;
use Session;
use Excel;
use App\Exports\LookupExport;
use Illuminate\Validation\Rule;
use Validator;

class LookupsController extends Controller
{
    public function index()
    {
        $ref = DB::Table('v_lookup_refs')->get();
        return $ref->toJson();
    }
    public function save(Request $request) 
    {
        $message = [
            'lookup_code.unique' => 'Kode Sudah Ada',
            'lookup_code.required'=>'Kode Wajib Diisi',
            'lookup_type.unique' => 'Tipe Sudah Ada',
            'lookup_type.required' => 'Tipe Wajib Diisi',
            'lookup_desc.required' => 'Deskripsi Wajib Diisi',
            'lookup_status.required' => 'Status Wajib Diisi'
        ];
        $request->validate([
            'lookup_code' => [
                'required',
                Rule::unique('lookup_refs')->where(function ($query) use($request)
            {
                return $query->where('lookup_code',$request->lookup_code)
                             ->where('lookup_type',$request->lookup_type);
            }),
            ],
            'lookup_type' => [
                'required',
                Rule::unique('lookup_refs')->where(function ($query) use($request) 
            {
                return $query->where('lookup_code',$request->lookup_code)
                             ->where('lookup_type',$request->lookup_type);
            }),
            ],
            'lookup_desc'=>'required',
            'lookup_status'=>'required',
        ],$message);
        $date = Carbon::now();
        $newCreation =Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $lookup = Lookup_Refs::Create([
            'lookup_code' => $request->lookup_code,
            'lookup_type' => $request->lookup_type,
            'lookup_desc' => $request->lookup_desc,
            'lookup_status' => $request->lookup_status,
            'creation_date' => $newCreation,
            'created_by' => Auth::user()->usr_name,
            'program_name' => "Lookups_Save",
        ]);
        return response()->json([
            'success' => true,
            'message' => $lookup
        ]);
    }
    public function edit($code,$type)
    {
        $ref = Lookup_Refs::Where('lookup_code', $code)->where('lookup_type',$type)->first();
        return response()->Json($ref);
    }
    public function update(Request $request,$code,$type)
    {
        $message = [
            'lookup_desc.required' => 'Deskripsi Wajib Diisi',
            'lookup_status.required' => 'Status Wajib Diisi'
        ];
        $request->validate([
            'lookup_desc'=>'required',
            'lookup_status'=>'required',
        ],$message);
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');

        $ref = Lookup_Refs::where('lookup_code',$code)->where('lookup_type',$type)->first();
        $ref->lookup_desc = $request->lookup_desc;
        $ref->lookup_status = $request->lookup_status;
        $ref->last_update_date = $newUpdate;
        $ref->last_updated_by = Auth::user()->usr_name;
        $ref->program_name = "Lookups_Update";
        $ref->save();
        return response()->json([
            'success' => true,
            'message' => 'Updated Successfully',
        ]);
    }
    public function delete($lookup_code,$lookup_type)
    {
        $ref = Lookup_Refs::where('lookup_code',$lookup_code)->where('lookup_type',$lookup_type)->delete();
        return response()->json('Successfully deleted');
    }
    public function cetak_pdf()
    {
        $ref = DB::table('lookup_refs as ls')
        ->Select('ls.*', DB::raw("CASE WHEN ls.lookup_status = 'T' Then 'Aktif' WHEN ls.lookup_status = 'F' Then 'Tidak Aktif' end as lookup_status "))
        ->orderBy('lookup_type','ASC')
        ->get();
        return view('pdf/Laporan_Lookups', compact('ref'));
    }
    public function cetak_excel()
    {
        return Excel::download(new LookupExport,'Laporan_Lookups.xlsx');
    }
    public function getMerk()
    {
        $ref = Lookup_Refs::Select('lookup_code as code','lookup_desc as name')
        ->where('lookup_status','T')
        ->whereRaw('LOWER(lookup_type) LIKE ? ',[trim(strtolower('merk')).'%'])
        ->orderBy('lookup_desc','ASC')
        ->get();
        return response()->Json($ref);
    }
    public function getKondisi()
    {
        $ref = Lookup_Refs::Select('lookup_code as code','lookup_desc as name')
        ->where('lookup_status','T')
        ->whereRaw('LOWER(lookup_type) LIKE ? ',[trim(strtolower('kondisi')).'%'])
        ->orderBy('lookup_desc','ASC')
        ->get();
        return response()->Json($ref);
    }
    public function getStatus()
    {
        $ref = Lookup_Refs::Select('lookup_code as code','lookup_desc as name')
        ->where('lookup_status','T')
        ->whereRaw('LOWER(lookup_type) LIKE ? ',[trim(strtolower('req_status')).'%'])
        ->orderBy('lookup_desc','ASC')
        ->get();
        return response()->Json($ref);
    }
    public function getStatusIct()
    {
        $ref = Lookup_Refs::Select('lookup_code as code','lookup_desc as name')
        ->where('lookup_status','T')
        ->whereRaw('LOWER(lookup_type) LIKE ? ',[trim(strtolower('ict_status')).'%'])
        ->orderBy('lookup_desc','ASC')
        ->get();
        return response()->Json($ref);
    }
    Public function getType()
    {
        $ref = Lookup_Refs::Select('lookup_code as code','lookup_desc as name')
        ->where('lookup_status','T')
        ->whereRaw('LOWER(lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->orderBy('lookup_desc','ASC')
        ->get();
        return response()->Json($ref);
    }
    Public function getMataUang()
    {
        $ref = Lookup_Refs::Select('lookup_code as code',DB::raw("(lookup_code ||'-'|| lookup_desc) as name"))
        ->where('lookup_status','T')
        ->whereRaw('LOWER(lookup_type) LIKE ? ',[trim(strtolower('mata uang')).'%'])
        ->orderBy('lookup_desc','ASC')
        ->get();
        return response()->Json($ref);
    }
    Public function getMethodePurch()
    {
        $ref = Lookup_Refs::Select('lookup_code as code','lookup_desc as name')
        ->where('lookup_status','T')
        ->whereRaw('LOWER(lookup_type) LIKE ? ',[trim(strtolower('pay methode')).'%'])
        ->orderBy('lookup_desc','ASC')
        ->get();
        return response()->Json($ref);
    }
    Public function getSatuan()
    {
        $ref = Lookup_Refs::Select('lookup_code as code','lookup_desc as name')
        ->where('lookup_status','T')
        ->whereRaw('LOWER(lookup_type) LIKE ? ',[trim(strtolower('satuan')).'%'])
        ->orderBy('lookup_desc','ASC')
        ->get();
        return response()->Json($ref);
    }

}
