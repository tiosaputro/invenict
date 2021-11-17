<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mng_roles extends Model
{
    protected $fillable = [
        'rol_id',
        'rol_name',
        'rol_desc',
        'rol_stat',
        'created_by',
        'creation_date',
        'last_update_date',
        'last_updated_by',
        'program_name'
    ];
    protected $table = 'Mng_roles';
    protected $primaryKey = 'rol_id';
    public $incrementing = false;
    public $timestamps = false;
}
