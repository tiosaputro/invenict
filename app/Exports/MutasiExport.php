<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class MutasiExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): view
    {
        return view('excel/Laporan_Mutasi',['Mutasi'=> DB::table('invent_mutasi as im')
        ->Select('im.invent_code','im.imutasi_lokasi','im.imutasi_pengguna','im.imutasi_keterangan','imm.invent_desc',
                    DB::raw("TO_CHAR(im.imutasi_tgl_dari,' dd Mon YYYY') as imutasi_tgl_dari"),
                    DB::raw("TO_CHAR(im.imutasi_tgl_sd,' dd Mon YYYY') as imutasi_tgl_sd"))
            ->join('invent_mst as imm','im.invent_code','imm.invent_code')
            ->orderBy('im.creation_date','ASC')
            ->get()
    ]);
    }
}
