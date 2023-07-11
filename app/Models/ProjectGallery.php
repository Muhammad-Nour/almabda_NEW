<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectGallery extends Model
{
    use HasFactory;

    protected $table = 'project_galleries';

    protected $fillable = [ 'photo','project_id','admin_id','created_at','updated_at','updated_by'];

    protected $primaryKey = 'id';

    public function project()
    {
        return $this->belongsTo('App\Models\Project');
    }

    public function admin()
    {
        return $this->belongsTo('App\Models\Admin');
    }
}
