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
					<h2 style="font-size:30pt; font-weight: bold;">Pembelian Peripheral </h2>
					 <h4 style="font-size:20pt; font-weight: bold;">Pada tanggal : {{date('d M Y')}}</h4>
				</div>
			</div>
				<div class="col-md-12" >
				<br>
		<div class="footer">
            <h6 style="font-weight: bold;"> Supplier  :  {{$pembelian[0]->suplier_name}}</h6>
            <h6 style="font-weight: bold;"> Cara Pembayaran : {{$pembelian[0]->purchase_pay_methode}}</h6>
		</div>
		<div class="footer">
            <h6 style="font-weight: bold;"> Tgl. Pembelian : {{$pembelian[0]->purchase_date}}</h6>
            <h6 style="font-weight: bold;"> Petugas : {{$pembelian[0]->purchase_petugas}}</h6>
		</div>	
		<div class="footer">
            <h6 style="font-weight: bold;"> Keterangan :  {{$pembelian[0]->purchase_remark}}</h6>
            <h6 style="font-weight: bold;"> Mata Uang :  {{$pembelian[0]->valuta_code}}</h6>
		</div>
		<div class="footer">
            <h6 style="font-weight: bold;"> Total Pembelian :  {{$pembelian[0]->purchase_total}}</h6>
            <h6 style="font-weight: bold;"> Status :  {{$pembelian[0]->purchase_status}}</h6>
		</div>
					<div>
						<table class="table table-striped">
						  <thead>
						<thead>
							<tr>
                                <th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Kode</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Nama Peripheral</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Jumlah(Qty)</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Satuan</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Harga Satuan</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Total Harga</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Keterangan</th>
								<th style="font-size:12pt; font-weight: bold; background-color:#807a6b">Status</th>
							</tr>
						</thead>
						<tbody>
						@foreach($pembelian as $p)
							<tr>
                                <td>{{$p->invent_code}}</td>
								<td>{{$p->invent_desc}}</td>
								<td>{{$p->dpurchase_qty}}</td>
								<td>{{$p->dpurchase_sat}}</td>
								<td>{{$p->dpurchase_prc_sat}}</td>
								<td>{{$p->dpurchase_prc}}</td>
								<td>{{$p->dpurchase_remark}}</td>
								<td>{{$p->dpurchase_stat}}</td>
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