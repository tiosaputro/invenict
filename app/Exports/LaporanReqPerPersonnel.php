<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class LaporanReqPerPersonnel implements FromView
{
    
    public function view(): View
    {
        return view('excel/Laporan_Req_Per_Personnel', [ 'status'=> DB::table('ireq_dtl')
        ->select('ireq_assigned_to',DB::raw("count(ireqd_id) as jumlah"))
        ->whereNotNull('ireq_assigned_to')
        ->groupBy('ireq_assigned_to')
        ->get()
        ]);
    }
}
