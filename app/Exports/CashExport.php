<?php

namespace App\Exports;

use DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class CashExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('excel/Laporan_Cash', [ 'cash'=> DB::table('ca_mst as cm')
        ->select('im.ireq_no as ca_idd','im.ireq_requestor as req', 'vr.name as bu','cm.ca_pic_name','im.ireq_requestor as ireq_id',
                DB::raw("TO_CHAR(im.ireq_date, 'dd Mon YYYY') as ireq_date"),
                DB::raw("TO_CHAR(cm.ca_submit_date, 'dd Mon YYYY') as ca_submit_date"),
                DB::raw("TO_CHAR(cm.ca_recv_cash_date, 'dd Mon YYYY') as ca_recv_cash_date"),
                DB::raw("TO_CHAR(cm.ca_purchase_date, 'dd Mon YYYY') as ca_purchase_date"),
                DB::raw("TO_CHAR(cm.ca_recv_item_date, 'dd Mon YYYY') as ca_recv_item_date"),
                DB::raw("TO_CHAR(cm.ca_settlement_date, 'dd Mon YYYY') as ca_settlement_date"),
                DB::raw("TO_CHAR(cm.ca_hand_over_date, 'dd Mon YYYY') as ca_hand_over_date"))
        ->join('ireq_mst as im','cm.ireq_id','im.ireq_id')
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->get()]);
    }
}
