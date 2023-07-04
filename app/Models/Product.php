<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $table = 'products';

    protected $fillable = [
        'name_ar','name_en','unit_ar','unit_en','quantity','pre_price','discount','price','purchase_price','notify','photo','small_photo','description_ar','description_en','details_ar','details_en','admin_id','updated_by','category_id','created_at','updated_at'
    ];

    protected $primaryKey = 'id';

    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }

    public function gallery()
    {
        return $this->hasMany('App\Models\ProductGallery');
    }

    public function admin()
    {
        return $this->belongsTo('App\Models\Admin');
    }

}
