<table style ="width:100%">
    <thead>
        <tr>
            <th colspan="12" style="text-align:center; font-weight: bold; font-size: 14px;"> Daftar Suplier</th>
        </tr>
        <tr>
            <th colspan="12" style="text-align:center; font-weight: bold; font-size: 12px;"> {{date('d M Y')}}</th>
        </tr>
        <tr>
            <br>
        </tr>
    <tr>
        <th style="text-align:left; font-weight: bold;">No</th>
        <th style="text-align:left; font-weight: bold;">Kode</th>
        <th style="text-align:left; font-weight: bold;">Nama</th>
        <th style="text-align:left; font-weight: bold;">Contact</th>
        <th style="text-align:left; font-weight: bold;">Alamat 1</th>
        <th style="text-align:left; font-weight: bold;">Alamat 2</th>
        <th style="text-align:left; font-weight: bold;">Provinsi</th>
        <th style="text-align:left; font-weight: bold;">Kota</th>
        <th style="text-align:left; font-weight: bold;">Email</th>
        <th style="text-align:left; font-weight: bold;">Fax</th>
        <th style="text-align:left; font-weight: bold;">No.Tlp 1</th>
        <th style="text-align:left; font-weight: bold;">No.Tlp 2</th>
    </tr>
    </thead>
    <tbody>
    @php $no=1 @endphp
    @foreach($Supplier as $s)
        <tr>
            <td style="text-align:left;" width="5" height="5">{{$no++}}</td>
            <td style="text-align:left;" width="15" height="15">{{ $s->suplier_code }}</td>
            <td style="text-align:left;" width="20" height="10">{{ $s->suplier_name }}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->suplier_contact}}</td>
            <td style="text-align:left;" width="50" height="15">{{ $s->suplier_address1}}</td>
            <td style="text-align:left;" width="50" height="15">{{ $s->suplier_address2}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->suplier_prov}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->suplier_city}}</td>
            <td style="text-align:left;" width="25" height="15">{{ $s->suplier_email}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->suplier_fax}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->suplier_tlp1}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->suplier_tlp2}}</td>
        </tr>
    @endforeach
    </tbody>
</table>