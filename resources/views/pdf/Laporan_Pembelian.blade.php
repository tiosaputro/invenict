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
		@page{
		size: A3;
		margin: 12mm ;
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
		<div class="">
			<div class="row justify-content-center">
				<div class="col-md-5 text-center mb-5">
					<h2 style="font-size:30pt; font-weight: bold;">Daftar Pembelian Peripheral </h2>
					 <h4 style="font-size:20pt; font-weight: bold;">Pada tanggal : {{date('d M Y')}}</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12" >
					<div>
						<table class="table table-striped">
						  <thead>
						<thead>
							<tr>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Nama Suplier</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Tgl. Pembelian</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Cara Pembayaran</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Petugas</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Mata Uang</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Total Pembayaran</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Keterangan</th>
                                <th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Status</th>
							</tr>
						</thead>
						<tbody>
						@foreach($pem as $p)
								<tr>
									<td>{{$p->suplier_name}}</td>
									<td>{{$p->purchase_date}}</td>
									<td>{{$p->purchase_pay_methode}}</td>
									<td>{{$p->purchase_petugas}}</td>
									<td>{{$p->valuta_code}}</td>
									<td>{{$p->purchase_total}}</td>
									<td>{{$p->purchase_remark}}</td>
									<td>{{$p->purchase_status}}</td>
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