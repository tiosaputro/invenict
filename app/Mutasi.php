<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mutasi extends Model
{
    protected $fillable = [
        'imutasi_id',
        'invent_code',
        'imutasi_tgl_dari',
        'imutasi_tgl_sd',
        'imutasi_lokasi',
        'imutasi_pengguna',
        'imutasi_keterangan',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name',
        'imutasi_bu',
    ];
    protected $table='invent_mutasi';
    protected $primaryKey='imutasi_id';
    public $timestamps = false;
}
