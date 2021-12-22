<?php

namespace App\Http\Controllers;
use App\Exports\LaporanReqPerStatusExport;
use App\Exports\LaporanReqDivReqPerBulan;
use App\Exports\LaporanReqDivUserPerBulan;
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
        ->groupBy('dr.div_name', DB::raw("TO_CHAR(im.ireq_date,'Month')"),DB::raw("TO_CHAR(im.ireq_date,'YYYY')"))
        ->get();
        return view('pdf/Laporan_Req_Div_User_Per_Bulan',compact('status'));
    }
}
