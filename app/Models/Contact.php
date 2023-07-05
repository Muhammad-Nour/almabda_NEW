<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    protected $table = 'contacts';

    protected $fillable = ['name','phone','email','subject','message','notes','updated_by','created_at','updated_at'];

    protected $primaryKey = 'id';

    public function admin()
    {
        return $this->belongsTo('App\Models\ِAdmin');
    }

}
