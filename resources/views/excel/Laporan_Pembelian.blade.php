<table style ="width:100%">
    <thead>
        <tr>
            <th colspan="9" style="text-align:center; font-weight: bold; font-size: 14px;"> Pembelian Peripheral</th>
        </tr>
        <tr>
            <th colspan="9" style="text-align:center; font-weight: bold; font-size: 12px;"> {{date('d M Y')}}</th>
        </tr>
        <tr>
            <br>
        </tr>
    <tr>
        <th style="text-align:left; font-weight: bold;">No.</th>
        <th style="text-align:left; font-weight: bold;">Nama Suplier</th>
        <th style="text-align:left; font-weight: bold;">Tgl. Pembelian</th>
        <th style="text-align:left; font-weight: bold;">Cara Pembayaran</th>
        <th style="text-align:left; font-weight: bold;">Petugas</th>
        <th style="text-align:left; font-weight: bold;">Mata Uang</th>
        <th style="text-align:left; font-weight: bold;">Total Pembayaran</th>
        <th style="text-align:left; font-weight: bold;">Keterangan</th>
        <th style="text-align:left; font-weight: bold;">Status</th>
    </tr> 
    </thead>
    <tbody>
    @php $no=1 @endphp
    @foreach($pembelian as $p)
        <tr>
            <td style="text-align:left;" width="5"  height="5">{{$no++}}</td>
            <td style="text-align:left;" width="40" height="15">{{ $p->suplier_name }}</td>
            <td style="text-align:left;" width="15" height="10">{{ $p->purchase_date }}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->purchase_pay_methode}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->purchase_petugas}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->valuta_code}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->purchase_total}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->purchase_remark}}</td>
            <td style="text-align:left;" width="20" height="15">{{ $p->purchase_status}}</td>
        </tr>
    @endforeach
    </tbody>
</table>