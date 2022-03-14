<?php

namespace App\Http\Controllers;

use Session;
use App\Mng_User;
use App\User;
use Adldap\Laravel\Facades\Adldap;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{ 
    public function index(Request $request) 
    {   
        // $ldapconn = ldap_connect('172.25.1.38',389);
        //   if ($ldapconn) {          
        //    $ldapbind = ldap_bind($ldapconn, $email, $request->password);
        //     if ($ldapbind) {
        //         $user= Mng_User::where('usr_email', $request->email)->first();
        //                 $token = $user->createToken('ApiToken')->plainTextToken;
        //                 $id = $user->usr_id;
        //                     $response = [
        //                         'success'   => true,
        //                         'user'      => $user,
        //                         'token'     => $token,
        //                         'id'        => $id,
        //                         'usr_name'  => $user->usr_name
        //                     ];
        //                     return json_encode($response, 201);
        //     } else {
        //         return response(['message'=>'LDAP bind failed...','tes'=>$ldapbind],422);
        //     }
        // } else {
        //     return response(['message'=>'Cannot connect server...'],422);
        // }
            $email = $request->email."@emp.id";
            if (Adldap::auth()->attempt($email,$request->password)) {
                $user = Mng_User::where('usr_email', $request->email)->first();
                  if (!is_null ($user)) {
                    $token = $user->createToken('ApiToken')->plainTextToken;
                        $authuser = Auth::user();
                        $id = $user->usr_id;
                        $usr_name = $user->usr_name;
                    return response([
                            "success" => true, "message" => "You have logged in successfully","token"=>$token,"id"=>$id,"usr_name"=>$usr_name],200);
                    }
                      else{
                            return response(["success" => false, "email" => "Your Email not yet registered"],422);
                          }
                        }
                        else{
                            $email2 = $request->email."@emp-one.com";
                            if (Adldap::auth()->attempt($email2,$request->password)) {
                                $user = Mng_User::where('usr_email', $request->email)->first();
                                if (!is_null ($user)) {
                                    $token = $user->createToken('ApiToken')->plainTextToken;
                                            $authuser = Auth::user();
                                            $id = $user->usr_id;
                                            $usr_name = $user->usr_name;
                                            return response([
                                                "success" => true, "message" => "You have logged in successfully","token"=>$token,"id"=>$id,"usr_name"=>$usr_name],200);
                                }else{
                                    return response(["success" => false, "email" => "Your Email not yet registered"],422);
                                    }
                        }
                        else{
                                return response(["success" => false, "password" => "Unable to login. Incorrect domain account."],422);
                            }
                        }
    }

    public function loginFromEmail(Request $request)
    {
        $user= Mng_User::where('usr_id',$request->usr_id)->first();
        
        $token = $user->createToken('ApiToken')->plainTextToken;
        $id = $user->usr_id;
            $response = [
                'success'   => true,
                'user'      => $user,
                'token'     => $token,
                'id'        => $id,
                'usr_name'  => $user->usr_name
            ];
        return json_encode($response, 201);
    }
    public function logout(Request $request)
    {
        $user = Auth::user();
        $user->tokens()->where('id', $user->currentAccessToken()->id)->delete();
        return json_encode([
            'success'    => true,
            'message'    => $user,
        ], 200);
    }
}