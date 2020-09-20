<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Home;
use App\Http\Controllers\company;
use App\Http\Controllers\branch;
use App\Http\Controllers\department;
use App\Http\Controllers\designation;
use App\Http\Controllers\emptype;
use App\Http\Controllers\employee;

Route::get('/', [Home::class, 'index']);
Route::get('about', [Home::class, 'about']);
Route::get('login', [Home::class, 'logincracks']);

// company
Route::get('company', [company::class, 'index']);
Route::get('addcompany', [company::class, 'addcompany']);
Route::post('insertcompany', [company::class, 'insertcompany']);

// branch
Route::get('branch', [branch::class, 'index']);
Route::get('addbranch', [branch::class, 'addbranch']);
Route::post('insertbranch', [branch::class, 'insertbranch']);

// department
Route::get('department', [department::class, 'index']);
Route::get('adddepartment', [department::class, 'adddepartment']);
Route::post('insertdepertment', [department::class, 'insertdepertment']);

// designation
Route::get('designation', [designation::class, 'index']);
Route::get('adddesignation', [designation::class, 'adddesignation']);
Route::post('insertdesignation', [designation::class, 'insertdesignation']);

// emptype
Route::get('emptype', [emptype::class, 'index']);
Route::get('addemptype', [emptype::class, 'addemptype']);
Route::post('insertemptype', [emptype::class, 'insertemptype']);

// employee
Route::get('employee', [employee::class, 'index']);
Route::get('addemployee', [employee::class, 'addemployee']);
Route::post('insertemployee', [employee::class, 'insertemployee']);

