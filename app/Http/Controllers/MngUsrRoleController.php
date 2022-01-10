<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mng_usr_roles;
use App\Mng_role_menu;
use App\Mng_User;
use App\Mng_menu;
use App\Mng_roles;
use Auth;
use DB;
use carbon\Carbon;

class MngUsrRoleController extends Controller
{
    public function getRole($id) {
        
        $role = Mng_usr_roles::select('rol_id')->where('usr_id',$id)->pluck('rol_id');
        $rolemenu = Mng_role_menu::select('menu_id')->whereIn('rol_id',$role)->pluck('menu_id');
        $query = DB::table('mng_menus')
                ->select('menu_display','controller','menu_id','parent_id')
                ->groupBy('parent_id','menu_id','controller','menu_display')
                ->whereIn('menu_id',$rolemenu)
                ->orderBy('menu_display','ASC')
                ->get();
        $tree = $this->parseTree($query);
        return response()->json($tree);
    }
     
    public function parseTree($tree, $root = 0) {
        $return = array();
        foreach($tree as $child => $parent) {
            if($parent->parent_id == $root) {
            unset($tree[$child]);
                $return[] = array(
                    'label'     => $parent->menu_display,
                    'to'        => $parent->controller,
                    'items'     => $this->parseTree($tree, $parent->menu_id)
                );
            }
        }
        return empty($return) ? null : $return;    
    }
    public function save(Request $request)
    {
        $date = Carbon::now();
        $newCreation = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $user = Mng_User::select('usr_id')->where('usr_name',$request->usr_name)->first();
        $roles = $request->usr_roles;
        foreach( $roles as $r){
            $role = Mng_usr_roles::create([
                'usr_id' => $user->usr_id,
                'rol_id' => $r,
                'urol_stat' => 'T',
                'creation_date' => $newCreation,
                'created_by'=> Auth::user()->usr_name,
                'program_name'=>'MngUsrRoleController_SAVE'
            ]);
      }
    }
    public function edit($code)
    {
        $role = Mng_usr_roles::select('rol_id')->where('usr_id',$code)->pluck('rol_id');
        return response()->json($role);
    }
    public function update(Request $request, $code)
    {
        $date = Carbon::now();
        $newUpdate = Carbon::parse($date)->copy()->tz('Asia/Jakarta')->format('Y-m-d H:i:s');
        $role = $request->role;
        $roles = Mng_usr_roles::where('usr_id',$code)->first();
        $createday = $roles->creation_date;
        $created_by = $roles->created_by;
        $rr = Mng_usr_roles::where('usr_id',$code)->delete();
        foreach ($role as $r){
            $roless = Mng_usr_roles::create([
                'usr_id' => $code,
                'rol_id' => $r,
                'urol_stat' => 'T',
                'creation_date' => $createday,
                'created_by'=> $created_by,
                'last_updated_by'=> Auth::user()->usr_name,
                'program_name'=>'MngUsrRoleController_UPDATE'
            ]);
        }
    }
    public function cekRole($id)
    {
        $getRole = Mng_usr_roles::select('rol_id')->where('usr_id',$id)->pluck('rol_id');
        $cek = Mng_roles::select('rol_id','rol_name')->whereIn('rol_id',$getRole)->get();
        return response()->json($cek);
    }
}
