<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $table = 'categories';

    protected $fillable = ['name','admin_id'];

    protected $primaryKey = 'id';

    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }

    public function admin()
    {
        return $this->belongsTo('App\Models\ِAdmin');
    }
}