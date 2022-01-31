<?php

namespace App\Http\Controllers;

use App\Ict;
use App\IctDetail;
use App\Exports\IctExportPermohonan;
use App\Exports\IctExportVerifikasi;
use App\Exports\IctExportReject;
use App\Exports\IctExportSedangDikerjakan;
use App\Exports\IctExportSudahDikerjakan;
use App\Exports\IctExportSelesai;
use DB;
use Excel;
use Carbon\Carbon;
use Auth;
use Illuminate\Http\Request;

class IctController extends Controller
{
    function getIctAdmin()
    {
        $ict = DB::table('ireq_mst as im')
        ->leftjoin('ireq_dtl as idm','im.ireq_id','idm.ireq_id')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->select('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','dr.div_name')
        ->where(function($query){
            return $query
            ->Where('im.ireq_status','P');
            })
        ->groupBy('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.creation_date','dr.div_name')
        ->orderBy('im.creation_date','ASC')
        ->get();

        $ict1 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user')
        ->where('ireq_status','A')
        ->orderBy('creation_date','ASC')
        ->get();

        $ict2 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user','ireq_reason')
        ->where('ireq_status','R')
        ->orderBy('creation_date','ASC')
        ->get();

        $ict3 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user')
        ->where('ireq_status','T')
        ->orderBy('creation_date','ASC')
        ->get();

        $ict4 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user')
        ->where('ireq_status','D')
        ->orderBy('creation_date','ASC')
        ->get();

        $ict5 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user')
        ->where('ireq_status','C')
        ->orderBy('creation_date','ASC')
        ->get();
        
        $ict6 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_user','ireq_date',
            DB::raw("CASE WHEN ireq_status = 'P' Then 'Permohonan' WHEN ireq_status = 'R' Then 'Reject' WHEN ireq_status = 'A' Then 'Approve' WHEN ireq_status = 'T' Then 'Penugasan' WHEN ireq_status = 'D' Then 'Done' WHEN ireq_status = 'C' Then 'Close' end as ireq_status "))
        ->whereNotNull('ireq_status')
        ->get();

