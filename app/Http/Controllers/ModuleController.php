<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use carbon\Carbon;
use Auth;
use DB;
use App\Mng_modules;

class ModuleController extends Controller
{
    public function index()
    {
        $module = DB::table('v_mng_modules')->get();
        return $module->toJson();
    }
    Public function getModule()
    {
        $module = Mng_modules::select('mod_id as code','mod_name as name')
        ->where('mod_stat','T')
        ->orderBy('mod_name', 'ASC')
        ->get();
        return response()->json($module);
    }
    Public function save(Request $request)
    {
        $message = [
            'mod_name.required'=>'Module Name Wajib Diisi',
            'mod_desc.required'=>'Module Description Wajib Diisi',
            'mod_stat.required'=>'Module Status Wajib Diisi',
        ];
        $request->validate([
            'mod_name' => 'required',
            'mod_desc'=>'required',
            'mod_stat'=>'required'
        ],$message);

        $date = Carbon::now();
        $newCreation = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $role = Mng_modules::create([
            'mod_name'=>$request->mod_name,
            'mod_desc'=>$request->mod_desc,
            'mod_stat'=>$request->mod_stat,
            'created_by'=> Auth::user()->usr_name,
            'creation_date'=>$newCreation,
            'program_name'=>'ModuleController_SAVE'
        ]);
    }
    public function edit($code)
    {
        $module = Mng_modules::select('mod_id','mod_name','mod_desc','mod_stat')->where('mod_id',$code)->first();
        return response()->json($module);
    }
    public function update(Request $request,$code)
    {
        $message = [
            'mod_name.required'=>'Module Name Wajib Diisi',
            'mod_desc.required'=>'Module Description Wajib Diisi',
            'mod_stat.required'=>'Module Status Wajib Diisi',
        ];
        $request->validate([
            'mod_name' => 'required',
            'mod_desc'=>'required',
            'mod_stat'=>'required'
        ],$message);

        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $mod = Mng_modules::find($code);
        $mod->mod_name = $request->mod_name;
        $mod->mod_desc = $request->mod_desc;
        $mod->mod_stat = $request->mod_stat;
        $mod->last_updated_by = Auth::user()->usr_name;
        $mod->last_update_date = $newUpdate;
        $mod->save();
        return response()->json('Successfully Updated');
    }
    Public function delete($mod_id)
    {
        $module = Mng_modules::find($mod_id);
        $module->delete();
        return response()->json('Successfully deleted');
    }
}
