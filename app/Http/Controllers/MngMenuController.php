<?php

namespace App\Http\Controllers;
use App\Mng_menu;
use Auth;
use carbon\Carbon;
use DB;
use Illuminate\Http\Request;

class MngMenuController extends Controller
{
    Public function index()
    {
        $menu = DB::table('mng_menus as mm')
        ->select('mm.menu_id','mmm.mod_name','mm.menu_name','mm.menu_desc','mm.menu_desc','mm.menu_display')
        ->join('mng_modules as mmm','mm.mod_id','mmm.mod_id')
        ->where('mm.menu_stat','T')
        ->orderBy('mm.menu_id','ASC')
        ->get();
        return $menu->toJson();
    }
    public function getMenuUser(Request $request)
    {
        $menuu = $request->all();
            $menu = Mng_menu::select('menu_display as label','controller as to')->whereIn('menu_id',$menuu)->orderBy('label','ASC')->get();
            return response()->json($menu);
    }
    Public function getParent()
    {
        $module = Mng_menu::select('menu_id as code','menu_name as name')
        ->where('menu_type','N')
        ->get();
        return response()->json($module);
    }
    Public function getMenu()
    {
        $module = Mng_menu::select('menu_id as code','menu_name as name')
        ->where('menu_type','L')
        ->get();
        return response()->json($module);
    }
    Public function save(Request $request)
    {
        $message = [
            'mod_id.required'=>'Module Name Wajib Diisi',
            'menu_name.required'=>'Menu Name Wajib Diisi',
            'menu_desc.required'=>'Menu Description Wajib Diisi',
            'menu_display.required'=>'Menu Display Wajib Diisi',
            'menu_type.required'=>'Metu Type Wajib Diisi',
            'menu_stat.required'=>'Menu Status Wajib Diisi',
        ];
        $request->validate([
            'mod_id' => 'required',
            'menu_name'=>'required',
            'menu_desc' => 'required',
            'menu_display'=>'required',
            'menu_type' => 'required',
            'menu_stat'=>'required',
        ],$message);

        $date = Carbon::now();
        $newCreation = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $menu = Mng_menu::create([
            'mod_id'=>$request->mod_id,
            'menu_name'=>$request->menu_name,
            'menu_desc'=>$request->menu_desc,
            'menu_display'=>$request->menu_display,
            'menu_type'=>$request->menu_type,
            'menu_stat'=>$request->menu_stat,
            'controller'=>$request->controller,
            'action'=>$request->action,
            'parent_id'=>$request->parent_id,
            'creation_date'=>$newCreation,
            'created_by'=> Auth::user()->usr_name,
            'program_name'=> 'MngMenuController_Save'
        ]);
        $msg = [
            'success' => true,
            'message' => 'Created Successfully'
        ];
        return response()->json($msg);
    }
    Public function edit($code)
    {
        $module = Mng_menu::find($code);
        return response()->json($module);
    }
    Public function update(Request $request, $code)
    {
        $message = [
            'mod_id.required'=>'Module Name Wajib Diisi',
            'menu_name.required'=>'Menu Name Wajib Diisi',
            'menu_desc.required'=>'Menu Description Wajib Diisi',
            'menu_display.required'=>'Menu Display Wajib Diisi',
            'menu_type.required'=>'Metu Type Wajib Diisi',
            'menu_stat.required'=>'Menu Status Wajib Diisi',
            'controller.required'=>'Controller Wajib Diisi',
        ];
        $request->validate([
            'mod_id' => 'required',
            'menu_name'=>'required',
            'menu_desc' => 'required',
            'menu_display'=>'required',
            'menu_type' => 'required',
            'menu_stat'=>'required',
            'controller' => 'required'
        ],$message);

        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $menu = Mng_menu::find($code);
        $menu->mod_id = $request->mod_id;
        $menu->menu_name = $request->menu_name;
        $menu->menu_desc = $request->menu_desc;
        $menu->menu_display = $request->menu_display;
        $menu->menu_type = $request->menu_type;
        $menu->menu_stat = $request->menu_stat;
        $menu->controller = $request->controller;
        $menu->action = $request->action;
        $menu->parent_id = $request->parent_id;
        $menu->last_updated_by = Auth::user()->usr_name;
        $menu->last_update_date = $newUpdate;
        $menu->program_name = "MngMenuController@update";
        $menu->save();
        $msg = [
            'success' => true,
            'message' => 'Updated Successfully'
        ];
        return response()->json($msg);
    }
    Public function delete($menu_id)
    {
        $menu = Mng_menu::find($menu_id);
        $menu->delete();
        $msg = [
            'success' => true,
            'message' => 'Deleted Successfully'
        ];
        return response()->json($msg);

    }
}
