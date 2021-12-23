<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class LaporanReqPerStatusPerPersonnel implements FromView
{
    function __construct($ictPersonnel) {
        $this->ictPersonnel = $ictPersonnel;
    }
    public function view(): View
    {
        return view('excel/Laporan_Req_Per_Status_Per_Personnel', [ 'status'=> DB::table('ireq_dtl as imm')
        ->select(DB::raw("count(imm.ireq_id) as jumlah"),'imm.ireq_assigned_to as name',DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as status "))
        ->where('imm.ireq_assigned_to',$this->ictPersonnel)
        ->groupBy('imm.ireq_assigned_to',DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end "))
        ->get()
        ]);
    }
}
