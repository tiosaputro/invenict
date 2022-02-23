<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Link extends Model
{
    protected $fillable = [
        'link_id',
        'link_action',
        'expired_at',
        'usr_id',
        'ireq_id'
    ];
    protected $table= 'link_dtl';
    protected $primaryKey ='link_id';
    public $incrementing = false;
    public $timestamps = false;
}
