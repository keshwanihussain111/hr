<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class employee extends Controller
{
    public function index()
    {
        $data = DB::table('vemp')->get();
        return view('employee.index')->with('data', $data);

    }

    public function addemployee()
    {
        $emptype = DB::table('tblemptype')->get();
        $dep = DB::table('vdepartment')->get();
        $des = DB::table('tbldesignation')->get();
        return view('employee.addemployee')->with('emptype', $emptype)->with('dep', $dep)->with('des', $des);
    }

    public function insertemployee(Request $request)
    {

        $data = $request->all();

        $brid = DB::table('tbldepartment')->where('did', $data['did'])->first();
        $cpid = DB::table('vbranch')->where('cpid', $data['brid'])->first();

        $file=$request->file('img');

        //file path
        $upload="public/images/employee/";

        //file extendsion
        $ext = $file->extension();

        //get file original name with type
        $filename=rand().".".$ext;

        //to move file in specific folder
        $success=$file->move($upload,$filename);

        DB::table('tblemployee')->insert([
            'efname'=>$data['fname'],
            'elast'=>$data['lname'],
            'edob'=>$data['dob'],
            'eemail'=>$data['pemail'],
            'ephone'=>$data['pphone'],
            'eaddress'=>$data['address'],

            'ecity'=>$data['city'],
            'ecountry'=>$data['country'],
            'eimage'=>$filename,
            'eophone'=>$data['ophone'],
            'eoemail'=>$data['ophone'],
            'eemphone'=>$data['emgphone'],
            'etid'=>$data['etid'],
            'dsgid'=>$data['dsgid'],
            'did'=>$data['did'],
            'brid'=>$brid,
            'cpid'=>$cpid,
        ]);
        return redirect('employee');
    }
}
