<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    protected $table = 'users';

    public $timestamps = true;

    protected $fillable = [
        'name',
        'alamat',
        'email',
        'picture',
        'role',
        'kontak'
    ];
    
    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $guarded = [];

        
}