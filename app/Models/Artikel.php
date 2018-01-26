<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
/**
 * Class Artikel
 */
class Artikel extends Model
{
    use Sluggable;

    protected $table = 'artikel';

    public $timestamps = true;

    protected $fillable = [
        'id',
        'title',
        'description',
        'user',
        'tanggal',
        'picture',
        'file1',
        'file2',
        'slug'
    ];
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    protected $guarded = [];

        
}

