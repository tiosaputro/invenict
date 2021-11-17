<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mng_modules extends Model
{
    protected $fillable = [
        'mod_id',
        'mod_name',
        'mod_desc',
        'mod_stat',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name'
    ];
    protected $table = 'mng_modules';
    protected $primaryKey = 'mod_id';
    public $incrementing = false;
    public $timestamps = false;
}
