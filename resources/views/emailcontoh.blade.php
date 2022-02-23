<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<base href="/">
 
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
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
					<h2 style="font-size:30pt; font-weight: bold;">ICT Request Approval </h2>
				</div>
			</div>
				<div class="col-md-12" >
					<br>
				<div class="footer">
					<h4 style="text-align:justify; font-weight: bold;">No. Request : {{$ict[0]->ireq_no}}</h4>
					<h4 style="text-align:justify; font-weight: bold;">Pengguna : {{$ict[0]->ireq_user}}</h4>
				</div>
				<div class="footer">
					<h4 style="text-align:justify;font-weight: bold;"> Tgl. Request : {{$ict[0]->ireq_date}}</h4>
				</div>
					<div>
						<table class="table table-striped">
						  <thead>
						<thead>
							<tr>
                                <th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Nama Barang</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Jumlah Barang</th>
							</tr>
						</thead>
						<tbody>
						@foreach($ict as $d)
							<tr>
                                <td>{{$d->invent_desc}}</td>
								<td>{{$d->ireq_qty}}</td>
							</tr>	
							@endforeach							
						</tbody>
					</table>
                        <a href="http://localhost:8000/ictinv_resp/{{$link->link_id}}/approve"><button type="button" class="btn btn-primary">Approve</button></a>
                        <a href="http://localhost:8000/ictinv_resp/{{$link->link_id}}/reject"><button type="button" class="btn btn-primary">Reject</button></a>
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