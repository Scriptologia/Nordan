<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Color extends Model
{
    use Translatable;
    protected $translatable = ['name'];

    public function products()
    {
        return $this->belongsToMany(Product::class);
    }
}
