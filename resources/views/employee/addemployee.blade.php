@extends('layout.master')

@section('title')
Add Employee
@endsection

@section('content')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Add New Employee</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
                    <li class="breadcrumb-item active">Add New Employee</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Add Employee</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <form role="form" action="{{ url('insertemployee') }}" method="POST" enctype="multipart/form-data" >

                        @csrf
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">First Name</label>
                                <input type="Text" class="form-control" name="fname" id="exampleInputEmail1"
                                    placeholder="Enter First name" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Last Name</label>
                                <input type="Text" class="form-control" name="lname" id="exampleInputEmail1"
                                    placeholder="Enter Last name" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Personal Email</label>
                                <input type="email" class="form-control" name="pemail" id="exampleInputEmail1"
                                    placeholder="Enter Email" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Personal Phone Number</label>
                                <input type="number" class="form-control" name="pphone" id="exampleInputEmail1"
                                    placeholder="Enter Phone Number" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Data of Birth</label>
                                <input type="date" class="form-control" name="dob" id="exampleInputEmail1"
                                    required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Address</label>
                                <textarea class="form-control" name="address" id="exampleInputEmail1"
                                    placeholder="Address" required/> </textarea>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">City</label>
                                <input type="text" class="form-control" name="city" id="exampleInputEmail1"
                                    placeholder="Enter City" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Country</label>
                                <input type="text" class="form-control" name="country" id="exampleInputEmail1"
                                    placeholder="Enter Country" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputFile">Employee Image</label>
                                <div class="input-group">
                                <input type="file" name="img" >
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Offical Email</label>
                                <input type="email" class="form-control" name="oemail" id="exampleInputEmail1"
                                    placeholder="Enter Email" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Offical Phone Number</label>
                                <input type="number" class="form-control" name="ophone" id="exampleInputEmail1"
                                    placeholder="Enter Phone Number" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Emg. Phone Number</label>
                                <input type="number" class="form-control" name="emgphone" id="exampleInputEmail1"
                                    placeholder="Enter Phone Number" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Select Employee Type</label>
                                <select name="etid" id="" class="form-control">

                                    @foreach ($emptype as $item)
                                        <option value="{{ $item->etid }}">{{ $item->ettitle }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Select Employee Designation</label>
                                <select name="dsgid" id="" class="form-control">

                                    @foreach ($des as $item)
                                        <option value="{{ $item->dsgid }}">{{ $item->dsgtitle }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Select Employee Station</label>
                                <select name="did" id="" class="form-control">

                                    @foreach ($dep as $item)
                                        <option value="{{ $item->did }}">{{ $item->dname }}     |   {{ $item->brname }}</option>
                                    @endforeach
                                </select>
                            </div>

                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
                <!-- /.card -->


            </div>

            <!--/.col (right) -->
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</section>
@endsection
