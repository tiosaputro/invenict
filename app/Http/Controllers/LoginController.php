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
        $ldapconn = ldap_connect("172.25.1.38");

        if ($ldapconn) {
            $ldapbind = ldap_bind($ldapconn, $request->email, $request->password);

            if ($ldapbind) {
                $user= Mng_User::where('usr_email', $request->email)->first();
                if (!is_null ($user)) {
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
                        }else{
                            return response(["email" => "Email doesnt exist."],422);
                        }
            } else {
                echo "LDAP bind failed...";
                return response(['message'=>'LDAP bind failed...','tes'=>$ldapbind],422);
            }
        } else {
            return response(['message'=>'Cannot connect server...'],422);
        }
        // $this->assertInstanceOf(User::class, Auth::user());
        // if (Adldap::auth()->attempt($request->email,$request->password)) {
        //     $user = Auth::user();
        //     return response([
        //          "user"=>$user,"success" => true, "message" => "You have logged in successfully"],200);            
        // }else{
        //     return response(["success" => false, "email" => "Email doesnt exist. Check Your Email"],422);
        // }
            // $user = Mng_User::where('usr_email', $request->email)->first();
            //     if (!is_null ($user)) {
            //         if (Hash::check($request->password, $user->usr_passwd)){
            //             $password = $request->only('password');
            //             if (Adldap::auth()->attempt($request->email,$request->password)) {
            //                 $token = $user->createToken('ApiToken')->plainTextToken;
            //                 $authuser = Auth::user();
            //                 $id = $user->usr_id;
            //                 $usr_name = $user->usr_name;
            //                 return response([
            //                     "success" => true, "message" => "You have logged in successfully","token"=>$token,"id"=>$id,"usr_name"=>$usr_name],200);
            //                 }
            //             }else{
            //                     return response(["success" => false, "password" => "Unable to login. Incorrect password."],422);
            //                 }
            //             }else{
            //                     return response(["success" => false, "email" => "Email doesnt exist. Check Your Email"],422);
            //             }
            //         }
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