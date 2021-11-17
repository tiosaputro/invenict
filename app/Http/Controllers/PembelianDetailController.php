<?php

namespace App\Http\Controllers;


use Illuminate\Validation\Rule;
use App\PembelianDetail;
use App\Pembelian;
use App\Exports\PembelianDetailExport;
use DB;
use Excel;
use Carbon\Carbon;
use Auth;
use Illuminate\Http\Request;

class PembelianDetailController extends Controller
{
    Public function index($code)
    {
        $dtl = DB::table('purchase_dtl as pd')
        ->select('pd.*','lr.lookup_desc as dpurchase_sat','im.invent_desc','pm.valuta_code',
                DB::raw("CASE WHEN pd.dpurchase_stat = 'T' Then 'Aktif' WHEN pd.dpurchase_stat = 'F' Then 'Tidak Aktif' end as dpurchase_stat "))
        ->join('lookup_refs as lr','pd.dpurchase_sat','lr.lookup_code')
        ->join('purchase_mst as pm','pd.purchase_id','pm.purchase_id')
        ->join('invent_mst as im','pd.invent_code','im.invent_code')
        ->where('pd.purchase_id',$code)
        ->orderBy('pd.creation_date','ASC')
        ->get();
            return response()->Json($dtl);
    }
    Public function getSuppDate($code)
    {
        $dtl = DB::table('purchase_mst as pm')
            ->select('sm.suplier_name as suplier_code','pm.purchase_date')
            ->leftjoin('suplier_mst as sm','pm.suplier_code','sm.suplier_code')
            ->where('pm.purchase_id',$code)
            ->first();
        return response()->Json($dtl);
    }
    Public function save(Request $request,$code)
    {
        $message = [
            'invent_code.unique' => 'Item ini sudah dimasukan, silahkan edit jika ingin menambah qty',
        ];
        $request->validate([
            'invent_code' => [
                Rule::unique('purchase_dtl')->where(function ($query) use($request,$code)
            {
                return $query->where('purchase_id',$code)
                             ->where('invent_code',$request->invent_code);
            }),
            ],
        ],$message);
        $date = Carbon::now();
        $newCreation =Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $dtl = PembelianDetail::Create([
            'purchase_id'=>$code,
            'invent_code'=>$request->invent_code,
            'dpurchase_qty'=>$request->qty,
            'dpurchase_sat'=>$request->satuan,
            'dpurchase_prc_sat'=>$request->hrgsatuan,
            'dpurchase_prc'=>$request->pricetotal,
            // 'dpurchase_stat'=>'',
            'dpurchase_remark'=>$request->ket,
            'creation_date'=> $newCreation,
            'created_by '=> Auth::user()->usr_name,
            'program_name'=> "PembelianDetail_Save"
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Created Successfully'
        ]);
    }
    Public function edit($purchase)
    {
        $dtl= DB::table('purchase_dtl as pd')
        ->select('pd.invent_code','pd.dpurchase_qty','dpurchase_sat','dpurchase_stat','dpurchase_prc_sat',
                'dpurchase_prc','dpurchase_remark')
        ->join('invent_mst as im','pd.invent_code','im.invent_code')
        ->where('pd.dpurchase_id',$purchase)
        ->first();
        return response()->json($dtl);
    }
    Public function update(Request $request,$code,$purchase)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $dtl = PembelianDetail::find($purchase);

        $dtl->dpurchase_qty = $request->dpurchase_qty;
        $dtl->dpurchase_sat = $request->dpurchase_sat;
        $dtl->dpurchase_prc_sat = $request->dpurchase_prc_sat;
        $dtl->dpurchase_prc = $request->dpurchase_prc;
        // $dtl->dpurchase_stat = $request->dpurchase_stat;
        $dtl->dpurchase_remark = $request->dpurchase_remark;
        $dtl->last_updated_by = Auth::user()->usr_name;
        $dtl->last_update_date = $newUpdate;
        $dtl->program_name = "PembelianDetail_Update";
        $dtl->save();
           
        $msg = [
            'success' => true,
            'message' => 'Updated Successfully'
        ];
        return response()->json($msg);
    }
    Public function delete($code,$dpurchase_id)
    {
        $dtl = PembelianDetail::Where('dpurchase_id',$dpurchase_id)->first();
          $dtl->delete();
           return response()->json('Deleted Successfully');
    }
    public function getValuta($code)
    {
        $dtl = Pembelian::Select('valuta_code')->where('purchase_id',$code)->first();
        return response()->json($dtl);
    }
    public function cetak_pdf($purchase_id)
    {
        $pembelian = DB::table('purchase_mst as pm')
        ->Select('pm.*','pd.*','im.invent_desc','lr.lookup_desc as dpurchase_sat','sm.suplier_name',
                'llr.lookup_desc as purchase_pay_methode', DB::raw("CASE WHEN pm.purchase_status = 'T' Then 'Aktif' WHEN pm.purchase_status = 'F' Then 'Tidak Aktif' end as purchase_status "),
                DB::raw("CASE WHEN pd.dpurchase_stat = 'T' Then 'Aktif' WHEN pd.dpurchase_stat = 'F' Then 'Tidak Aktif' end as dpurchase_stat "), 
                DB::raw("TO_CHAR(pm.purchase_date,' dd Mon YYYY') as purchase_date"))
        ->join('purchase_dtl as pd','pm.purchase_id','pd.purchase_id')
        ->join('lookup_refs as llr','pm.purchase_pay_methode','llr.lookup_code')
        ->join('suplier_mst as sm','pm.suplier_code','sm.suplier_code')
        ->join('invent_mst as im','pd.invent_code','im.invent_code')
        ->join('lookup_refs as lr','pd.dpurchase_sat','lr.lookup_code')
        ->where('pm.purchase_id', $purchase_id)
        ->orderBy('pm.creation_date','ASC') 
        ->get();
        return view('pdf/Laporan_PembelianDetail',compact('pembelian'));
    }
    public function cetak_excel($purchase_id)
    {
        return Excel::download(new PembelianDetailExport($purchase_id),'Laporan_Pembelian.xlsx');
    }
}
