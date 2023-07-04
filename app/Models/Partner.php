<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Partner extends Model
{
    use HasFactory;
    
    protected $table = 'partners';

    protected $fillable = ['name_ar','name_en','admin_id','photo','created_at','updated_at','updated_by'];

    protected $primaryKey = 'id';

    public function admin()
    {
        return $this->belongsTo('App\Models\ِAdmin');
    }

}
