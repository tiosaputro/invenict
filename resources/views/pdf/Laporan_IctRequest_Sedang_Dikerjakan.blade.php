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
				<div class="col-md-7 text-center mb-7">
					<h2 style="font-size:30pt; font-weight: bold;">Daftar ICT Request (Sedang Dikerjakan) </h2>
					 <h4 style="font-size:20pt; font-weight: bold;">Pada tanggal : {{date('d M Y')}}</h4>
				</div>
			</div>
			<br><br>
			<div class="row">
				<div class="col-md-12">
					<div>
						<table class="table table-striped">
						  <thead>
						<thead>
							<tr>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">No Request</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Tgl Request</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Tipe Request</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Bisnis Unit</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Pemohon</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Pengguna</th>
							</tr>
						</thead>
						<tbody>
						@foreach($ict as $i)
								<tr>
									<td>{{$i->ireq_no}}</td>
									<td>{{$i->ireq_date}}</td>
									<td>{{$i->ireq_type}}</td>
									<td>{{$i->ireq_bu}}</td>
									<td>{{$i->ireq_requestor}}</td>
									<td>{{$i->ireq_requestor}}</td>
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