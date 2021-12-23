<?php

namespace App\Http\Controllers;
use App\Exports\LaporanReqPerStatusExport;
use App\Exports\LaporanReqDivReqPerBulan;
use App\Exports\LaporanReqDivUserPerBulan;
use App\Exports\LaporanReqDivReqPerTahun;
use App\Exports\LaporanReqDivUserPerTahun;
use App\Exports\LaporanReqDivReqPerStatus;
use App\Exports\LaporanReqDivUserPerStatus;
use App\Exports\LaporanReqPerPersonnel;
use App\Exports\LaporanReqPerStatusPerPersonnel;
use Illuminate\Http\Request;
use Excel;
use DB;

class LaporanController extends Controller
{
    public function cetak_excel_per_status()
    {
        return Excel::download(new LaporanReqPerStatusExport,'Laporan Permintaan Per Status.xlsx');
    }
    public function cetak_pdf_per_status()
    {
        $status = DB::table('VREQ_PER_STATUS')->get();
        return view('pdf/Laporan_Req_Per_Status',compact('status'));
    }
    public function cetak_excel_div_req_per_bulan($tahunnRequestor,$bulanRequestor)
    {
        $date = DB::table('ireq_mst as im')
        ->select(DB::raw("TO_CHAR(im.ireq_date,'Month') as bulan"))
        ->whereMonth('im.ireq_date',$bulanRequestor)
        ->first();
        return Excel::download(new LaporanReqDivReqPerBulan($tahunnRequestor,$bulanRequestor),'Laporan Permintaan Divisi Requestor Pada Bulan '. $date->bulan . $tahunnRequestor .'.xlsx');
    }
    public function cetak_pdf_div_req_per_bulan($tahunnRequestor,$bulanRequestor)
    {
        $status = DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_requestor','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"), DB::raw("TO_CHAR(im.ireq_date,'Month') as bulan"),
                DB::raw("TO_CHAR(im.ireq_date,'YYYY') as Tahun"))
        ->whereYear('im.ireq_date',$tahunnRequestor)
        ->whereMonth('im.ireq_date',$bulanRequestor)
        ->orderBy('dr.div_name','ASC')
        ->groupBy('dr.div_name', DB::raw("TO_CHAR(im.ireq_date,'Month')"),DB::raw("TO_CHAR(im.ireq_date,'YYYY')"))
        ->get();
        return view('pdf/Laporan_Req_Div_Req_Per_Bulan',compact('status'));
    }
    public function cetak_excel_div_user_per_bulan($tahunnUser,$bulanUser)
    {
        $date = DB::table('ireq_mst as im')
        ->select(DB::raw("TO_CHAR(im.ireq_date,'Month') as bulan"))
        ->whereMonth('im.ireq_date',$bulanUser)
        ->first();
        return Excel::download(new LaporanReqDivUserPerBulan($tahunnUser,$bulanUser),'Laporan Permintaan Divisi User Pada Bulan '. $date->bulan . $tahunnUser .'.xlsx');
    }
    public function cetak_pdf_div_user_per_bulan($tahunnUser,$bulanUser)
    {
        $status = DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"), DB::raw("TO_CHAR(im.ireq_date,'Month') as bulan"),
                DB::raw("TO_CHAR(im.ireq_date,'YYYY') as Tahun"))
        ->whereYear('im.ireq_date',$tahunnUser)
        ->whereMonth('im.ireq_date',$bulanUser)
        ->orderBy('dr.div_name','ASC')
        ->groupBy('dr.div_name', DB::raw("TO_CHAR(im.ireq_date,'Month')"),DB::raw("TO_CHAR(im.ireq_date,'YYYY')"))
        ->get();
        return view('pdf/Laporan_Req_Div_User_Per_Bulan',compact('status'));
    }
    public function cetak_excel_div_req_per_tahun($tahunRequestor)
    {
        return Excel::download(new LaporanReqDivReqPerTahun($tahunRequestor),'Laporan Permintaan Divisi Requestor Pada Tahun '. $tahunRequestor .'.xlsx');
    }
    public function cetak_pdf_div_req_per_tahun($tahunRequestor)
    {
        $status = DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_requestor','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"),DB::raw("TO_CHAR(im.ireq_date,'YYYY') as tahun"))
        ->whereYear('im.ireq_date',$tahunRequestor)
        ->orderBy('dr.div_name','ASC')
        ->groupBy('dr.div_name',DB::raw("TO_CHAR(im.ireq_date,'YYYY')"))
        ->get();
        return view('pdf/Laporan_Req_Div_Req_Per_Tahun',compact('status'));
    }
    public function cetak_excel_div_user_per_tahun($tahunUser)
    {
        return Excel::download(new LaporanReqDivUserPerTahun($tahunUser),'Laporan Permintaan Divisi User Pada Tahun '. $tahunUser .'.xlsx');
    }
    public function cetak_pdf_div_user_per_tahun($tahunUser)
    {
        $status = DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"),DB::raw("TO_CHAR(im.ireq_date,'YYYY') as tahun"))
        ->whereYear('im.ireq_date',$tahunUser)
        ->orderBy('dr.div_name','ASC')
        ->groupBy('dr.div_name',DB::raw("TO_CHAR(im.ireq_date,'YYYY')"))
        ->get();
        return view('pdf/Laporan_Req_Div_User_Per_Tahun',compact('status'));
    }
    Public function cetak_excel_div_req_per_status($statusRequestor)
    {
        return Excel::download(new LaporanReqDivReqPerStatus($statusRequestor),'Laporan Permintaan Divisi Requestor Per Status.xlsx');
    }
    
    Public function cetak_pdf_div_req_per_status($statusRequestor)
    {
        $status = DB::table('ireq_mst as imm')
            ->select('dr.div_name',DB::raw("count(imm.ireq_id) as jumlah"),
                    DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as name "))
            ->leftjoin('divisi_refs as dr','imm.ireq_divisi_requestor','dr.div_id')
            ->where('imm.ireq_status',$statusRequestor)
            ->orderBy('dr.div_name','ASC')
            ->groupBy('dr.div_name',DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end"))
            ->get();
        return view('pdf/Laporan_Req_Div_Req_Per_Status',compact('status'));
    }
    
    Public function cetak_excel_div_user_per_status($statusUser)
    {
        return Excel::download(new LaporanReqDivUserPerStatus($statusUser),'Laporan Permintaan Divisi User Per Status.xlsx');
    }
    
    Public function cetak_pdf_div_user_per_status($statusUser)
    {
        $status = DB::table('ireq_mst as imm')
            ->select('dr.div_name',DB::raw("count(imm.ireq_id) as jumlah"),
                    DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as name "))
            ->leftjoin('divisi_refs as dr','imm.ireq_divisi_user','dr.div_id')
            ->where('imm.ireq_status',$statusUser)
            ->orderBy('dr.div_name','ASC')
            ->groupBy('dr.div_name',DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end"))
            ->get();
        return view('pdf/Laporan_Req_Div_User_Per_Status',compact('status'));
    }
    public function cetak_excel_per_personnel()
    {
        return Excel::download(new LaporanReqPerPersonnel,'Laporan Request Per ICT-Personnel.xlsx');
    }
    
    public function cetak_pdf_per_personnel()
    {
        $status = DB::table('ireq_dtl')
        ->select('ireq_assigned_to',DB::raw("count(ireqd_id) as jumlah"))
        ->whereNotNull('ireq_assigned_to')
        ->groupBy('ireq_assigned_to')
        ->get();
        return view('pdf/Laporan_Req_Per_Personnel',compact('status'));
    }
    public function cetak_excel_per_status_per_personnel($ictPersonnel)
    {
        return Excel::download(new LaporanReqPerStatusPerPersonnel($ictPersonnel),'Laporan Request Per Status Per ICT-Personnel.xlsx');
    }
    public function cetak_pdf_per_status_per_personnel($ictPersonnel)
    {
        $status = DB::table('ireq_dtl as imm')
        ->select(DB::raw("count(imm.ireq_id) as jumlah"),'imm.ireq_assigned_to as name',DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as status "))
        ->where('imm.ireq_assigned_to',$ictPersonnel)
        ->groupBy('imm.ireq_assigned_to',DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end "))
        ->get();
        return view('pdf/Laporan_Req_Per_Status_Per_ICT_Personnel',compact('status'));
    }
}