        return json_encode(['ict'=>$ict,'ict1'=>$ict1,'ict2'=>$ict2,'ict3'=>$ict3,'ict4'=>$ict4,'ict5'=>$ict5,'ict6'=>$ict6],200);

    }
    Public function getIct($usr_name)
    {
        $ict = DB::table('ireq_mst as im')
        ->leftjoin('ireq_dtl as idm','im.ireq_id','idm.ireq_id')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->select('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','dr.div_name',
                  DB::raw('count(DISTINCT(idm.ireq_id)) as count'))
        ->where('im.created_by',$usr_name)
        ->where(function($query){
            return $query
            ->whereNull('im.ireq_status')
            ->orWhere('im.ireq_status','P');
            })
        ->groupBy('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.creation_date','dr.div_name')
        ->orderBy('im.creation_date','ASC')
        ->get();

        $ict1 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user')
        ->where('created_by',$usr_name)
        ->where('ireq_status','A')
        ->orderBy('creation_date','ASC')
        ->get();

        $ict2 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user','ireq_reason')
        ->where('created_by',$usr_name)
        ->where('ireq_status','R')
        ->orderBy('creation_date','ASC')
        ->get();

        $ict3 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user')
        ->where('created_by',$usr_name)
        ->where('ireq_status','T')
        ->orderBy('creation_date','ASC')
        ->get();

        $ict4 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user')
        ->where('created_by',$usr_name)
        ->where('ireq_status','D')
        ->orderBy('creation_date','ASC')
        ->get();

        $ict5 = DB::table('ireq_mst')
        ->select('ireq_id','ireq_no','ireq_date','ireq_user')
        ->where('created_by',$usr_name)
        ->where('ireq_status','C')
        ->orderBy('creation_date','ASC')
        ->get();

        return json_encode(['ict'=>$ict,'ict1'=>$ict1,'ict2'=>$ict2,'ict3'=>$ict3,'ict4'=>$ict4,'ict5'=>$ict5],200);
    }
    Public function getPermohonan($usr_name)
    {
        $ict = DB::table('ireq_mst as im')
        ->select('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.ireq_requestor')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->where('dr.div_verificator',$usr_name)
        ->where('im.ireq_status','P')
        ->groupBy('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.creation_date','im.ireq_requestor')
        ->orderBy('im.creation_date','ASC')
        ->get();
        
        $ict1 = DB::table('ireq_mst as im')
        ->select('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.ireq_requestor')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->where('dr.div_verificator',$usr_name)
        ->where('im.ireq_status','A')
        ->groupBy('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.creation_date','im.ireq_requestor')
        ->orderBy('im.creation_date','ASC')
        ->get();

        $ict2 = DB::table('ireq_mst as im')
        ->select('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.ireq_requestor','im.ireq_reason')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->where('dr.div_verificator',$usr_name)
        ->where('im.ireq_status','R')
        ->groupBy('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.creation_date','im.ireq_requestor','im.ireq_reason')
        ->orderBy('im.creation_date','ASC')
        ->get();

        $ict3 = DB::table('ireq_mst as im')
        ->select('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.ireq_requestor')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->where('dr.div_verificator',$usr_name)
        ->where('im.ireq_status','T')
        ->groupBy('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.creation_date','im.ireq_requestor')
        ->orderBy('im.creation_date','ASC')
        ->get();
        
        $ict4 = DB::table('ireq_mst as im')
        ->select('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.ireq_requestor')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->where('dr.div_verificator',$usr_name)
        ->where('im.ireq_status','D')
        ->groupBy('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.creation_date','im.ireq_requestor')
        ->orderBy('im.creation_date','ASC')
        ->get();

        $ict5 = DB::table('ireq_mst as im')
        ->select('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.ireq_requestor')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->where('dr.div_verificator',$usr_name)
        ->where('im.ireq_status','C')
        ->groupBy('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_status','im.ireq_user','im.creation_date','im.ireq_requestor')
        ->orderBy('im.creation_date','ASC')
        ->get();

        return json_encode(['ict'=>$ict,'ict1'=>$ict1,'ict2'=>$ict2,'ict3'=>$ict3,'ict4'=>$ict4,'ict5'=>$ict5]);
    }
    Public function getPermohonanDivisi()
    {
        $ict = DB::Table('v_ireq_mst_permohonan_divisi')->get();
        $ict1 = DB::Table('v_ireq_mst_sedang_dikerjakan')->get();
        $ict2 = DB::Table('v_ireq_mst_sudah_dikerjakan')->get();
        $ict3 = DB::Table('v_ireq_mst_selesai')->get();
        return json_encode(['ict'=>$ict,'ict1'=>$ict1,'ict2'=>$ict2,'ict3'=>$ict3]);
    }
    Public function getSedangDikerjakan($usr_fullname)
    {
        $ict = DB::table('ireq_mst as im')
        ->select('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_requestor','im.ireq_user','im.ireq_status','im.ireq_assigned_to')
        ->leftjoin('ireq_dtl as idm','im.ireq_id','idm.ireq_id')
        ->where('im.ireq_status','T')
        ->where('idm.ireq_assigned_to',$usr_fullname)
        ->groupBy('im.ireq_id','im.ireq_no','im.ireq_date','im.ireq_requestor','im.ireq_user','im.ireq_status','im.ireq_assigned_to')
        ->get();

        $ict1 = DB::Table('v_ireq_mst_sudah_dikerjakan')->get();
        $ict2 = DB::Table('v_ireq_mst_selesai')->get();
        return json_encode(['ict'=>$ict,'ict1'=>$ict1,'ict2'=>$ict2]);
    }
    public function ictDivisi4()
    {
        $ict = DB::Table('v_ireq_mst_sudah_dikerjakan')->get();
        $ict2 = DB::Table('v_ireq_mst_selesai')->get();
        return json_encode(['ict'=>$ict,'ict2'=>$ict2]);
    }
    function totalRequest($usr_name)
    {
        $ict = DB::table('ireq_mst')
            ->select('ireq_id','ireq_no','ireq_user','ireq_date',
                DB::raw("CASE WHEN ireq_status = 'P' Then 'Permohonan' WHEN ireq_status = 'R' Then 'Reject' WHEN ireq_status = 'A' Then 'Approve' WHEN ireq_status = 'T' Then 'Penugasan' WHEN ireq_status = 'D' Then 'Done' WHEN ireq_status = 'C' Then 'Close' end as ireq_status "))
            ->where('created_by',$usr_name)
            ->whereNotNull('ireq_status')
            ->get();
        return json_encode($ict);
    }
    Public function save(Request $request)
    {
        $message = [
            'tgl.required'=>'Tgl. Request Wajib Diisi',
        ];
            $request->validate([
                'tgl' => 'required',
            ],$message);
        $date = Carbon::now();
        $newCreation = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $newDate = Carbon::createFromFormat('D M d Y H:i:s e+',$request->tgl)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $ict = Ict::Create([
            'ireq_date' => $newDate,
            'ireq_type' => $request->tipereq,
            'ireq_requestor'=> Auth::user()->usr_name,
            'ireq_divisi_requestor'=> Auth::user()->div_id,
            'ireq_user' => $request->user_name,
            'ireq_divisi_user'=>$request->user_divisi,
            'ireq_bu' => $request->bisnis,
            'creation_date' => $newCreation,
            'created_by' => Auth::user()->usr_name,
            'program_name'=>"Ict_Save",
        ]);
        return json_encode([
            'success' => true,
            'message' => 'Successfully Created'
        ],200);
    }
    Public function edit($code)
    {
        $ict = Ict::find($code);
            return json_encode($ict);
    }
    Public function update(Request $request, $code)
    {
        $message = [
            'ireq_date.required'=>'Tgl. Request Wajib Diisi',
            'ireq_type.required'=>'Tipe Request Wajib diisi',
            'ireq_bu.required'=>'Bisnis Unit Wajib Diisi',
            'ireq_user.required'=>'User Wajib diisi',
            'ireq_divisi_user.required'=>'Divisi User Wajib Diisi'
        ];
        $request->validate([
                'ireq_date' => 'required',
                'ireq_type'=>'required',
                'ireq_bu'=>'required',
                'ireq_user' =>'required',
                'ireq_divisi_user'=>'required'
        ],$message);

        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $newDate = Carbon::parse($request->ireq_date)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $ict = Ict::where('ireq_id',$code)->first();
        $ict->ireq_date = $newDate;
        $ict->ireq_type = $request->ireq_type;
        $ict->ireq_user = $request->ireq_user;
        $ict->ireq_divisi_user = $request->ireq_divisi_user;
        $ict->ireq_bu = $request->ireq_bu;
        $ict->last_update_date = $newUpdate;
        $ict->last_updated_by = Auth::user()->usr_name;
        $ict->program_name = "Ict_Update";
        $ict->save();
        $msg = [
            'success' => true,
            'message' => 'Updated Successfully'
        ];
        return json_encode($msg);
    }
    Public function delete($ireq_id)
    {
        $ict = Ict::find($ireq_id);
        $dtl= DB::table('ireq_dtl')->where('ireq_id',$ireq_id)->delete();
          $ict->delete();
          return json_encode('Successfully deleted');
    }
    Public function getNoreq()
    {
        $ict = Ict::select('ireq_no as name','ireq_id as code')
                ->orderBy('ireq_no','ASC')
                ->get();
                return json_encode($ict);
    }
    Public function getNameBu($noreq)
    {
        $ict = DB::table('ireq_mst as im')
        ->select('im.ireq_requestor as req','im.ireq_no','im.ireq_id','vr.name as bu',
                DB::raw("TO_CHAR(im.ireq_date, 'dd Mon YYYY') as ireq_date"))
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->where('im.ireq_id',$noreq)
        ->first();
            return json_encode($ict);
    }
    Public function cetak_pdf_permohonan()
    {
        $ict =  DB::table('ireq_mst as im')
        ->select('im.ireq_no','im.ireq_requestor','vr.name as ireq_bu','lr.lookup_desc as ireq_type',
                DB::raw("TO_CHAR(im.ireq_date,' dd Mon YYYY') as ireq_date"))
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->join('lookup_refs as lr','im.ireq_type','lr.lookup_code')
        ->where('im.ireq_status','P')
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->orderBy('im.creation_date','ASC')
        ->get();
        return view('pdf/Laporan_IctRequest_Permohonan', compact('ict'));
    }
    public function cetak_excel_permohonan()
    {
        return Excel::download(new IctExportPermohonan,'Laporan_Ict_Permohonan.xlsx');
    }
    Public function cetak_pdf_verifikasi()
    {
        $ict =  DB::table('ireq_mst as im')
        ->select('im.ireq_no','im.ireq_requestor','vr.name as ireq_bu','lr.lookup_desc as ireq_type',
                DB::raw("TO_CHAR(im.ireq_date,' dd Mon YYYY') as ireq_date"))
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->join('lookup_refs as lr','im.ireq_type','lr.lookup_code')
        ->where('im.ireq_status','A')
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->orderBy('im.creation_date','ASC')
        ->get();
        return view('pdf/Laporan_IctRequest_Verifikasi', compact('ict'));
    }
    public function cetak_excel_verifikasi()
    {
        return Excel::download(new IctExportVerifikasi,'Laporan_Ict_Verifikasi.xlsx');
    }
    Public function cetak_pdf_reject()
    {
        $ict =  DB::table('ireq_mst as im')
        ->select('im.ireq_no','im.ireq_requestor','im.ireq_reason','vr.name as ireq_bu','lr.lookup_desc as ireq_type',
                DB::raw("TO_CHAR(im.ireq_date,' dd Mon YYYY') as ireq_date"))
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->join('lookup_refs as lr','im.ireq_type','lr.lookup_code')
        ->where('im.ireq_status','R')
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->orderBy('im.creation_date','ASC')
        ->get();
        return view('pdf/Laporan_IctRequest_Reject', compact('ict'));
    }
    public function cetak_excel_reject()
    {
        return Excel::download(new IctExportReject,'Laporan_Ict_Reject.xlsx');
    }
    Public function cetak_pdf_sedang_dikerjakan()
    {
        $ict =  DB::table('ireq_mst as im')
        ->select('im.ireq_no','im.ireq_requestor','vr.name as ireq_bu','lr.lookup_desc as ireq_type',
                DB::raw("TO_CHAR(im.ireq_date,' dd Mon YYYY') as ireq_date"))
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->join('lookup_refs as lr','im.ireq_type','lr.lookup_code')
        ->where('im.ireq_status','T')
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->orderBy('im.creation_date','ASC')
        ->get();
        return view('pdf/Laporan_IctRequest_Sedang_Dikerjakan', compact('ict'));
    }
    public function cetak_excel_sudah_dikerjakan()
    {
        return Excel::download(new IctExportSudahDikerjakan,'Laporan_Ict_Sudah_Dikerjakan.xlsx');
    }
    Public function cetak_pdf_sudah_dikerjakan()
    {
        $ict =  DB::table('ireq_mst as im')
        ->select('im.ireq_no','im.ireq_requestor','vr.name as ireq_bu','lr.lookup_desc as ireq_type',
                DB::raw("TO_CHAR(im.ireq_date,' dd Mon YYYY') as ireq_date"))
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->join('lookup_refs as lr','im.ireq_type','lr.lookup_code')
        ->where('im.ireq_status','D')
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->orderBy('im.creation_date','ASC')
        ->get();
        return view('pdf/Laporan_IctRequest_Sudah_Dikerjakan', compact('ict'));
    }
    Public function cetak_pdf_selesai()
    {
        $ict =  DB::table('ireq_mst as im')
        ->select('im.ireq_no','im.ireq_requestor','vr.name as ireq_bu','lr.lookup_desc as ireq_type',
                DB::raw("TO_CHAR(im.ireq_date,' dd Mon YYYY') as ireq_date"))
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->join('lookup_refs as lr','im.ireq_type','lr.lookup_code')
        ->where('im.ireq_status','C')
        ->whereRaw('LOWER(lr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->orderBy('im.creation_date','ASC')
        ->get();
        return view('pdf/Laporan_IctRequest_Selesai', compact('ict'));
    }
    public function cetak_excel_selesai()
    {
        return Excel::download(new IctExportSelesai,'Laporan_Ict_Sudah_Selesai.xlsx');
    }
    public function cetak_excel_sedang_dikerjakan()
    {
        return Excel::download(new IctExportSedangDikerjakan,'Laporan_Ict_Sedang_Dikerjakan.xlsx');
    }
    public function updateAssign(Request $request)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $ict = Ict::where('ireq_id',$request->id)->first();
        $ict->ireq_assigned_to = $request->name;
        $ict->last_updated_by = Auth::user()->usr_name;
        $ict->last_update_date = $newUpdate;
        $ict->program_name = "IctController_updateAssign";
        $ict->save();

        $dtl = IctDetail::where('ireq_id',$request->id)->get();
        foreach ($dtl as $d){
            $d->ireq_assigned_to = $request->name;
            $d->last_update_date = $newUpdate;
            $d->last_updated_by = Auth::user()->usr_name;
            $d->program_name = "IctController_updateAssign";
            $d->save();
        }
        return json_encode('Success Update');
    }
    public function updateStatusPermohonan($code)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $ict = Ict::where('ireq_id',$code)->first();
        $ict->ireq_status = 'A';
        $ict->ireq_approver1 = Auth::user()->usr_name;
        $ict->last_updated_by = Auth::user()->usr_name;
        $ict->last_update_date = $newUpdate;
        $ict->program_name = "IctController_updateStatusPermohonan";
        $ict->save();

        $dtl = IctDetail::where('ireq_id',$code)->get();
        foreach ($dtl as $d){
            $d->ireq_status = 'A';
            $d->last_update_date = $newUpdate;
            $d->last_updated_by = Auth::user()->usr_name;
            $d->program_name = "IctController_updateStatusPermohonan";
            $d->save();
        }
        return json_encode('Success Update');
    }
    public function updateStatusReject(Request $request, $code)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $ict = Ict::where('ireq_id',$code)->first();
        $ict->ireq_status = 'R';
        $ict->ireq_reason = $request->ket;
        $ict->last_update_date = $newUpdate;
        $ict->last_updated_by = Auth::user()->usr_name;
        $ict->program_name = "IctController_updateStatusReject";
        $ict->save();

        $dtl = IctDetail::where('ireq_id',$code)->get();
        foreach ($dtl as $d){
            $d->ireq_status = 'R';
            $d->ireq_reason = $request->ket;
            $d->last_update_date = $newUpdate;
            $d->last_updated_by = Auth::user()->usr_name;
            $d->program_name = "IctController_updateStatusReject";
            $d->save();
        }
        return json_encode('Success Update');
    }
    public function updateStatusSubmit($ireq_id)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $ict = Ict::where('ireq_id',$ireq_id)->first();
        $ict->ireq_status = 'P';
        $ict->last_update_date = $newUpdate;
        $ict->last_updated_by = Auth::user()->usr_name;
        $ict->program_name = "IctController_updateStatusSubmit";
        $ict->save();

        $dtl = IctDetail::where('ireq_id',$ireq_id)->get();
        foreach ($dtl as $d){
            $d->ireq_status = 'P';
            $d->last_update_date = $newUpdate;
            $d->last_updated_by = Auth::user()->usr_name;
            $d->program_name = "IctController_updateStatusSubmit";
            $d->save();
        }
        return json_encode('Success Update');
    }
    public function updateStatusPenugasan($ireq_id)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $ict = Ict::where('ireq_id',$ireq_id)->first();
        $ict->ireq_status = 'T';
        $ict->ireq_verificator = Auth::user()->usr_name;
        $ict->last_update_date = $newUpdate;
        $ict->last_updated_by = Auth::user()->usr_name;
        $ict->program_name = "IctController_updateStatusPenugasan";
        $ict->save();
        
        $dtl = IctDetail::where('ireq_id',$ireq_id)->get();
        foreach ($dtl as $d){
            $d->ireq_status = 'T';
            $d->last_update_date = $newUpdate;
            $d->last_updated_by = Auth::user()->usr_name;
            $d->program_name = "IctController_updateStatusPenugasan";
            $d->save();
        }
        return json_encode('Success Update');
    }
    
    public function updateStatusClosing($ireq_id)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $ict = Ict::where('ireq_id',$ireq_id)->first();
        $ict->ireq_approver2 = Auth::user()->usr_name;
        $ict->ireq_status = 'C';
        $ict->last_update_date = $newUpdate;
        $ict->last_updated_by = Auth::user()->usr_name;
        $ict->program_name = "IctController_updateStatusClosing";
        $ict->save();

        $dtl = IctDetail::where('ireq_id',$ireq_id)->get();
        foreach ($dtl as $d){
            $d->ireq_status = 'C';
            $d->last_update_date = $newUpdate;
            $d->last_updated_by = Auth::user()->usr_name;
            $d->program_name = "IctController_updateStatusClosing";
            $d->save();
        }
        return json_encode('Success Update');
    }
}
