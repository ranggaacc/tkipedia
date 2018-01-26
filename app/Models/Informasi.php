<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Informasi extends Model
{
    use Sluggable;

    protected $table  = 'informasi';
    public $timestamps=true;

    protected $fillable = [
        'title',
        'kategori',
        'description',
        'kategori',
        'author',
        'view',
        'user',
        'tanggal',
        'picture',
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

    protected $guarded=[];
}
