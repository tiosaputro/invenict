<table style ="width:100%">
    <thead>
        <tr>
            <th colspan="5" style="text-align:center; font-weight: bold; font-size: 14px;"> Daftar Lookup</th>
        </tr>
        <tr>
            <th colspan="5" style="text-align:center; font-weight: bold; font-size: 12px;"> {{date('d M Y')}}</th>
        </tr>
        <tr>
            <br>
        </tr>
    <tr>
        <th style="text-align:left; font-weight: bold;">No.</th>
        <th style="text-align:left; font-weight: bold;">Tipe</th>
        <th style="text-align:left; font-weight: bold;">Kode</th>
        <th style="text-align:left; font-weight: bold;">Deskripsi</th>
        <th style="text-align:left; font-weight: bold;">Status</th>
    </tr>
    </thead>
    <tbody>
    @php $no=1 @endphp
    @foreach($lookup as $l)
        <tr>
            <td style="text-align:left" width="5"  height="5">{{$no++}}</td>
            <td style="text-align:left" width="15" height="15">{{ $l->lookup_type }}</td>
            <td style="text-align:left" width="10" height="10">{{ $l->lookup_code }}</td>
            <td style="text-align:left" width="20" height="15">{{ $l->lookup_desc}}</td>
            <td style="text-align:left" width="20" height="15">{{ $l->lookup_status}}</td>
        </tr>
    @endforeach
    </tbody>
</table>