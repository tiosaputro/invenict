<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Auth;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {   
                // if($request->user() && $request->user()->role =="admin"){
                    return $next($request);
                // }else{
                //     return response()->json([
                //         'success'    => false
                //     ], 403);
                // }
         } 
}
