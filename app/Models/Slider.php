<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;


class Slider extends Model implements HasMedia
{
    use InteractsWithMedia;
    use Resizable;
    use Translatable;
    protected $translatable = ['name', 'description'];
    
}
