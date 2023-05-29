<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use HasFactory;

    protected $table = 'settings';

    protected $fillable = ['key','value','admin_id'];

    protected $primaryKey = 'id';

    public function admin()
    {
        return $this->belongsTo('App\Models\Admin');
    }
}
