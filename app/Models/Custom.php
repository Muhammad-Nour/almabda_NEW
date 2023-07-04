<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Custom extends Model
{
    use HasFactory;

    protected $table = 'customs';

    protected $fillable = ['id','title_en','title_ar','description_ar','description_en','photo','admin_id'];

    protected $primaryKey = 'id';

    public function admin()
    {
        return $this->belongsTo('App\Models\Admin');
    }
}
