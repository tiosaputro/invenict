<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class PekerjaController extends Controller
{
    public function getPekerja()
    {
        $pekerja = DB::table('vpekerja_ict')->select('employee_number as code','official_name as name')->orderBy('name','ASC')->get();
        return $pekerja->toJson();
    }
}
