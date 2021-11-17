<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $fillable = [
        'suplier_code',
        'suplier_name',
        'suplier_contact',
        'suplier_address1',
        'suplier_address2',
        'suplier_city',
        'suplier_prov',
        'suplier_email',
        'suplier_fax',
        'suplier_tlp1',
        'suplier_tlp2',
        'suplier_status',
        'creation_date',
        'created_by',
        'last_updated_date',
        'last_updated_by',
        'program_name',
    ];
    protected $primaryKey = 'suplier_code';
    protected $table = 'suplier_mst';
    public $incrementing = false;
    public $timestamps = false;
}
