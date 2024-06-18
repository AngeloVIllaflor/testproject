

<?php $__env->startPush('css'); ?>
    <link href="<?php echo e(asset('plugins/switchery/switchery.css')); ?>" type="text/css" rel="stylesheet"> <!-- Switchery -->
    <link href="https://adminlte.io/themes/AdminLTE/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
    <style>
        .datepicker {
            width: 200px !important;
        }
        #daterangepicker3 {
            padding-top: 0;
            padding-bottom: 0;
        }
        #yearpicker {
            background-color: transparent !important;
            border: 0 !important;
            padding: 0 !important;
            -webkit-box-shadow: none !important;
            -moz-box-shadow: none !important;
            box-shadow: none !important;
            width: 30px;
            display: inline-block;
            text-align: center;
        }
        input[readonly] {
            cursor: pointer !important;
        }
    </style>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <div class="page-heading">
        <h1><i class="fa fa-home"></i> Dashboard</h1>
    </div>
    <div class="container-fluid">
        <div id="panel-advancedoptions">
            <div class="row">
                <div class="col-md-3">
                    <div class="info-tiles tiles-inverse has-footer">
                        <div class="tiles-heading">
                            <div class="pull-left">Total Today Visitors</div>
                            <div class="pull-right">
                            </div>
                        </div>
                        <div class="tiles-body">
                            <div class="text-center"><?php echo e($TotalTodayVisitors); ?></div>
                        </div>
                        <div class="tiles-footer">
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="info-tiles tiles-green has-footer">
                        <div class="tiles-heading">
                            <div class="pull-left">Active Visitors</div>
                            <div class="pull-right">
                            </div>
                        </div>
                        <div class="tiles-body">
                            <div class="text-center"><?php echo e($ActiveVisitors); ?></div>
                        </div>
                        <div class="tiles-footer">
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="info-tiles tiles-blue has-footer">
                        <div class="tiles-heading">
                            <div class="pull-left">Cleared Visitors</div>
                            <div class="pull-right">
                            </div>
                        </div>
                        <div class="tiles-body">
                            <div class="text-center"><?php echo e($ClearedVisitors); ?></div>
                        </div>
                        <div class="tiles-footer">
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="info-tiles tiles-alizarin has-footer">
                        <div class="tiles-heading">
                            <div class="pull-left">Last 7 Days Visitors</div>
                            <div class="pull-right">
                            </div>
                        </div>
                        <div class="tiles-body">
                            <div class="text-center"><?php echo e($Last7DaysVisitors); ?></div>
                        </div>
                        <div class="tiles-footer">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default panel-btn-focused" id="p1"
                        data-widget-editbutton="false">
                        <div class="panel-heading">
                            <h2>
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="#tab-visitor" id="tab-visitor-link" data-toggle="tab">
                                            <i class="fa fa-user visible-xs"></i> 
                                            <span class="hidden-xs">Daily per Month Visitors Chart</span>
                                        </a>
                                    </li>
                                </ul>
                            </h2>
                        </div>
                        <div class="panel-body">
                            <div class="tab-content">
                                <div class="clearfix">
                                    <button class="btn btn-default pull-left" id="daterangepicker2" style="display: block;">
                                        <i class="fa fa-calendar visible-xs"></i>
                                        <span class="hidden-xs" style="text-transform: uppercase;">
                                            <?php echo date("F j, Y", strtotime('-30 day')); ?> - <?php echo date("F j, Y"); ?>
                                        </span> 
                                        <i class="fas fa-angle-down"></i>
                                    </button>
                                </div>
                                <div id="tab-visitor" class="tab-pane active">
                                    <div id="visitors-stats" style="height:250px;"
                                        class="demo-graph graph-1"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- .container-fluid -->
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script src="<?php echo e(asset('plugins/form-daterangepicker/daterangepicker.js')); ?>"></script> <!-- Date Range Picker -->
	<script src="<?php echo e(asset('plugins/form-daterangepicker/moment.min.js')); ?>"></script> <!-- Moment.js for Date Range Picker -->
	<script src="<?php echo e(asset('plugins/switchery/switchery.js')); ?>"></script> <!-- Switchery -->
	<!-- Charts -->
	<script src="<?php echo e(asset('plugins/charts-flot/jquery.flot.min.js')); ?>"></script> <!-- Flot Main File -->
	<script src="<?php echo e(asset('plugins/charts-flot/jquery.flot.stack.min.js')); ?>"></script> <!-- Flot Stacked Charts Plugin -->
	<script src="<?php echo e(asset('plugins/charts-flot/jquery.flot.orderBars.min.js')); ?>"></script> <!-- Flot Ordered Bars Plugin-->
	<script src="<?php echo e(asset('plugins/charts-flot/jquery.flot.resize.min.js')); ?>"></script> <!-- Flot Responsive -->
	<script src="<?php echo e(asset('plugins/charts-flot/jquery.flot.tooltip.min.js')); ?>"></script> <!-- Flot Tooltips -->
	<!-- Maps -->
	<script src="<?php echo e(asset('plugins/jQuery-Mapael/js/raphael/raphael-min.js')); ?>"></script> <!-- Load Raphael as Dependency -->
	<script src="<?php echo e(asset('plugins/jQuery-Mapael/js/jquery.mapael.js')); ?>"></script> <!-- jQuery Mapael -->
	<script src="<?php echo e(asset('plugins/jquery-mousewheel/jquery.mousewheel.min.js')); ?>"></script> <!-- MouseWheel Support -->
	<script src="<?php echo e(asset('plugins/jQuery-Mapael/js/maps/world_countries.js')); ?>"></script>
	<script src="<?php echo e(asset('plugins/jQuery-Mapael/js/maps/usa_states.js')); ?>"></script> <!-- Vector Data of USA States -->
    <!-- Bootstrap Datepicker -->
    <script src="https://adminlte.io/themes/AdminLTE/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(document).ready(function() {
            let lastDateRange = null;
            let lastYear = null;
            //------------------------------
            // Date Range Picker
            //------------------------------
            $('#daterangepicker2').daterangepicker({
                showDropdowns: true,
                // format: 'MM ,YYYY',
                opens: 'down',
                startDate: moment().startOf('month'),
                endDate: moment().endOf('month')
            },
            function(start, end) {
                lastDateRange = start.format('MMMM DD, YYYY') + ' - ' + end.format('MMMM DD, YYYY');
                $('#daterangepicker2 span').html(lastDateRange);
                //------------------------------
                // Flot
                //------------------------------
                // flot 1 line
                $.ajax({
                    type: 'GET',
                    url: `/api/reports/line?month=${start.format('MM')}&year=${start.format('YYYY')}`,
                    accepts: {
                        text: "application/json"
                    },
                    dataType: 'json',
                    success: function(res) {
                        let lineObj = {};
                        res.map(rec => {
                            if (!lineObj.hasOwnProperty(rec.day.toString())) {
                                lineObj[rec.day.toString()] = {
                                    visitors: 0,
                                }
                            }
                            lineObj[rec.day.toString()].visitors += rec.total;
                        });
                        var d1 = [];
                        for (var key in lineObj) {
                            if (lineObj.hasOwnProperty(key)) {
                                d1.push([
                                    parseInt(key),
                                    lineObj[key].visitors
                                ]);
                            }
                        }
                        function sortFunction(a, b) {
                            if (a[0] === b[0]) {
                                return 0;
                            } else {
                                return (a[0] < b[0]) ? -1 : 1;
                            }
                        }
                        d1.sort(sortFunction);
                        var stack = false,
                            bars = true,
                            lines = true,
                            steps = false;
                        function plotWithOptions() {
                            $.plot("#visitors-stats", [
                                {
                                    data: d1, 
                                    label: "Visitors",
                                    lines: {
                                        show: lines,
                                        fill: 0.1,
                                        steps: steps,
                                        lineWidth: 1.25
                                    },
                                    points: {
                                        show: true,
                                        radius: 2.5
                                    }
                                }
                            ], {
                                series: {
                                    shadowSize: 0,
                                    stack: stack
                                },
                                grid: {
                                    labelMargin: 10,
                                    hoverable: true,
                                    clickable: true,
                                    borderWidth: 0,
                                    borderColor: 'rgba(0, 0, 0, 0.06)'
                                },
                                yaxis: { 
                                    tickColor: 'rgba(0, 0, 0, 0.04)', 
                                    font: {
                                        color: 'rgba(0, 0, 0, 0.4)'
                                    }
                                },
                                xaxis: { 
                                    tickColor: 'rgba(0, 0, 0, 0.04)',
                                    tickDecimals: 0,
                                    ticks: 20,
                                    font: {
                                        color: 'rgba(0, 0, 0, 0.4)'
                                    }
                                },
                                colors: ["#52cda0"],
                                tooltip: true,
                                tooltipOpts: {
                                    content: "%s: %y"
                                }
                            });
                        }
                        plotWithOptions();
                    },
                    error: function(res) {
                        console.log(res);
                    }
                });
            }).on('hide.daterangepicker', function (ev, picker) {
                $('.table-condensed tbody tr:nth-child(2) td').click();
                alert(picker.startDate.format('MM/YYYY'));
            });
        });
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Documents\Anloo\testproject\resources\views\admin\dashboard.blade.php ENDPATH**/ ?>