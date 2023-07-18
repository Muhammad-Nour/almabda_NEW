<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;

    protected $table = 'news';

    protected $fillable = ['id','name_en','name_ar','date','description_ar','description_en','photo','admin_id','updated_by','updated_at','created_at'];

    protected $primaryKey = 'id';

    public function admin()
    {
        return $this->belongsTo('App\Models\Admin');
    }
}
