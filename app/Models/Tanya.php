<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Artikel
 */
class Tanya extends Model
{
    protected $table = 'tanya';

    public $timestamps = true;

    protected $fillable = [
        'name',
        'email',        
        'description'
    ];

    protected $guarded = [];

        
}