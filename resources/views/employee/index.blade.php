@extends('layout.master')

@section('title')
Employee
@endsection

@section('head')
<link rel="stylesheet" href="{{ asset('public/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
@endsection


@section('content')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Employee </h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
                    <li class="breadcrumb-item active">Employee </li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">

                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">All Employee in HRONLINE</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Employee Id</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Designation</th>
                                    <th>Department</th>
                                    <th>Station</th>
                                    <th>Optios</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $item)
                                <tr>
                                    <td>{{ $item->eid }}</td>
                                    <td>{{ $item->efname }}</td>
                                    <td>{{ $item->elast }}</td>
                                    <td>{{ $item->dsgtitle }}</td>
                                    <td>{{ $item->dname }}</td>
                                    <td>{{ $item->brname }} - {{ $item->cpname }}</td>
                                    <td>x</td>
                                </tr>
                                @endforeach

                            </tbody>

                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</section>
@endsection

@section('scripts')
<script src="{{ asset('public/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('public/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('public/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('public/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>

<script>
    $(function () {
      $("#example1").DataTable({
        "responsive": true,
        "autoWidth": false,
      });
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
      });
    });
</script>
@endsection
