<table style ="width:100%">
    <thead>
        <tr>
            <th colspan="3" style="text-align:center; font-weight: bold; font-size: 14px;"> Laporan Request Per Status ( {{$status[0]->name}} ) </th>
        </tr>
        <tr>
            <th colspan="3" style="text-align:center; font-weight: bold; font-size: 12px;"> {{date('d M Y')}}</th>
        </tr>
        <tr>
            <br>
        </tr>
    <tr>
        <th style="text-align:left; font-weight: bold;">No.</th>
        <th style="text-align:left; font-weight: bold;">Status Request</th>
        <th style="text-align:left; font-weight: bold;">Jumlah Request</th>
    </tr>
    </thead>
    <tbody>
    @php $no=1 @endphp
    @foreach($status as $s)
        <tr>
            <td style="text-align:left" width="5"  height="5">{{$no++}}</td>
            <td style="text-align:left" width="40" height="15">{{ $s->status }}</td>
            <td style="text-align:left" width="20" height="20">{{ $s->jumlah }}</td>
        </tr>
    @endforeach
    </tbody>
</table>