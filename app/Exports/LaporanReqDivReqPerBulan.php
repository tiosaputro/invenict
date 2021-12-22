<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class LaporanReqDivReqPerBulan implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    function __construct($tahunRequestor,$bulanRequestor) {
        $this->tahunRequestor = $tahunRequestor;
        $this->bulanRequestor = $bulanRequestor;
    }
    public function view(): View
    {
        return view('excel/Laporan_Req_Div_Req_Per_Bulan', [ 'status'=> DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_requestor','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"), DB::raw("TO_CHAR(im.ireq_date,'Month') as bulan"),
                DB::raw("TO_CHAR(im.ireq_date,'YYYY') as Tahun"))
        ->whereYear('im.ireq_date',$this->tahunRequestor)
        ->whereMonth('im.ireq_date',$this->bulanRequestor)
        ->groupBy('dr.div_name', DB::raw("TO_CHAR(im.ireq_date,'Month')"),DB::raw("TO_CHAR(im.ireq_date,'YYYY')"))
        ->get()
        ]);
    }
}
