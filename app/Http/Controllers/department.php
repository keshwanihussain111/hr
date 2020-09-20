<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class department extends Controller

{
    public function index()
    {
        $data = DB::table('vdepartment')->get();
        return view('department.index')->with('data', $data);
    }

    public function adddepartment()
    {
        $data = DB::table('tblbranch')->get();
        return view('department.adddepartment')->with('data', $data);
    }

    public function insertdepertment(Request $r)
    {
        $data = $r->all();
        DB::table('tbldepartment')->insert([
            'dname'=>$data['txtdname'],
            'brid'=>$data['txtbpid'],
            'ddetails'=>$data['txtddetails']
        ]);
        return redirect('department');
    }
}

