<table style ="width:100%">
    <thead>
        <tr>
            <th colspan="11" style="text-align:center; font-weight: bold; font-size: 14px;"> Cash Advance (CA) </th>
        </tr>
        <tr>
            <th colspan="11" style="text-align:center; font-weight: bold; font-size: 12px;"> {{date('d M Y')}}</th>
        </tr>
        <tr>
            <br>
        </tr>
    <tr>
        <th style="text-align:left; font-weight: bold;">No.</th>
        <th style="text-align:left; font-weight: bold;">No. Request</th>
        <th style="text-align:left; font-weight: bold;">Tgl. Request</th>
        <th style="text-align:left; font-weight: bold;">Requester</th>
        <th style="text-align:left; font-weight: bold;">Bisnis Unit</th>
        <th style="text-align:left; font-weight: bold;">Jumlah(Rp)</th>
        <th style="text-align:left; font-weight: bold;">Tgl. Submit</th>
        <th style="text-align:left; font-weight: bold;">Tgl. Terima Cash</th>
        <th style="text-align:left; font-weight: bold;">Tgl. Pembelian</th>
        <th style="text-align:left; font-weight: bold;">Tgl. Terima Barang</th>
        <th style="text-align:left; font-weight: bold;">Tgl. Penyerahan Ke User</th>
        <th style="text-align:left; font-weight: bold;">Tgl. Closing</th>
    </tr>
    </thead>
    <tbody>
    @php $no=1 @endphp
    @foreach($cash as $c)
        <tr>
            <td style="text-align:left" width="5"  height="5">{{$no++}}</td>
            <td style="text-align:left" width="15" height="15">{{ $c->ca_idd }}</td>
            <td style="text-align:left" width="20" height="20">{{ $c->ireq_date }}</td>
            <td style="text-align:left" width="20" height="15">{{ $c->ireq_id}}</td>
            <td style="text-align:left" width="25" height="15">{{ $c->bu}}</td>
            <td style="text-align:left" width="20" height="15">{{ $c->ca_pic_name}}</td>
            <td style="text-align:left" width="20" height="15">{{ $c->ca_submit_date}}</td>
            <td style="text-align:left" width="20" height="15">{{ $c->ca_recv_cash_date}}</td>
            <td style="text-align:left" width="20" height="15">{{ $c->ca_purchase_date}}</td>
            <td style="text-align:left" width="20" height="15">{{ $c->ca_recv_item_date}}</td>
            <td style="text-align:left" width="25" height="15">{{ $c->ca_hand_over_date}}</td>
            <td style="text-align:left" width="25" height="15">{{ $c->ca_settlement_date}}</td>
        </tr>
    @endforeach
    </tbody>
</table>