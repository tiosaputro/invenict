<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mng_helps extends Model
{
    protected $fillable = [
        'hlp_id',
        'pertanyaan',
        'jawaban',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by'
    ];
    
    protected $table = 'mng_helps';
    protected $primaryKey = 'hlp_id';
    public $incrementing = false;
    public $timestamps = false;
}
