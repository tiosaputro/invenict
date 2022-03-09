<?php
use App\Mng_user;

use Illuminate\Support\Facades\Hash;

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Mng_user::create([
            'usr_id'      => '1',
            'usr_name'     => 'admin',
            'usr_passwd'  => Hash::make('password'),
            'usr_email'   => 'admin@gmail.com'
        ]);
    }
}
