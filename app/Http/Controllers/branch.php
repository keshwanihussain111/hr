<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class branch extends Controller
{
    public function index()
    {
        // $data = DB::table('tblbranch')->get();
        $data = DB::table('vbranch')->get();
        return view('branch.index')->with('data', $data);
    }

    public function addbranch()
    {
        $data = DB::table('tblcompany')->get();
        return view('branch.addbranch')->with('data', $data);
    }

    public function insertbranch(Request $r)
    {
        $data = $r->all();
        DB::table('tblbranch')->insert([
            'brname'=>$data['txtbname'],
            'cpid'=>$data['txtcpid'],
            'brdetails'=>$data['txtbdetails']
        ]);
        return redirect('branch');
    }
}
