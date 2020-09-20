<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class designation extends Controller
{
    public function index()
    {
        $data = DB::table('tbldesignation')->get();
        return view('designation.index')->with('data', $data);
    }

    public function adddesignation()
    {
        return view('designation.adddesignation');
    }

    public function insertdesignation(Request $r)
    {
        $data = $r->all();
        DB::table('tbldesignation')->insert([
            'dsgtitle'=>$data['dtitle'],

        ]);
        return redirect('designation');
    }
}
