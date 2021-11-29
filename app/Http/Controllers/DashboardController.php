<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function countUser($usr_name)
    {
        $grafik = DB::table('ireq_mst as im')
        ->select(DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst WHERE ireq_mst.ireq_status = 'P' AND ireq_mst.created_by = '$usr_name') as belumdiverifikasi"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst WHERE ireq_mst.ireq_status = 'A' AND ireq_mst.created_by = '$usr_name') as sudahdiverifikasi"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst WHERE ireq_mst.ireq_status = 'R' AND ireq_mst.created_by = '$usr_name') as direject"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst WHERE ireq_mst.ireq_status = 'T' AND ireq_mst.created_by = '$usr_name') as sedangdikerjakan"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst WHERE ireq_mst.ireq_status = 'D' AND ireq_mst.created_by = '$usr_name') as sudahdikerjakan"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst WHERE ireq_mst.ireq_status = 'C' AND ireq_mst.created_by = '$usr_name') as sudahselesai"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst WHERE ireq_mst.ireq_status IS NOT NULL AND ireq_mst.created_by = '$usr_name') as countrequest"))
        ->first();
        return response()->json($grafik);
    }
    public function countDivisi1($usr_name)
    {
        $grafik = DB::table('ireq_mst as im')
        ->select(DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst LEFT JOIN divisi_refs ON ireq_mst.ireq_divisi_user = divisi_refs.div_id WHERE ireq_mst.ireq_status = 'P' AND divisi_refs.div_verificator = '$usr_name') as belumdiverifikasi"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst LEFT JOIN divisi_refs ON ireq_mst.ireq_divisi_user = divisi_refs.div_id WHERE ireq_mst.ireq_status = 'A' AND divisi_refs.div_verificator = '$usr_name') as sudahdiverifikasi"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst LEFT JOIN divisi_refs ON ireq_mst.ireq_divisi_user = divisi_refs.div_id WHERE ireq_mst.ireq_status = 'R' AND divisi_refs.div_verificator = '$usr_name') as direject"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst LEFT JOIN divisi_refs ON ireq_mst.ireq_divisi_user = divisi_refs.div_id WHERE ireq_mst.ireq_status = 'T' AND divisi_refs.div_verificator = '$usr_name') as sedangdikerjakan"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst LEFT JOIN divisi_refs ON ireq_mst.ireq_divisi_user = divisi_refs.div_id WHERE ireq_mst.ireq_status = 'D' AND divisi_refs.div_verificator = '$usr_name') as sudahdikerjakan"),
                 DB::raw("(SELECT COUNT(ireq_id) FROM ireq_mst LEFT JOIN divisi_refs ON ireq_mst.ireq_divisi_user = divisi_refs.div_id WHERE ireq_mst.ireq_status = 'C' AND divisi_refs.div_verificator = '$usr_name') as sudahselesai"))
        ->first();
        return response()->json($grafik);
    }
    public function countDivisi2()
    {
        $blmdiassign = DB::table('ireq_mst')
            ->select(DB::raw('count(ireq_id) as blmdiassign'))
            ->where('ireq_status','A')
            ->pluck('blmdiassign')
            ->first();
        $sdgdikerjakan = DB::table('ireq_mst')
            ->select(DB::raw('count(ireq_id) as sdgdikerjakan'))
            ->where('ireq_status','T')
            ->pluck('sdgdikerjakan')
            ->first();
        $sdhdikerjakan = DB::table('ireq_dtl')
            ->select(DB::raw('count(ireqd_id) as sdhdikerjakan'))
            ->where('ireq_status','D')
            ->pluck('sdhdikerjakan')
            ->first();
        $sdhselesai = DB::table('ireq_dtl')
            ->select(DB::raw('count(ireqd_id) as sdhselesai'))
            ->where('ireq_status','C')
            ->pluck('sdhselesai')
            ->first();
        return response()->json(['blmdiassign'=>$blmdiassign,'sdgdikerjakan'=>$sdgdikerjakan,'sdhdikerjakan'=>$sdhdikerjakan,'sdhselesai'=>$sdhselesai]);
    }
    public function countDivisi3($fullname)
    {
        $grafik = DB::table('ireq_dtl as im')
        ->select(DB::raw("(SELECT COUNT(ireqd_id) FROM ireq_dtl WHERE ireq_dtl.ireq_status = 'T' AND ireq_dtl.ireq_assigned_to = '$fullname') as belumselesai"),
                 DB::raw("(SELECT COUNT(ireqd_id) FROM ireq_dtl WHERE ireq_dtl.ireq_status = 'D' AND ireq_dtl.ireq_assigned_to = '$fullname') as sudahdikerjakan"),
                 DB::raw("(SELECT COUNT(ireqd_id) FROM ireq_dtl WHERE ireq_dtl.ireq_status = 'C' AND ireq_dtl.ireq_assigned_to = '$fullname') as sudahselesai"))
        ->first();
        return response()->json($grafik);
    }
    public function getTahun()
    {
        $grafik = DB::table('VREQ_MST_TAHUN')->get();
        $grafik1 = DB::table('VREQ_MST_STATUS')->get();
        $grafik2 = DB::table('VREQ_MST_BULAN')->get();
        $grafik3 = DB::table('VREQ_PER_STATUS')->get();
        $personnel = DB::table('ireq_mst')
        ->select('ireq_assigned_to as name')
        ->whereNotNull('ireq_assigned_to')
        ->groupBy('ireq_assigned_to')
        ->get();

        return response()->Json(['grafik'=>$grafik,'grafik1'=>$grafik1,'grafik2'=>$grafik2,'grafik3'=>$grafik3,'personnel'=>$personnel],200);
    }
    public function getTahunUser($bulanUser)
    {
        $grafik = DB::table('ireq_mst as im')
        ->select(DB::raw("TO_CHAR(im.ireq_date,'yyyy') as tahun"))
        ->whereMonth('im.ireq_date',$bulanUser)
        ->groupBy(DB::raw("TO_CHAR(im.ireq_date,'yyyy')"))
        ->orderBy(DB::raw("TO_CHAR(im.ireq_date,'yyyy')"),'DESC')
        ->get();
        return response()->Json($grafik);
    }
    public function getTahunRequestor($bulanUser)
    {
        $grafik = DB::table('ireq_mst as im')
        ->select(DB::raw("TO_CHAR(im.ireq_date,'yyyy') as tahun"))
        ->whereMonth('im.ireq_date',$bulanUser)
        ->groupBy(DB::raw("TO_CHAR(im.ireq_date,'yyyy')"))
        ->orderBy(DB::raw("TO_CHAR(im.ireq_date,'yyyy')"),'DESC')
        ->get();
        return response()->Json($grafik);
    }
    public function countStatusPerDivisi()
    {
        $grafik = DB::table('vreg_per_divuser_status')->get();
        return response()->Json($grafik);
    }
    public function countPerDivUserTahun($tahunUser)
    {
        $grafik = DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"))
        ->whereYear('im.ireq_date',$tahunUser)
        ->groupBy('dr.div_name')
        ->get();
        return response()->Json($grafik);
    }
    
    public function countPerDivRequestorTahun($tahunRequestor)
    {
        $grafik = DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_requestor','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"))
        ->whereYear('im.ireq_date',$tahunRequestor)
        ->groupBy('dr.div_name')
        ->get();
        return response()->Json($grafik);
    }
    public function countPerDivUserBulan($tahunnUser,$bulanUser)
    {
        $grafik = DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"),DB::raw("TO_CHAR(im.ireq_date,'Month') as bulan"))
        ->whereYear('im.ireq_date',$tahunnUser)
        ->whereMonth('im.ireq_date',$bulanUser)
        ->groupBy('dr.div_name', DB::raw("TO_CHAR(im.ireq_date,'Month')"))
        ->get();
        return response()->Json($grafik);
    }
    
    public function countPerDivRequestorBulan($tahunRequestor,$bulanRequestor)
    {
        $grafik = DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_requestor','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"),DB::raw("TO_CHAR(im.ireq_date,'Month') as bulan"))
        ->whereYear('im.ireq_date',$tahunRequestor)
        ->whereMonth('im.ireq_date',$bulanRequestor)
        ->groupBy('dr.div_name', DB::raw("TO_CHAR(im.ireq_date,'Month')"))
        ->get();
        return response()->Json($grafik);
    }
    public function countPerDivUserStatus($statusUser)
    {
        $grafik = DB::table('ireq_mst as imm')
        ->select('dr.div_name',DB::raw("count(imm.ireq_id) as jumlah"),
                  DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as name "))
        ->leftjoin('divisi_refs as dr','imm.ireq_divisi_user','dr.div_id')
        ->where('imm.ireq_status',$statusUser)
        ->groupBy('dr.div_name',DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end"))
        ->get();
        return response()->Json($grafik);
    }
    public function countPerDivRequestorStatus($statusRequestor)
    {
        $grafik = DB::table('ireq_mst as imm')
        ->select('dr.div_name',DB::raw("count(imm.ireq_id) as jumlah"),
                  DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as name "))
        ->leftjoin('divisi_refs as dr','imm.ireq_divisi_requestor','dr.div_id')
        ->where('imm.ireq_status',$statusRequestor)
        ->groupBy('dr.div_name',DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end"))
        ->get();
        return response()->Json($grafik);
    }
    public function countPerPersonnel()
    {
        $grafik= DB::table('VREQ_PER_ICTPERSON')->get();
        return response()->Json($grafik); 
    }
    public function countPerStatusIct($ictPersonnel)
    {
        $grafik = DB::table('ireq_mst as imm')
        ->select(DB::raw("count(imm.ireq_id) as jumlah"),DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as status "))
        ->where('imm.ireq_assigned_to',$ictPersonnel)
        ->groupBy(DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end "))
        ->get();
        return response()->Json($grafik);
    }
}
