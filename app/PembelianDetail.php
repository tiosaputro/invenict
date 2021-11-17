<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PembelianDetail extends Model
{
    protected $fillable = [
        'dpurchase_id',
        'purchase_id',
        'invent_code',
        'dpurchase_qty',
        'dpurchase_sat',
        'dpurchase_prc_sat',
        'dpurchase_prc',
        'dpurchase_stat',
        'dpurchase_remark',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name',
    ];
    protected $primaryKey = 'dpurchase_id';
    protected $table = 'purchase_dtl';
    public $timestamps = false;
}
