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
    function getRole($id) {
        
        $role = Mng_usr_roles::select('rol_id')->where('usr_id',$id)->pluck('rol_id');
        $rolemenu = Mng_role_menu::select('menu_id')->whereIn('rol_id',$role)->pluck('menu_id');
        $query = DB::table('mng_menus')
                ->select('menu_display','controller','menu_id','parent_id')
                ->groupBy('parent_id','menu_id','controller','menu_display')
                // ->whereIn('menu_id',$rolemenu)
                ->orderBy('menu_display','ASC')
                ->get();
        // $query = DB::table('mng_menus as mu')
        // ->join('mng_menus as mm','mu.menu_id','mm.parent_id')
        // ->select('mu.menu_display','mu.menu_id','mu.controller','mm.parent_id')
        // ->whereIn('mu.menu_id',$rolemenu)
        // ->orderBy('mu.menu_display','ASC')
        // ->get();
        // ->toArray();
        // print_r($query);
        $tree = $this->parseTree($query);
        echo json_encode($tree);
    }
     
    function parseTree($tree, $root = 0) {
        $return = array();
        # Lintasi tree dan cari children/submenu langsung dari array query
        foreach($tree as $child => $parent) {
            # children ditemukan
            if($parent->parent_id == $root) {
            # Hapus item dari tree (kita tidak perlu melewati ini lagi)
            unset($tree[$child]);
            # Tambahkan children/submenu ke dalam array hasil dan parsing sub sub nya
                $return[] = array(
                    'label'     => $parent->menu_display,
                    'to'        => $parent->controller,
                    'items'     => $this->parseTree($tree, $parent->menu_id) // rekursif 
                );
            }
        }
        return empty($return) ? null : $return;    
    }
    // public function getRole($id,$parent = null)
    // {
    //     $test = [];
    //     $role = Mng_usr_roles::select('rol_id')->where('usr_id',$id)->pluck('rol_id');
    //     $rolemenu = Mng_role_menu::select('menu_id')->whereIn('rol_id',$role)->pluck('menu_id');
        // $menu = DB::table('mng_menus as mu')
        // ->join('mng_menus as mm','mm.menu_id','mu.parent_id')
        // ->select('mm.menu_display as labell','mu.menu_display as label','mu.controller as to')
        // ->whereIn('mu.menu_id',$rolemenu)
        // ->where(function($query){
        //     $query->where('mu.menu_stat','T')
        //           ->where('mu.mod_id','1')
        //           ->where('mm.menu_type','N')
        //           ->where('mu.menu_type','L');
        // })
        // ->orderBy ('mu.menu_display','ASC')
        // ->get();
    //     // $menu = $menu->groupBy('labell');
    //     // $menu = DB::SELECT('SELECT menu_display as label, controller as "to", LEVEL as items FROM mng_menus 
    //     //         WHERE mod_id = 1
    //     //         START WITH menu_id IN (7,8,22) 
    //     //         CONNECT BY PRIOR parent_id = menu_id 
    //     //         GROUP BY menu_display, controller,LEVEL');
    //     //   $menu = DB::SELECT('select * from mng_menus WHERE parent_id is null AND controller is null order by menu_id ASC');
    //     //  $menu2= Mng_menu::select('menu_display as label','controller as to')
    //     //     ->whereNotNull('parent_id')
    //     //     ->whereIn('menu_id',$rolemenu)
    //     //     ->orderBy('menu_display','ASC')
    //     //     ->groupBy('parent_id','menu_display','controller')
    //     //     ->get();
    //         // foreach($menu as $w){
    //         //     $test2 = [ 
    //         //         'label'=> $w->label,  
    //         //             'items' => [
    //         //                           ['label'=> $w->label,'to'=>$w->to],
    //         //                       ],
    //         //     ];
    //         //     array_push($test,$test2);
    //         // }     
    //     // $menu = DB::table('mng_menus a')
    //     //         ->join('mng_menus b','a.menu_id','b.parent_id')
    //     //         ->select('a.menu_display','a.menu_id','b.menu_display as label','b.controller')
    //     //         ->whereIn('b.menu_id',$rolemenu)
    //     //         ->where(function($query){
    //     //             $query->whereNull('a.parent_id')
    //     //                   ->whereNull('a.controller');
    //     //         })
    //     //         ->orderBy('a.menu_display','ASC')
    //     //         ->groupBy('a.menu_display','a.menu_id','b.menu_display','b.controller')
    //     //         ->get();
    //     //                 foreach($menu as $menu){
    //     //         //             foreach ($sub as $key=>$value){
    //     //                 $test2 = [ 
    //     //                              'label'=> $menu->menu_display,  
    //     //                                  'items' => [
    //     //                                                ['label'=> $menu->label,'to'=>$menu->controller],
    //     //                                            ],
    //     //                          ];
    //     //                  array_push($test,$test2);
    //     //             }
    //     //         }
    //     // $tree = DB::SELECT("select * from mng_menus where parent_id = '$parent'");
    //     // if (COUNT($tree) > 0){
    //     //     $hasil = "items = [
    //     //                         'label' = $tree->menu_display,
    //     //                         ]"; 
    //     // }
    //     // foreach($tree as $submenu){
    //     //     $hasil = "items = [
    //     //         'label' = $tree->menu_display,
    //     //             items = [
    //     //                         [
    //     //                            [ 'label'=> $submenu->menu_id, 'to'=>$submenu->controller]
    //     //                         ]
    //     //         ]"; 
    //     // }
    //     $w = DB::SELECT("SELECT * from mng_menus where PARENT_ID='$parent'");
    //     if ((COUNT($w)) > 0) {
    //         $hasil = "<ul class='sub-menu'>";
    //     }
    //     foreach ($w as $h) {
    //         $hasil = "<li><a href=''>"  . $h->MENU_NAME . "</a>";
    //         $hasil = $this->getRole($h->menu_id,$hasil);
    //         $hasil = "</li>"; 
    //     }
    //     if ((COUNT($w)) > 0) {
    //         $hasil = "</ul>";
    //         $hasil = "<i class='arrow-main-menu fa fa-angle-right' aria-hidden='true'></i>";
    //         return view('test',compact($hasil));
    //     }
    // }
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
