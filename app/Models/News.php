<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;


class News extends Model implements HasMedia
{
    use InteractsWithMedia;
    use Resizable;
    use Translatable;
    protected $translatable = ['title', 'description'];
    
}
