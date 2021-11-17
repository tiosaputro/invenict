<table style ="width:100%">
    <thead>
        <tr>
            <th colspan="9" style="text-align:center; font-weight: bold; font-size: 14px;"> Pembelian Peripheral Detail</th>
        </tr>
        <tr>
            <th colspan="9" style="text-align:center; font-weight: bold; font-size: 12px;"> {{date('d M Y')}}</th>
        </tr>
        <tr>
            <br>
        </tr>
        <tr>
            <th colspan="2" style="text-align:left; font-weight: bold; font-size: 12px;"> Supplier</th>
            <th colspan="1" style="text-align:left; font-weight: bold; font-size: 12px;"> {{ $pembelian[0]->suplier_name }} </th>
            <th colspan="1" style="text-align:left; font-weight: bold; font-size: 12px;"> Cara Pembayaran</th>
            <th colspan="2" style="text-align:left; font-weight: bold; font-size: 12px;"> {{$pembelian[0]->purchase_pay_methode}}</th>
        </tr>
        <tr>
            <th colspan="2" style="text-align:left; font-weight: bold; font-size: 12px;"> Tgl. Pembelian</th>
            <th colspan="1" style="text-align:left; font-weight: bold; font-size: 12px;"> {{$pembelian[0]->purchase_date}}</th>
            <th colspan="1" style="text-align:left; font-weight: bold; font-size: 12px;"> Petugas</th>
            <th colspan="2" style="text-align:left; font-weight: bold;font-size: 12px;"> {{$pembelian[0]->purchase_petugas}}</th>
        </tr>
        <tr>
            <th colspan="2" rowspan="2" style="text-align:left; vertical-align: top; font-weight: bold; font-size: 12px;"> Keterangan</th>
            <th colspan="1" rowspan="2" style="text-align:left; vertical-align: top; font-weight: bold; font-size: 12px;"> {{$pembelian[0]->purchase_remark}}</th>
            <th colspan="1" style="text-align:left; font-weight: bold; font-size: 12px;"> Mata Uang</th>
            <th colspan="2" style="text-align:left; font-weight: bold; font-size: 12px;"> {{$pembelian[0]->valuta_code}}</th>
        </tr>
        <tr>
            <th colspan="1" style="text-align:left; font-weight: bold; font-size: 12px;"> Total Pembelian</th>
            <th colspan="2" style="text-align:left; font-weight: bold; font-size: 12px;"> {{$pembelian[0]->purchase_total}}</th>
        </tr>
        <tr>
            <th colspan="2" style="text-align:left; font-weight: bold; font-size: 12px;"> Status</th>
            <th colspan="1" style="text-align:left; font-weight: bold; font-size: 12px;"> {{$pembelian[0]->purchase_status}}</th>
        </tr>
        <tr>
            <br>
        </tr>
    <tr>
        <th style="text-align:left; font-weight: bold;">No.</th>
        <th style="text-align:left; font-weight: bold;">Kode</th>
        <th style="text-align:left; font-weight: bold;">Nama Peripheral</th>
        <th style="text-align:left; font-weight: bold;">Jumlah(Qty)</th>
        <th style="text-align:left; font-weight: bold;">Satuan</th>
        <th style="text-align:left; font-weight: bold;">Harga Satuan</th>
        <th style="text-align:left; font-weight: bold;">Total Harga</th>
        <th style="text-align:left; font-weight: bold;">Keterangan</th>
        <th style="text-align:left; font-weight: bold;">Status</th>
    </tr>   
    </thead>
    <tbody>
    @php $no=1 @endphp
    @foreach($pembelian as $p)
        <tr>
            <td style="text-align:left;" width="5"  height="5">{{$no++}}</td>
            <td style="text-align:left;" width="15" height="15">{{ $p->invent_code }}</td>
            <td style="text-align:left;" width="40" height="10">{{ $p->invent_desc }}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->dpurchase_qty}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->dpurchase_sat}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->dpurchase_prc_sat}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->dpurchase_prc}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->dpurchase_remark}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->dpurchase_stat}}</td>
        </tr>
    @endforeach
    </tbody>
</table>