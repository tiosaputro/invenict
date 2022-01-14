<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mng_role_menu;
use App\Mng_usr_roles;
use App\Mng_roles;
use App\Mng_menu;
use Auth;
Use carbon\Carbon;
use DB;
class MngRoleMenuController extends Controller
{
    function save(Request $request)
    {
        $date = Carbon::now();
        $newCreation = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $role = Mng_roles::select('rol_id')->where('rol_name',$request->rol_name)->first();
        $menus = $request->menu;
        foreach($menus as $m){
            $menu = Mng_role_menu::create([
                'menu_id' => $m,
                'rol_id' => $role->rol_id,
                'rolm_stat' => 'T',
                'creation_date' => $newCreation,
                'created_by'=> Auth::user()->usr_name,
                'program_name'=>'MngRoleMenuController_SAVE'
            ]);
      }
      return json_encode('SUCCESS');
    }
    function edit($code)
    {
        $role = Mng_role_menu::select('menu_id as code')->where('rol_id',$code)->pluck('code');
        return json_encode($role);
    }
    function update(Request $request,$code)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $menus = $request->menu;
        $menu = Mng_role_menu::select('creation_date','created_by')->where('rol_id',$code)->first();
        $createday = $menu->creation_date;
        $createdby = $menu->created_by;
        $mm = Mng_role_menu::where('rol_id',$code)->delete();
         foreach ($menus as $m) {
            $menu = Mng_role_menu::create([
                'menu_id' => $m,
                'rol_id' => $code,
                'rolm_stat' => 'T',
                'creation_date' => $createday,
                'created_by'=> $createdby,
                'last_updated_by'=> Auth::user()->usr_name,
                'last_update_date'=> $newUpdate,
                'program_name'=>'MngRoleMenuController_UPDATE'
            ]);
        }
        return json_encode($menu);
    }
    function cekUser($id)
    {
        $role = Mng_usr_roles::select('rol_id')->where('usr_id',$id)->pluck('rol_id');
        $menu = Mng_role_menu::select('menu_id')->whereIn('rol_id',$role)->pluck('menu_id');
        $aksesmenu = DB::table('mng_menus')->select('menu_display as name','controller as to')->whereIn('menu_id',$menu)->get();
        return json_encode($aksesmenu);
    }
}
