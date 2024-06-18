@extends('layouts.admin')

@section('content')
    <div class="page-heading">
        <h1><i class="fa fa-briefcase"></i> Visitors</h1>
        <a href="{{ route('admin.download') }}" type="submit" class="btn btn-success" style= "margin-left: 10px; margin-top: 5px" >Download CSV</a>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12" style="margin-bottom: 20px;">
                <a href="{{ route('admin.dashboard') }}"><button class="btn btn-small btn-light"><i class="fa fa-arrow-left"></i> Back</button></a>
            </div>
        </div>
        <div id="panel-advancedoptions">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-ctrls panel-ctrls-limit">
                            </div>
                        </div>
                        <div class="panel-body panel-no-padding">
                            <table id="visitors" class="table table-striped table-bordered"
                                cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Visitor ID</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Phone Number</th>
                                        <th>Department</th>
                                        <th>Purpose</th>
                                        <th>Purpose Status</th>
                                        <th>Finished At</th>
                                        <th>Time In</th>
                                        <th>Logout Time</th>
                                    </tr>
                                </thead>
                            </table>
                            <div class="panel-footer"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
	<script src="{{ asset('plugins/form-daterangepicker/moment.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables/jquery.dataTables.js') }}"></script>
	<script src="{{ asset('plugins/datatables/dataTables.bootstrap.js') }}"></script>
    <script>
        $(document).ready(function() {
            var column_order = 1;
            var column = [
                    { data: 'id', name: 'id' },
                    { data: 'first_name', name: 'first_name' },
                    { data: 'last_name', name: 'last_name' },
                    { data: 'phone_number', name: 'phone_number' },
                    { data: 'purpose_name', name: 'purpose' },
                    { data: 'purpose_purpose', name: 'name' },
                    { data: 'purpose_status', name: 'status' },
                    { data: 'purpose_finished_at', name: 'finished_at', render: function (data, type, row) {
                        if (row.purpose_finished_at) {
                            return moment(row.purpose_finished_at).format('MM/DD/YYYY hh:mm A');
                        }
                        return '';
                    }},
                    {
                        data: 'created_at',
                        name: 'created_at',
                        render: function (data, type, row) {
                            if (data) {
                                return moment(data).format('MM/DD/YYYY hh:mm A');
                            }
                            return data;
                        }
                    },
                    {
                        data: 'logout_time',
                        name: 'logout_time',
                        render: function (data, type, row) {
                            if (data) {
                                return moment(data).format('MM/DD/YYYY hh:mm A');
                            }
                            return data;
                        }
                    }
                ];
            $('#visitors').dataTable({
                language: {
                    lengthMenu: "_MENU_",
                    searchPlaceholder: "Search..."
                },
                iDisplayLength: 20,
                processing: true,
                serverSide: true,
                ajax: "{{ route('admin.api.visitors') }}",
                order: [
                    [ column_order, "desc" ]
                ],
                searchDelay: 1000,
                columns: column
            });
            $('.panel-ctrls-limit').append("&nbsp;&nbsp;Page Limit");
            $('.panel-ctrls').append($('.dataTables_filter').addClass("pull-right")).find("label").addClass("panel-ctrls-center");
            $('.panel-ctrls').append("<i class='separator'></i>");
            $('.panel-ctrls').append($('.dataTables_length').addClass("pull-left")).find("label").addClass("panel-ctrls-center");
            $('.panel-footer').append($(".dataTable+.row"));
            $('.dataTables_paginate>ul.pagination').addClass("pull-right m0");
        });
    </script>
@endpush
