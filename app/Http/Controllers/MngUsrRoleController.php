<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mng_usr_roles;
use App\Mng_role_menu;
use App\Mng_User;
use App\Mng_menu;
use Auth;
use DB;
use carbon\Carbon;

class MngUsrRoleController extends Controller
{
    public function getRole($id)
    {
        $test = [];
        $role = Mng_usr_roles::select('rol_id')->where('usr_id',$id)->pluck('rol_id');
        $rolemenu = Mng_role_menu::select('menu_id')->whereIn('rol_id',$role)->pluck('menu_id');
        $menu = DB::table('mng_menus as mu')
        ->leftjoin('mng_menus as mm','mm.menu_id','mu.parent_id')
        ->select('mm.menu_display as labell','mu.menu_display as label','mu.controller as to')
        ->whereIn('mu.menu_id',$rolemenu)
        ->where(function($query){
            $query->where('mu.menu_stat','T')
                  ->where('mu.mod_id','1');
        })
        ->orderBy ('mu.menu_display','ASC')
        ->get();
        $menu2 = $menu->groupBy('labell');
        // $menu = DB::SELECT('SELECT menu_display as label, controller as "to", LEVEL as items FROM mng_menus 
        //         WHERE mod_id = 1
        //         START WITH menu_id IN (7,8,22) 
        //         CONNECT BY PRIOR parent_id = menu_id 
        //         GROUP BY menu_display, controller,LEVEL');
        //  $menu = Mng_menu::select('menu_display as label')
        //     ->whereNull('parent_id')
        //     //->whereIn('menu_id',$rolemenu)
        //     ->groupBy('menu_display')
        //     ->orderBy('menu_display','ASC')
        //     ->get();
        //  $menu2= Mng_menu::select('menu_display as label','controller as to')
        //     ->whereNotNull('parent_id')
        //     ->whereIn('menu_id',$rolemenu)
        //     ->orderBy('menu_display','ASC')
        //     ->groupBy('parent_id','menu_display','controller')
        //     ->get();
            foreach($menu as $w){
            //  foreach($menu2 as $t){
                 $test2 = [ 
                     'label'=> $w->labell, 
                         'items' => [
                                       ['label'=> $w->label,'to'=>$w->to],
                                    ],
                 ];
                 array_push($test,$test2);
                // }
         }
        return response()->json($menu2);
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
}
