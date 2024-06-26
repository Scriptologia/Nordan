<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;


class Market extends Model implements HasMedia
{
    use InteractsWithMedia;
    use Translatable;
    protected $translatable = ['name'];
    
}
