<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class emptype extends Controller
{
    public function index()
    {
        $data = DB::table('tblemptype')->get();
        return view('emptype.index')->with('data', $data);

    }

    public function addemptype()
    {
        return view('emptype.addemptype');
    }

    public function insertemptype(Request $request)
    {
        DB::table('tblemptype')->insert([
            'ettitle'=>$request->ettitle
        ]);
        return redirect('emptype');
    }
}
