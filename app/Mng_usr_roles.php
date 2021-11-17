<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mng_usr_roles extends Model
{
    protected $fillable = [
        'urol_id',
        'usr_id',
        'rol_id',
        'urol_stat',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name',
    ];
    protected $table = 'mng_usr_roles';
    protected $primaryKey = 'urol_id';
    public $incrementing = false;
    public $timestamps = false;
}
