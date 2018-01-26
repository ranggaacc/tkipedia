<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Artikel
 */
class Perundangan extends Model
{
    protected $table = 'perundangan';

    public $timestamps = true;

    protected $fillable = [
        'kategori',
        'link'
    ];

    protected $guarded = [];

        
}