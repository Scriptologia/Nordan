<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use TCG\Voyager\Traits\Translatable;



class Product extends Model implements HasMedia
{
    use InteractsWithMedia;
    use Translatable;
    protected $translatable = ['name', 'description', 'parameters'];

    protected $casts = [
        'images '=> 'array',
        'markets '=> 'array',
        'parameters '=> 'array',
    ];

    public function markets()
    {
        return $this->belongsToMany(Market::class);
    }
    public function type()
    {
        return $this->belongsTo(Type::class);
    }
    public function collection()
    {
        return $this->belongsTo(Collection::class);
    }
    public function colors()
    {
        return $this->belongsToMany(Color::class);
    }
    public function sizes()
    {
        return $this->belongsToMany(Size::class);
    }


}
