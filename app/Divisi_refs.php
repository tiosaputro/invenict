<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Divisi_refs extends Model
{
    protected $fillable = [
        'div_id',
        'div_code',
        'div_name',
        'div_verificator',
        'div_active',
        'creation_date',
        'created_by',
        'last_updated_by',
        'last_update_date',
        'program_name'
    ];
    protected $table= 'divisi_refs';
    protected $primaryKey ='div_id';
    public $incrementing = false;
    public $timestamps = false;
}
