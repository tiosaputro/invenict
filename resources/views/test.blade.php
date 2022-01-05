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
	{{ $coba }}
<script type="text/js" src="assets/pdf/jquery.min.js"></script>
<script type="text/js" src="assets/pdf/popper.js"></script>
<script type="text/js" src="assets/pdf/bootstrap.min.js'"></script>
<script type="text/js" src="assets/pdf/main.js'"></script>

</body>
</html>