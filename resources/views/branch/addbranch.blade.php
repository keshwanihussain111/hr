@extends('layout.master')

@section('title')
Add Branch
@endsection

@section('content')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Add New Branch</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
                    <li class="breadcrumb-item active">Add New Branch</li>
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
                        <h3 class="card-title">Add Branch</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <form role="form" method="POST"  action="{{ url('insertbranch') }}">

                        @csrf
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Branch Name</label>
                                <input type="Text" class="form-control" name="txtbname" id="exampleInputEmail1"
                                    placeholder="Enter branch name" required/>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Company Details</label>
                                <textarea class="form-control" name="txtbdetails" id="exampleInputEmail1"
                                    placeholder="Details" required/> </textarea>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Select Company</label>
                                <select name="txtcpid" id="" class="form-control">

                                    @foreach ($data as $item)
                                        <option value="{{ $item->cpid }}">{{ $item->cpname }}</option>
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
