<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

/**
 * Class Artikel
 */
class Faq extends Model
{
    use Sluggable;

    protected $table = 'faq';

    public $timestamps = true;

    protected $fillable = [
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