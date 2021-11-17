<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Master extends Model
{
    protected $fillable = [
        'invent_code',
        'invent_desc',
        'invent_brand',
        'invent_type',
        'invent_sn',
        'invent_tgl_perolehan',
        'invent_lama_garansi',
        'invent_kondisi',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name',
        'invent_barcode',
        'invent_lokasi_update',
        'invent_pengguna_update',
        'invent_photo',
        'invent_lokasi_previous',
        'invent_pengguna_previous',
        'invent_bu',

    ];
    protected $table = 'invent_mst';
    protected $primaryKey = 'invent_code';
    public $incrementing = false;
    public $timestamps = false;
}
