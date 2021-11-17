<table style ="width:100%">
    <thead>
        <tr>
            <th colspan="8" style="text-align:center; font-weight: bold; font-size: 14px;"> Daftar Mutasi Peripheral ICT</th>
        </tr>
        <tr>
            <th colspan="8" style="text-align:center; font-weight: bold; font-size: 12px;"> {{date('d M Y')}}</th>
        </tr>
        <tr>
            <br>
        </tr>
    <tr>
        <th style="text-align:left; font-weight: bold;">No.</th>
        <th style="text-align:left; font-weight: bold;">Kode</th>
        <th style="text-align:left; font-weight: bold;">Nama</th>
        <th style="text-align:left; font-weight: bold;">Dari Tgl</th>
        <th style="text-align:left; font-weight: bold;">SD Tgl</th>
        <th style="text-align:left; font-weight: bold;">Lokasi</th>
        <th style="text-align:left; font-weight: bold;">Pengguna</th>
        <th style="text-align:left; font-weight: bold;">Keterangan</th>
    </tr> 
    </thead>
    <tbody>
    @php $no=1 @endphp
    @foreach($Mutasi as $m)
        <tr>
            <td style="text-align:left;" width="5" height="15">{{$no++}}</td>
            <td style="text-align:left;" width="15" height="15">{{ $m->invent_code }}</td>
            <td style="text-align:left;" width="25" height="10">{{ $m->invent_desc }}</td>
            <td style="text-align:left;" width="20" height="15">{{ $m->imutasi_tgl_dari}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $m->imutasi_tgl_sd}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $m->imutasi_lokasi}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $m->imutasi_pengguna}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $m->imutasi_keterangan}}</td>
        </tr>
    @endforeach
    </tbody>
</table>