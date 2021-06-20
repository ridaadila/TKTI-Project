<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Business extends Model
{
    protected $table = 'business_goal';
    protected $primaryKey = 'ID_BUSINESS';

    public function perspective()
    {
        return $this->belongsTo('App\Perspective', 'ID_PERSPECTIVE');
    }
}
