<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pembelian extends Model
{
    protected $fillable = [
        'purchase_id',
        'purchase_date',
        'purchase_petugas',
        'suplier_code',
        'purchase_pay_methode',
        'valuta_code',
        'purchase_rate',
        'purchase_total',
        'purchase_total_rp',
        'purchase_status',
        'purchase_remark',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_update_by',
        'program_name',
    ];
    protected $table='purchase_mst';
    protected $primaryKey='purchase_id';
    public $timestamps = false;
}
