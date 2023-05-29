<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $table = 'products';

    protected $fillable = [
        'name','unit','quantity','price','purchase_price','notify','category_id','admin_id','photo','small_photo','details','description'
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
