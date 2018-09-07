<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
     factory(User::class,10)->create(); //Cuando se hace un refresh de la web no se desloguea el usuario
     App\User::create([
           'name'  => 'Cristal Gaviria',
           'email' => 'cristal.61@gmail.com',
           'password' => bcrypt('lachily17775059')
       ]);  
    }
}
