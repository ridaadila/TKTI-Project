<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Goals extends Model
{
    protected $table = 'it_goals';
    protected $primaryKey = 'id_it_goals';

    public function process()
    {
        return $this->belongsToMany('App\Process', 'mempunyai3', 'id_it_goals', 'id_it_process', 'id_it_goals');
    }
}
