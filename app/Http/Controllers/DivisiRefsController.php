<?php

namespace App\Http\Controllers;
use App\Divisi_refs;
use DB;
Use carbon\Carbon;
use Auth;
use Illuminate\Http\Request;

class DivisiRefsController extends Controller
{
    public function index()
    {
        $divisi = Divisi_refs::select('div_id','div_code','div_name','div_verificator')->orderBy('div_name','ASC')->get();
        return json_encode($divisi);
    }
    public function getDivisi(){
        $divisi = DB::table('divisi_refs')->select('div_id as code',DB::raw("(div_code ||'-'|| div_name) as name"))->orderBy('div_name','ASC')->get();
        return json_encode($divisi);
    }
    public function edit($code)
    {
        $divisi = Divisi_refs::select('div_id','div_code','div_name','div_verificator')->where('div_id',$code)->first();
        return json_encode($divisi);
    }
    public function update(Request $request,$code)
    {
        $message = [
            'div_code.required'=>'Divisi Code Wajib Diisi',
            'div_name.required'=>'Divisi Name Wajib diisi',
            'div_verificator.required'=>'Divisi Verificator Wajib Diisi'
        ];
            $request->validate([
                'div_code' => 'required',
                'div_name'=>'required',
                'div_verificator'=>'required',
            ],$message);

        $date = Carbon::now();
        $newUpdate =Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $div = Divisi_refs::find($code);
        $div->div_name = $request->div_name;
        $div->div_code = $request->div_code;
        $div->div_verificator = $request->div_verificator;
        $div->last_updated_by = Auth::user()->usr_name;
        $div->last_update_date = $newUpdate;
        $div->program_name = "DivisiRefs_Update";
        $div->save();
        return json_encode('Updated Successfully');
    }
    public function delete($div_id)
    {
        $divisi = Divisi_refs::find($div_id);
        $divisi->delete();
        return json_encode('Deleted Successfully');
    }
}
