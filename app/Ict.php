<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ict extends Model
{
    protected $fillable= [
        'ireq_id',
        'ireq_no',
        'ireq_date',
        'ireq_type',
        'ireq_requestor',
        'ireq_bu',
        'ireq_approver1',
        'ireq_verificator',
        'ireq_approver2',
        'ireq_status',
        'ireq_reason',
        'ireq_assigned_to',
        'ireq_user',
        'ireq_divisi_requestor',
        'ireq_divisi_user',
        'irec_remark',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name',
    ];
    protected $table ='ireq_mst';
    protected $primaryKey ='ireq_id';
    public $timestamps = false;
}
