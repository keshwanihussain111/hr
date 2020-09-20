<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class company extends Controller
{
    public function index()
    {
        $data = DB::table('tblcompany')->get();
        return view('company.index')->with('data', $data);

    }

    public function addcompany()
    {
        return view('company.addcompany');
    }

    public function insertcompany(Request $request)
    {
        $data = $request->all();
        $file=$request->file('txtclogo');

        //file path
        $upload="public/images/company/";

        //file extendsion
        $ext = $file->extension();

        //get file original name with type
        $filename=rand().".".$ext;

        //to move file in specific folder
        $success=$file->move($upload,$filename);

        DB::table('tblcompany')->insert([
            'cpname'=>$data['txtcname'],
            'cplogo'=>$filename,
            'cpdetails'=>$data['txtcdetails']
        ]);

        return redirect('company');
    }
}
