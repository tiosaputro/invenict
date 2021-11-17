<?php

namespace App\Http\Controllers;

use App\Cash;
use App\Ict;
use App\Exports\CashExport;
use Excel;
use DB;
use Carbon\Carbon;
use Auth;
use Illuminate\Http\Request;

class CashController extends Controller
{
    Public function index()
    {
        $cash = DB::table('v_cash_advance')->get();
        return $cash->toJson();
    }
    Public function save(Request $request)
    {
        $message = [
            'noreq.required'=>'No Request Wajib Diisi',
            'noreq.unique'=>'Pada nomer request ini sudah pernah dibuatkan cash advancenya',
            'jum.numeric'=>'Jumlah Wajib Diisi',
            'tglsub.required'=>'Tgl Submit Wajib diisi',
            'tglrecvunit.required'=>'Tgl Terima Barang Wajib Diisi',
            'tglbuy.required'=>'Tgl Pembelian Wajib Diisi',
            'tglrecvcash.required'=>'Tgl. Terima cash Wajib Diisi',
            'tgltouser.required'=>'Tgl Penyerahan Ke User Wajib Diisi'
        ];
            $request->validate([
                'noreq' => 'required|unique:ca_mst,ireq_id',
                'jum'=>'numeric',
                'tglsub'=>'required',
                'tglrecvunit'=>'required',
                'tglbuy'=>'required',
                'tglrecvcash' => 'required',
                'tgltouser' => 'required'
            ],$message);

        $date = Carbon::now();
        $newCreation =Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $newTglSub = Carbon::createFromFormat('D M d Y H:i:s e+',$request->tglsub)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $newTglRecUnit = Carbon::createFromFormat('D M d Y H:i:s e+',$request->tglrecvunit)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $newTglbuy = Carbon::createFromFormat('D M d Y H:i:s e+',$request->tglbuy)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $newTglRecCash = Carbon::createFromFormat('D M d Y H:i:s e+',$request->tglrecvcash)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $newTglToUser = Carbon::createFromFormat('D M d Y H:i:s e+',$request->tgltouser)->copy()->tz('Asia/Jakarta')->format('Y-m-d');

        $cash = Cash::create([
            'ireq_id' =>$request->noreq,
            'ca_pic_name'=>$request->jum,
            'ca_submit_date'=>$newTglSub,
            'ca_recv_cash_date'=>$newTglRecCash,
            'ca_purchase_date'=>$newTglbuy,
            'ca_recv_item_date' => $newTglRecUnit,
            'ca_hand_over_date'=> $newTglToUser,
            'creation_date' => $newCreation,
            'created_by' => Auth::user()->usr_name,
            'program_name'=>"Cash_Save",
        ]);
        
        return response()->json([
            'success' => true,
            'message' => 'Created Successfully '
        ]);
    }
    Public function edit($code)
    {
        $cash = DB::table('ca_mst as cm')
        ->select('im.ireq_no as ca_idd','im.ireq_requestor as req', 'vr.name as bu','cm.ca_pic_name',
                DB::raw("TO_CHAR(im.ireq_date, 'dd Mon YYYY') as ireq_date"),
                DB::raw("TO_CHAR(cm.ca_submit_date, 'dd Mon YYYY') as ca_submit_date"),
                DB::raw("TO_CHAR(cm.ca_recv_cash_date, 'dd Mon YYYY') as ca_recv_cash_date"),
                DB::raw("TO_CHAR(cm.ca_purchase_date, 'dd Mon YYYY') as ca_purchase_date"),
                DB::raw("TO_CHAR(cm.ca_recv_item_date, 'dd Mon YYYY') as ca_recv_item_date"),
                DB::raw("TO_CHAR(cm.ca_hand_over_date, 'dd Mon YYYY') as ca_hand_over_date"))
        ->join('ireq_mst as im','cm.ireq_id','im.ireq_id')
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->where('cm.ca_id',$code)
        ->first();
            return response()->Json($cash);
    }
    Public function update(Request $request,$code)
    {
        $message = [
            'ca_submit_date.required'=>'Tgl Submit Wajib diisi',
            'ca_recv_item_date.required'=>'Tgl Terima Barang Wajib diisi',
            'ca_purchase_date.required'=>'Tgl Pembelian Wajib Diisi',
            'ca_recv_cash_date.required'=>'Tgl. Terima cash Wajib Diisi',
            'ca_hand_over_date.required'=>'Tgl Penyerahan Ke User Wajib Diisi',
            'ca_pic_name.required'=>'Jumlah Wajib Diisi'
        ];
            $request->validate([
                'ca_submit_date' => 'required',
                'ca_recv_item_date'=>'required',
                'ca_purchase_date'=>'required',
                'ca_recv_cash_date'=>'required',
                'ca_hand_over_date'=>'required',
                'ca_pic_name' => 'required'
            ],$message);
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $newTglSub = Carbon::parse($request->ca_submit_date)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $newTglRecUnit = Carbon::parse($request->ca_recv_item_date)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $newTglbuy = Carbon::parse($request->ca_purchase_date)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $newTglRecCash = Carbon::parse($request->ca_recv_cash_date)->copy()->tz('Asia/Jakarta')->format('Y-m-d');
        $newTglToUser = Carbon::parse($request->ca_hand_over_date)->copy()->tz('Asia/Jakarta')->format('Y-m-d');

        $cash = Cash::find($code);
        $cash->ca_pic_name = $request->ca_pic_name;
        $cash->ca_submit_date = $newTglSub;
        $cash->ca_recv_cash_date = $newTglRecCash;
        $cash->ca_purchase_date = $newTglbuy;
        $cash->ca_recv_item_date = $newTglRecUnit;
        $cash->ca_hand_over_date = $newTglToUser;
        $cash->last_update_date = $newUpdate;
        $cash->last_updated_by = Auth::user()->usr_name;
        $cash->program_name = "Cash_Update";
        $cash->save();
        $msg = [
            'success' => true,
            'message' => 'Updated Successfully'
        ];
        return response()->json($msg);
    }
    Public function delete($ca_id)
    {
        $cash = Cash::find($ca_id);
        $cash->delete();
            return response()->json('Successfully deleted');
    }
    public function cetak_pdf()
    {
        $cash = DB::table('ca_mst as cm')
        ->select('im.ireq_no as ca_idd','im.ireq_requestor as req', 'vr.name as bu','cm.ca_pic_name','im.ireq_requestor as ireq_id',
                DB::raw("TO_CHAR(im.ireq_date, 'dd Mon YYYY') as ireq_date"),
                DB::raw("TO_CHAR(cm.ca_submit_date, 'dd Mon YYYY') as ca_submit_date"),
                DB::raw("TO_CHAR(cm.ca_recv_cash_date, 'dd Mon YYYY') as ca_recv_cash_date"),
                DB::raw("TO_CHAR(cm.ca_purchase_date, 'dd Mon YYYY') as ca_purchase_date"),
                DB::raw("TO_CHAR(cm.ca_recv_item_date, 'dd Mon YYYY') as ca_recv_item_date"),
                DB::raw("TO_CHAR(cm.ca_hand_over_date, 'dd Mon YYYY') as ca_hand_over_date"))
        ->join('ireq_mst as im','cm.ireq_id','im.ireq_id')
        ->join('vcompany_refs as vr','im.ireq_bu','vr.company_code')
        ->get();
        return view('pdf/Laporan_Cash',compact('cash'));
    }
    public function cetak_excel()
    {
        return Excel::download(new CashExport,'Laporan_cash_advance.xlsx');
    }
}
