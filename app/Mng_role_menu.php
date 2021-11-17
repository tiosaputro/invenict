<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mng_role_menu extends Model
{
    protected $fillable = [
        'rolm_id',
        'menu_id',
        'rol_id',
        'rolm_priv',
        'rolm_stat',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name'
    ];
    
    protected $table = 'mng_role_menus';
    protected $primaryKey = 'rolm_id';
    public $incrementing = false;
    public $timestamps = false;
}
