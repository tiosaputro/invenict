<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class SupplierExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('excel/Laporan_Supplier', [ 'Supplier'=> DB::Table('suplier_mst')
        ->get(['suplier_code','suplier_name','suplier_contact','suplier_address1','suplier_address2','suplier_city','suplier_prov','suplier_email','suplier_fax','suplier_tlp1','suplier_tlp2'])
        ->map(function($data) {
            if ($data->suplier_address2  == 'null') {
                $data->suplier_address2  = '';
            }
            if($data->suplier_tlp2== 'null') {
                $data->suplier_tlp2 = '';
            }
            return $data;
        })->all()
    ]);
    }
}
