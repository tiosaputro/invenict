<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<base href="/">
 
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<title>E-App</title>
    <style>
      @media print{
        .bg-light {
            background-color: #eae9e9 !important;
        }
}
    </style>
</head>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/pdf/style.css">
</head>

<body>
	<section class="ftco-section">
		<div>
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-6">
					<h2 style="font-size:30pt; font-weight: bold;">ICT Request </h2>
					 <h4 style="font-size:20pt; font-weight: bold;">Pada tanggal : {{date('d M Y')}}</h4>
				</div>
			</div>
				<div class="col-md-12" >
					<br>
				<div class="footer">
					<h6 style="text-align:justify; font-weight: bold;">No. Request : {{$detail[0]->ireq_no}}</h6>
					<h6 style="text-align:justify; font-weight: bold;">Requestor : {{$detail[0]->ireq_requestor}}</h6>
				</div>
				<div class="footer">
					<h6 style="text-align:justify;font-weight: bold;"> Tgl. Request : {{$detail[0]->ireq_date}}</h6>
					<h6 style="text-align:justify;font-weight: bold;"> Bisnis Unit : {{$detail[0]->ireq_bu}}</h6>
				</div>	
				<div class="footer">
				<h6 style="text-align:justify; font-weight: bold;"> Status :  {{$detail[0]->ireqq_status}}</h6>
					<h6></h6>
				</div>
					<div>
						<table class="table table-striped">
						  <thead>
						<thead>
							<tr>
                                <th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Tipe</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Kode</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Nama Peripheral</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Qty</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Keterangan</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Status</th>
							</tr>
						</thead>
						<tbody>
						@foreach($detail as $d)
							<tr>
                                <td>{{$d->ireq_type}}</td>
								<td>{{$d->invent_code}}</td>
								<td>{{$d->invent_desc}}</td>
								<td>{{$d->ireq_qty}}</td>
								<td>{{$d->ireq_remark}}</td>
								<td>{{$d->ireq_status}}</td>
							</tr>	
							@endforeach							
						</tbody>
					</table>
				</div>
			</div>
		</div>
		</div>
	</div>
</section>

<script type="text/js" src="assets/pdf/jquery.min.js"></script>
<script type="text/js" src="assets/pdf/popper.js"></script>
<script type="text/js" src="assets/pdf/bootstrap.min.js'"></script>
<script type="text/js" src="assets/pdf/main.js'"></script>

</body>
</html>