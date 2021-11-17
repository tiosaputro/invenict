<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class MasterExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('excel/Laporan_Master',['Master'=> DB::table('invent_mst as im')
        ->select('im.invent_code','im.invent_desc','im.invent_brand','im.invent_type','im.invent_sn',
                'im.invent_lama_garansi','im.invent_barcode','im.invent_lokasi_update','im.invent_pengguna_update','im.invent_photo',
                'im.invent_lokasi_previous', 'im.invent_pengguna_previous', 'im.invent_bu', 'vcompany_refs.name as invent_bu','lookup_refs.lookup_desc as invent_brand', 'lf.lookup_desc as invent_kondisi',
        DB::raw("TO_CHAR(im.invent_tgl_perolehan,' dd Mon YYYY') as invent_tgl_perolehan"))
        ->leftjoin('lookup_refs', function($join)
        {
            $join->on('im.invent_brand', '=', 'lookup_refs.lookup_code');
        })
        ->leftjoin('lookup_refs as lf', function($join)
        {
            $join->on('im.invent_kondisi', '=', 'lf.lookup_code');
        })
        ->leftjoin('vcompany_refs', function($join)
        {
            $join->on('im.invent_bu','=','vcompany_refs.company_code');
        })
        ->orderBy('im.invent_code','ASC')
        ->get()
        ]);    
    }
}
