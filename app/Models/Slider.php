<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;

    protected $table = 'sliders';

    protected $fillable = [
        'photo','title_ar','title_en','admin_id','description_ar','description_en','created_at','updated_at'
    ];

    protected $primaryKey = 'id';

    public function admin()
    {
        return $this->belongsTo('App\Models\Admin');
    }
}
