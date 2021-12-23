<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class LaporanReqDivUserPerTahun implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    function __construct($tahunUser) {
        $this->tahunUser = $tahunUser;
    }
    public function view(): View
    {
        return view('excel/Laporan_Req_Div_User_Per_Tahun', [ 'status'=> $grafik = DB::table('ireq_mst as im')
        ->leftjoin('divisi_refs as dr','im.ireq_divisi_user','dr.div_id')
        ->select('dr.div_name',DB::raw("count(im.ireq_id) as jumlah"),DB::raw("TO_CHAR(im.ireq_date,'YYYY') as tahun"))
        ->whereYear('im.ireq_date',$this->tahunUser)
        ->orderBy('dr.div_name','ASC')
        ->groupBy('dr.div_name',DB::raw("TO_CHAR(im.ireq_date,'YYYY')"))
        ->get()
        ]);
    }
}
