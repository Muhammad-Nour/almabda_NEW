<?php

namespace App\Http\Controllers;

use App\Models\ProjectGallery;
use App\Models\Project;
use Illuminate\Http\Request;
use App\Http\Requests\ProjectGalleryRequest;
use App\Traits\UploadProjectGallery;
use App\Traits\UploadProjectPhoto;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class ProjectGalleryController extends Controller
{
    use UploadProjectGallery;
    use UploadProjectPhoto;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreProjectGalleryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProjectGalleryRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ProjectGallery  $projectGallery
     * @return \Illuminate\Http\Response
     */
    public function show(ProjectGallery $projectGallery)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ProjectGallery  $projectGallery
     * @return \Illuminate\Http\Response
     */
    public function edit(ProjectGallery $gallery)
    {
        return view('admin.projects.projects-edit-gallery',compact('gallery'));
    }
    

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProjectGalleryRequest  $request
     * @param  \App\Models\ProjectGallery  $projectGallery
     * @return \Illuminate\Http\Response
     */
    public function update(ProjectGalleryRequest $request, ProjectGallery $gallery)
    {
        if($request->hasFile('gallery'))
        {
            $file = $request->file('gallery');

            $filename = $file->getClientOriginalName();

            $path  = $file->storeAs('projects',$filename,'galleries');

            $gallery->update([
                'photo' => $path,
                'updated_by' => auth::user()->id
            ]);
        }
        
        return redirect(route('project.details',$gallery->project_id))->with('msg',__('site.updatedMessage'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ProjectGallery  $projectGallery
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProjectGallery $gallery)
    {
        $gallery->delete();

        return redirect()->back()->withInput()->with('msg',__('site.deletedMessage'));
    }
}
