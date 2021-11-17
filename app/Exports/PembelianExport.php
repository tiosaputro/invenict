<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class PembelianExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): view
    {
        return view('excel/Laporan_Pembelian', [ 'pembelian'=> DB::table('purchase_mst as pm')
        ->Select('pm.*','lr.lookup_desc as valuta_code','sm.suplier_name',
                'llr.lookup_desc as purchase_pay_methode', DB::raw("TO_CHAR(pm.purchase_date,' dd Mon YYYY') as purchase_date"))
        ->join('lookup_refs as llr','pm.purchase_pay_methode','llr.lookup_code')
        ->join('suplier_mst as sm','pm.suplier_code','sm.suplier_code')
        ->join('lookup_refs as lr','pm.valuta_code','lr.lookup_code')
        ->orderBy('pm.creation_date','ASC')
        ->get()
    ]);
    }
}
