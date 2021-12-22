<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class LaporanReqPerStatusExport implements FromView
{
    
    public function view(): View
    {
        return view('excel/Laporan_Req_Per_Status', [ 'status'=> DB::table('VREQ_PER_STATUS')
            ->get()
        ]);
    }
}
