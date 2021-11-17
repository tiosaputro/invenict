<table style ="width:100%">
    <thead>
    <tr>
            <th colspan="12" style="text-align:center; font-weight: bold; font-size: 14px;"> Daftar Peripheral ICT</th>
        </tr>
        <tr>
            <th colspan="12" style="text-align:center; font-weight: bold; font-size: 12px;"> {{date('d M Y')}}</th>
        </tr>
        <tr>
            <br>
        </tr>
    <tr>
        <th style="text-align:left; font-weight: bold;">No.</th>
        <th style="text-align:left; font-weight: bold;">Kode</th>
        <th style="text-align:left; font-weight: bold;">Nama</th>
        <th style="text-align:left; font-weight: bold;">Merk</th>
        <th style="text-align:left; font-weight: bold;">Tipe</th>
        <th style="text-align:left; font-weight: bold;">S/N</th>
        <th style="text-align:left; font-weight: bold;">Tgl.Perolehan</th>
        <th style="text-align:left; font-weight: bold;">Lama Garansi</th>
        <th style="text-align:left; font-weight: bold;">Kondisi</th>
        <th style="text-align:left; font-weight: bold;">Bisnis Unit</th>
        <th style="text-align:left; font-weight: bold;">Lokasi Terakhir</th>
        <th style="text-align:left; font-weight: bold;">Pengguna Terakhir</th>
    </tr> 
    </thead>
    <tbody>
    @php $no=1 @endphp
    @foreach($Master as $s)
        <tr>
            <td style="text-align:left;" width="5"  height="5">{{$no++}}</td>
            <td style="text-align:left;" width="10" height="10">{{ $s->invent_code }}</td>
            <td style="text-align:left;" width="25" height="10">{{ $s->invent_desc }}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->invent_brand}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->invent_type}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->invent_sn}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->invent_tgl_perolehan}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->invent_lama_garansi}} Tahun</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->invent_kondisi}}</td>
            <td style="text-align:left;" width="25" height="15">{{ $s->invent_bu}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->invent_lokasi_update}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $s->invent_pengguna_update}}</td>
        </tr>
    @endforeach
    </tbody>
</table>