<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cash extends Model
{
    protected $fillable = [
        'ca_id',
        'ireq_id',
        'ca_pic_name',
        'ca_submit_date',
        'ca_recv_cash_date',
        'ca_purchase_date',
        'ca_recv_item_date',
        'ca_hand_over_date',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name',
    ];
    protected $table= 'ca_mst';
    protected $primaryKey ='ca_id';
    public $incrementing = false;
    public $timestamps = false;
}
