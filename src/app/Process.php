<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Process extends Model
{
    protected $table = 'it_process';
    protected $primaryKey = 'id_it_process';

    public function goals()
    {
        return $this->belongsToMany('App\Goals', 'mempunyai3', 'id_it_process', 'id_it_goals', 'id_it_process');
    }
}
