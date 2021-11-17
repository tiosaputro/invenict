<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mng_menu extends Model
{
    protected $fillable = [
        'menu_id',
        'mod_id',
        'mng_menu_id',
        'menu_name',
        'menu_desc',
        'menu_display',
        'menu_type',
        'menu_stat',
        'action',
        'parent_id',
        'controller',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name'
    ];
    
    protected $table = 'mng_menus';
    protected $primaryKey = 'menu_id';
    public $incrementing = false;
    public $timestamps = false;
}
