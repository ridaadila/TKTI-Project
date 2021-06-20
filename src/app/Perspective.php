<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Perspective extends Model
{
    protected $table = 'perspective_goal';
    protected $primaryKey = 'ID_PERSPECTIVE';

    public function business()
    {
        return $this->hasMany('App\Business', 'ID_PERSPECTIVE');
    }
}
