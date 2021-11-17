<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class PembelianDetailExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    function __construct($purchase_id) {
        $this->purchase_id = $purchase_id;
    }
    public function view(): view
    {
        return view('excel/Laporan_Pembelian_Detail', [ 'pembelian'=> DB::table('purchase_mst as pm')
        ->Select('pm.*','pd.*','im.invent_desc','lr.lookup_desc as dpurchase_sat','sm.suplier_name',
                'llr.lookup_desc as purchase_pay_methode', DB::raw("TO_CHAR(pm.purchase_date,' dd Mon YYYY') as purchase_date"),
                DB::raw("CASE WHEN pm.purchase_status = 'T' Then 'Aktif' WHEN pm.purchase_status = 'F' Then 'Tidak Aktif' end as purchase_status "))
        ->join('purchase_dtl as pd','pm.purchase_id','pd.purchase_id')
        ->join('lookup_refs as llr','pm.purchase_pay_methode','llr.lookup_code')
        ->join('suplier_mst as sm','pm.suplier_code','sm.suplier_code')
        ->join('invent_mst as im','pd.invent_code','im.invent_code')
        ->join('lookup_refs as lr','pd.dpurchase_sat','lr.lookup_code')
        ->where('pm.purchase_id', $this->purchase_id)
        ->orderBy('pm.creation_date','ASC')
        ->get()
    ]);
    }
}
