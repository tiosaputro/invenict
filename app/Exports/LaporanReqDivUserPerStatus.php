<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class LaporanReqDivUserPerStatus implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    function __construct($statusUser) {
        $this->statusUser = $statusUser;
    }
    public function view(): View
    {
        return view('excel/Laporan_Req_Div_Req_Per_Status', [ 'status'=>DB::table('ireq_mst as imm')
        ->select('dr.div_name',DB::raw("count(imm.ireq_id) as jumlah"),
                  DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as name "))
        ->leftjoin('divisi_refs as dr','imm.ireq_divisi_requestor','dr.div_id')
        ->where('imm.ireq_status',$this->statusUser)
        ->orderBy('dr.div_name','ASC')
        ->groupBy('dr.div_name',DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end"))
        ->get()
        ]);
    }
}
