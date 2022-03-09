<?php

namespace App;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Adldap\Laravel\Traits\HasLdapUser;

class Mng_User extends Authenticatable
{
    use Notifiable, HasApiTokens, HasLdapUser;

    protected $fillable = [
        'usr_id',
        'ureg_num',
        'kdsatker',
        'kddept',
        'kdunit',
        'usr_name',
        'usr_fullname',
        'usr_passwd',
        'usr_alamat',
        'usr_nip',
        'usr_email',
        'usr_npwp',
        'usr_jabatan',
        'usr_nm_perush',
        'usr_stat',
        'creation_date',
        'created_by',
        'last_update_date',
        'last_updated_by',
        'program_name',
        'kddept_unit',
        'waba_id',
        'usr_foto',
        'div_id',
        'objectguid'
    ];
    protected $hidden = [
        'user_passwd'
    ];
    protected $table = 'mng_users';
    protected $primaryKey = 'usr_id';
    public $incrementing = false;
    public $timestamps = false;

}
