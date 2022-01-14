<?php

namespace App\Http\Controllers;

use App\IctDetail;
use App\Ict;
use App\Exports\IctDetailExport;
use App\Exports\IctDetailExportReject;
use Illuminate\Support\Facades\DB;
use Excel;
use Carbon\Carbon;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class IctDetailController extends Controller
{
    Public function index($code)
    {
        $dtl = DB::table('ireq_dtl as id')
        ->select('id.invent_code','id.ireq_assigned_to','id.ireqd_id','lr.lookup_desc as ireq_type','im.invent_desc',
        DB::raw("CASE WHEN id.ireq_status = 'A' Then 'Approved' WHEN id.ireq_status = 'T' Then 'Penugasan' WHEN id.ireq_status = 'R' Then 'Reject' WHEN id.ireq_status = 'D' Then 'Done' WHEN id.ireq_status = 'C' Then 'Close' WHEN id.ireq_status = 'P' Then 'Permohonan' end as ireq_status "))
        ->join('invent_mst as im','id.invent_code','im.invent_code')
        ->join('lookup_refs as lr','id.ireq_type','lr.lookup_code')
        ->where('id.ireq_id',$code)
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->get();
            return json_encode($dtl);
    }
    Public function detailPenugasan($code)
    {
        $dtl = DB::table('ireq_dtl as id')
        ->select('id.invent_code','id.ireq_assigned_to','id.ireqd_id','lr.lookup_desc as ireq_type','im.invent_desc',
        DB::raw("CASE WHEN id.ireq_status = 'A' Then 'Approved' WHEN id.ireq_status = 'T' Then 'Penugasan' WHEN id.ireq_status = 'R' Then 'Reject' WHEN id.ireq_status = 'D' Then 'Done' WHEN id.ireq_status = 'C' Then 'Close' WHEN id.ireq_status = 'P' Then 'Permohonan' end as ireq_status "))
        ->join('invent_mst as im','id.invent_code','im.invent_code')
        ->join('lookup_refs as lr','id.ireq_type','lr.lookup_code')
        ->where('id.ireq_id',$code)
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->get();
            return json_encode($dtl);
    }
    Public function getDetailDone($code,$usr_fullname)
    {
        $dtl = DB::table('ireq_dtl as id')
        ->select('id.invent_code','id.ireq_assigned_to','id.ireqd_id','lr.lookup_desc as ireq_type','im.invent_desc',
        DB::raw("CASE WHEN id.ireq_status = 'A' Then 'Approved' WHEN id.ireq_status = 'T' Then 'Penugasan' WHEN id.ireq_status = 'R' Then 'Reject' WHEN id.ireq_status = 'D' Then 'Done' WHEN id.ireq_status = 'C' Then 'Close' WHEN id.ireq_status = 'P' Then 'Permohonan' end as ireq_status "))
        ->join('invent_mst as im','id.invent_code','im.invent_code')
        ->join('lookup_refs as lr','id.ireq_type','lr.lookup_code')
        ->where('id.ireq_id',$code)
        ->where('id.ireq_assigned_to',$usr_fullname)
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->get();
            return json_encode($dtl);
    }
    Public function getNo_req($code)
    {
        $dtl = DB::table('ireq_mst as im')
        ->select('im.ireq_no as noreq',
        DB::raw("CASE WHEN im.ireq_status = 'A' Then 'Approved' WHEN im.ireq_status = 'T' Then 'Penugasan' WHEN im.ireq_status = 'R' Then 'Reject' WHEN im.ireq_status = 'D' Then 'Done' WHEN im.ireq_status = 'C' Then 'Close' WHEN im.ireq_status = 'P' Then 'Permohonan' end as ireq_status "))
        ->where('im.ireq_id',$code)
        ->first();
            return json_encode($dtl);
    }
    Public function save(Request $request,$code)
    {
        $message = [
            'tipereq.required'=>'Tipe Request Wajib Diisi',
            'invent_code.required'=>'Nama Peripheral Wajib Diisi',
            'desk.required'=>'Deskripsi Wajib Diisi',
            'qty.required'=>'Qty Wajib diisi',
            'qty.numeric'=>'Qty Wajib diisi',
            'ket.required'=>'Keterangan Wajib Diisi'
        ];
            $request->validate([
                'tipereq' => 'required',
                'invent_code'=>'required',
                'desk'=>'required',
                'qty'=>'required|numeric',
                'ket' => 'required'
            ],$message);

        $date = Carbon::now();
        $newCreation =Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $dtl = IctDetail::create([
            'ireq_id' => $code,
            'ireq_type' => $request->tipereq,
            'invent_code'=>$request->invent_code,
            'ireq_desc'=> $request->desk,
            'ireq_qty'=> $request->qty,
            'ireq_reason'=>$request->alasan,
            'ireq_remark'=>$request->ket,
            'creation_date'=>$newCreation,
            'created_by' => Auth::user()->usr_name,
            'program_name'=>"IctDetail_Save"
        ]);
        return json_encode([
            'success' => true,
            'message' => 'Created Successfully '
        ]);
    }
    Public function edit($code,$ireq)
    {
        $ict = DB::table('ireq_dtl as id')
        ->select('id.ireqd_id','id.ireq_type','id.invent_code','id.ireq_desc','id.ireq_qty','id.ireq_remark','im.invent_photo as photo','imm.ireq_no')
        ->join('invent_mst as im','id.invent_code','im.invent_code')
        ->join('ireq_mst as imm','id.ireq_id','imm.ireq_id')
        ->where('id.ireqd_id',$ireq)
        ->first();
            return json_encode($ict);
    }
    Public function update(Request $request,$code,$ireq)
    {
        $message = [
            'ireq_type.required'=>'Tipe Request Wajib Diisi',
            'invent_code.required'=>'Nama Peripheral Wajib Diisi',
            'ireq_desc.required'=>'Deskripsi Wajib Diisi',
            'ireq_qty.required'=>'Qty Wajib diisi',
            'ireq_remark.required'=>'Keterangan Wajib Diisi'
        ];
            $request->validate([
                'ireq_type' => 'required',
                'invent_code'=>'required',
                'ireq_desc'=>'required',
                'ireq_qty'=>'required',
                'ireq_remark' => 'required'
            ],$message);
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $dtl = IctDetail::find($ireq);

        $dtl->ireq_type = $request->ireq_type;
        $dtl->invent_code = $request->invent_code;
        $dtl->ireq_desc = $request->ireq_desc;
        $dtl->ireq_qty = $request->ireq_qty;
        $dtl->ireq_remark = $request->ireq_remark;
        // $dtl->ireq_status = $request->ireq_status;
        $dtl->ireq_reason = $request->ireq_reason;
        $dtl->last_update_date = $newUpdate;
        $dtl->last_updated_by = Auth::user()->usr_name;
        $dtl->program_name = "IctDetail_Update";
        $dtl->save();
        $msg = [
            'success' => true,
            'message' => 'Updated Successfully'
        ];
        return json_encode($msg);
    }
    Public function delete($ireq_id)
    {
        $ict = IctDetail::find($ireq_id);
         $ict->delete();
          return json_encode('Deleted Successfully');
    }
    public function cetak_pdf($code)
    {
        $detail = DB::table('ireq_dtl as id')
        ->select('id.*','im.invent_desc','imm.ireq_requestor','imm.ireq_no','llr.lookup_desc as ireq_type',
                'vr.name as ireq_bu',
                DB::raw("TO_CHAR(imm.ireq_date,' dd Mon YYYY') as ireq_date"),
                DB::raw("CASE WHEN id.ireq_status = 'A' Then 'Approved' WHEN id.ireq_status = 'T' Then 'Penugasan' WHEN id.ireq_status = 'R' Then 'Reject' WHEN id.ireq_status = 'D' Then 'Done' WHEN id.ireq_status = 'C' Then 'Close' WHEN id.ireq_status = 'P' Then 'Permohonan' end as ireq_status "),
                DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as ireqq_status "))
        ->join('invent_mst as im','id.invent_code','im.invent_code')
        ->join('ireq_mst as imm','id.ireq_id','imm.ireq_id')
        ->join('lookup_refs as llr','imm.ireq_type','llr.lookup_code')
        ->join('vcompany_refs as vr','imm.ireq_bu','vr.company_code')
        ->where('id.ireq_id',$code)
        ->whereRaw('LOWER(llr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->get();
        return view('pdf/Laporan_IctDetailRequest', compact('detail'));
    }
    public function cetak_excel($code)
    {
        return Excel::download(new IctDetailExport($code),'Laporan_Ict.xlsx');
    }
    public function cetak_pdf_reject($code)
    {
        $detail = DB::table('ireq_dtl as id')
        ->select('id.*','im.invent_desc','imm.ireq_requestor','imm.ireq_no','llr.lookup_desc as ireq_type',
                'vr.name as ireq_bu',
                DB::raw("TO_CHAR(imm.ireq_date,' dd Mon YYYY') as ireq_date"),
                DB::raw("CASE WHEN id.ireq_status = 'A' Then 'Approved' WHEN id.ireq_status = 'T' Then 'Penugasan' WHEN id.ireq_status = 'R' Then 'Reject' WHEN id.ireq_status = 'D' Then 'Done' WHEN id.ireq_status = 'C' Then 'Close' WHEN id.ireq_status = 'P' Then 'Permohonan' end as ireq_status "),
                DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as ireqq_status "))
        ->join('invent_mst as im','id.invent_code','im.invent_code')
        ->join('ireq_mst as imm','id.ireq_id','imm.ireq_id')
        ->join('lookup_refs as llr','imm.ireq_type','llr.lookup_code')
        ->join('vcompany_refs as vr','imm.ireq_bu','vr.company_code')
        ->where('id.ireq_id',$code)
        ->whereRaw('LOWER(llr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->get();
        return view('pdf/Laporan_IctDetailReject', compact('detail'));
    }
    public function cetak_excel_reject($code)
    {
        return Excel::download(new IctDetailExportReject($code),'Laporan_Ict.xlsx');
    }
    public function getDetailVerif($code)
    {
        $dtl = DB::table('ireq_dtl as id')
        ->select('id.*','lr.lookup_desc as ireq_type','im.invent_desc')
        ->join('invent_mst as im','id.invent_code','im.invent_code')
        ->join('lookup_refs as lr','id.ireq_type','lr.lookup_code')
        ->where('id.ireq_id',$code)
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->get();
            return json_encode($dtl);
    }
    public function getDetail($ireqd_id){
        $dtl = DB::table('ireq_dtl as id')
        ->select('id.ireq_assigned_to','im.ireq_no','id.ireqd_id','id.ireq_status as status', DB::raw("(iim.invent_code ||'-'|| iim.invent_desc) as name"))
        ->join('ireq_mst as im','id.ireq_id','im.ireq_id')
        ->join('invent_mst as iim','id.invent_code','iim.invent_code')
        ->where('id.ireqd_id',$ireqd_id)
        ->first();
            return json_encode($dtl);
    }
    public function updateAssign(Request $request,$code)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $dtl = IctDetail::find($request->ireqd_id);
        $dtl->ireq_assigned_to = $request->ireq_assigned_to;
        $dtl->last_update_date = $newUpdate;
        $dtl->last_updated_by = Auth::user()->usr_name;
        $dtl->save();
        return json_encode('Updated Successfully');
    }
    public function updateStatusDone(Request $request,$code){
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $dtl = IctDetail::find($request->ireqd_id);
        $dtl->ireq_status = $request->status;
        $dtl->last_update_date = $newUpdate;
        $dtl->last_updated_by = Auth::user()->usr_name;
        $dtl->save();
        $result = DB::connection('oracle')->getPdo()->exec("begin SP_DONE_IREQ_MST($code); end;");
        return json_encode('Updated Successfully');
    }
    public function updateStatusClosingDetail($ireqd_id,$ireq_no){
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $dtl = IctDetail::find($ireqd_id);
        $dtl->ireq_status = 'C';
        $dtl->last_update_date = $newUpdate;
        $dtl->last_updated_by = Auth::user()->usr_name;
        $dtl->program_name = "IctDetail_updateStatusClosingDetail";
        $dtl->save();
        $result = DB::connection('oracle')->getPdo()->exec("begin SP_CLOSING_IREQ_MST($ireq_no); end;");
        return json_encode('Updated Successfully');
    }
}
