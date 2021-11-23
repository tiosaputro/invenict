<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function countBlmVerifikasi($usr_name)
    {
        $grafik = DB::table('ireq_mst')
        ->select(DB::raw('count(DISTINCT(ireq_id)) as count'))
        ->where('ireq_status','P')
        ->where('created_by',$usr_name)
        ->pluck('count');
        return response()->json($grafik);
    }
    public function countSudahVerifikasi($usr_name)
    {
        $grafik = DB::table('ireq_mst')
        ->select(DB::raw('count(DISTINCT(ireq_id)) as count'))
        ->where('ireq_status','A')
        ->where('created_by',$usr_name)
        ->pluck('count');
        return response()->json($grafik);
    }
    public function countSedangDikerjakan($usr_name)
    {
        $grafik = DB::table('ireq_mst')
        ->select(DB::raw('count(DISTINCT(ireq_id)) as count'))
        ->where('ireq_status','T')
        ->where('created_by',$usr_name)
        ->pluck('count');
        return response()->json($grafik);
    }
    public function countSudahDikerjakan($usr_name)
    {
        $grafik = DB::table('ireq_mst')
        ->select(DB::raw('count(DISTINCT(ireq_id)) as count'))
        ->where('ireq_status','D')
        ->where('created_by',$usr_name)
        ->pluck('count');
        return response()->json($grafik);
    }
    public function countSelesai($usr_name)
    {
        $grafik = DB::table('ireq_mst')
        ->select(DB::raw('count(DISTINCT(ireq_id)) as count'))
        ->where('ireq_status','C')
        ->where('created_by',$usr_name)
        ->pluck('count');
        return response()->json($grafik);
    }
    public function countReject($usr_name)
    {
        $grafik = DB::table('ireq_mst')
        ->select(DB::raw('count(DISTINCT(ireq_id)) as count'))
        ->where('ireq_status','R')
        ->where('created_by',$usr_name)
        ->pluck('count');
        return response()->json($grafik);
    }
    public function countRequest($usr_name)
    {
        $grafik = DB::table('ireq_mst')
        ->select(DB::raw('count(DISTINCT(ireq_id)) as count'))
        ->whereNotNull('ireq_status')
        ->where('created_by',$usr_name)
        ->pluck('count');
        return response()->json($grafik);
    }
    public function getStatus()
    {
        $grafik = DB::table('VREQ_MST_STATUS')->get();
        return response()->Json($grafik,200);
    }
    public function getTahun()
    {
        $grafik = DB::table('VREQ_MST_TAHUN')->get();
        return response()->Json($grafik);
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
    public function getBulan()
    {
        $grafik = DB::table('VREQ_MST_BULAN')->get();
        return response()->Json($grafik);
    }
    public function countStatusPerDivisi()
    {
        $grafik = DB::table('vreg_per_divuser_status')->get();
        return response()->Json($grafik);
    }
    public function countPerStatus()
    {
        $grafik = DB::table('VREQ_PER_STATUS')->get();
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
    public function getPersonnel()
    {
        $personnel = DB::table('ireq_mst')
        ->select('ireq_assigned_to as name')
        ->whereNotNull('ireq_assigned_to')
        ->groupBy('ireq_assigned_to')
        ->get();
        return response()->Json($personnel); 
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
