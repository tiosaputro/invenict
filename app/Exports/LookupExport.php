<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class LookupExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('excel/Laporan_Lookups', [ 'lookup'=> DB::table('lookup_refs as ls')
        ->Select('ls.*', DB::raw("CASE WHEN ls.lookup_status = 'T' Then 'Aktif' WHEN ls.lookup_status = 'F' Then 'Tidak Aktif' end as lookup_status "))
        ->orderBy('lookup_type','desc')
        ->get()
    ]);
    }
}
