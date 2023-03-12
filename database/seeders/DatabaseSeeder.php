<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('outlets')->insert([
            [
                'nama'=>'Toko Dati Laundry',
                'alamat'=>'Padaherang',
                'tlp'=>'858907834522'
            ],
            [
                'nama'=>'Dati Laundry-2',
                'alamat'=>'Pangandaran',
                'tlp'=>'897867451001'
            ],
        ]);

        DB::table('users')->insert([
            [
                'nama'=>'Administrator',
                'username'=>'admin',
                'password'=>bcrypt('1234'),
                'role'=>'admin',
                'outlet_id'=>1,
            ],
            [
                'nama'=>'Kasir',
                'username'=>'kasir',
                'password'=>bcrypt('1234'),
                'role'=>'kasir',
                'outlet_id'=>1,
            ],
            [
                'nama'=>'Pemilik',
                'username'=>'owner',
                'password'=>bcrypt('1234'),
                'role'=>'owner',
                'outlet_id'=>1,
            ]
        ]);

        // DB::table('pakets')->insert([
        //     [
        //         'nama_paket' => 'Reguler',
        //         'harga' => '7000',
        //         'jenis' => 'kiloan',
        //         'outlet_id' =>1,
        //     ],
        //     [
        //         'nama_paket' => 'Bed Cover',
        //         'harga' => '5000',
        //         'jenis' => 'bed_cover',
        //         'outlet_id' =>1, 
        //     ],           
        // ]);

        DB::table('members')->insert([
            [
                'nama' => 'Jiso',
                'jenis_kelamin' => 'P',
                'alamat' => 'Padaherang',
                'tlp' =>'888222999333',
            ],
            [
                'nama' => 'Lalisa',
                'jenis_kelamin' => 'P',
                'alamat' => 'Karangsari',
                'tlp' =>'888111999777',  
            ]
                          
        ]);

    }
}
