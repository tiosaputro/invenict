<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class IctDetailExportReject implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    function __construct($code) {
        $this->code = $code;
    }
    public function view(): View
    {
        return view('excel/Laporan_Ict_Detail_Reject', [ 'detail' => DB::table('ireq_dtl as id')
        ->select('id.*','im.invent_desc','imm.ireq_no','llr.lookup_desc as ireq_type','imm.ireq_requestor',
                'vr.name as ireq_bu',
                DB::raw("TO_CHAR(imm.ireq_date,' dd Mon YYYY') as ireq_date"),
                DB::raw("CASE WHEN id.ireq_status = 'A' Then 'Approved' WHEN id.ireq_status = 'T' Then 'Penugasan' WHEN id.ireq_status = 'R' Then 'Reject' WHEN id.ireq_status = 'D' Then 'Done' WHEN id.ireq_status = 'C' Then 'Close' WHEN id.ireq_status = 'P' Then 'Permohonan' end as ireq_status "),
                DB::raw("CASE WHEN imm.ireq_status = 'A' Then 'Approved' WHEN imm.ireq_status = 'T' Then 'Penugasan' WHEN imm.ireq_status = 'R' Then 'Reject' WHEN imm.ireq_status = 'D' Then 'Done' WHEN imm.ireq_status = 'C' Then 'Close' WHEN imm.ireq_status = 'P' Then 'Permohonan' end as ireqq_status "))
        ->join('invent_mst as im','id.invent_code','im.invent_code')
        ->join('ireq_mst as imm','id.ireq_id','imm.ireq_id')
        ->join('lookup_refs as llr','imm.ireq_type','llr.lookup_code')
        ->join('vcompany_refs as vr','imm.ireq_bu','vr.company_code')
        ->where('id.ireq_id',$this->code)
        ->whereRaw('LOWER(llr.lookup_type) LIKE ? ',[trim(strtolower('req_type')).'%'])
        ->get()
        ]);
    }
}
