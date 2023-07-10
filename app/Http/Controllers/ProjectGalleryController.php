<?php

namespace App\Http\Controllers;

use App\Models\ProjectGallery;
use App\Models\Project;
use Illuminate\Http\Request;
use App\Http\Requests\ProjectGalleryRequest;

class ProjectGalleryController extends Controller
{
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
    public function edit(ProjectGallery $projectgallery)
    {
        return view('admin.projects.projects-edit-gallery',compact('projectgallery'));
    }
    

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProjectGalleryRequest  $request
     * @param  \App\Models\ProjectGallery  $projectGallery
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProjectGallery $gallery)
    {
        if($request->hasFile('gallery'))
        {
            $file = $request->file('gallery');

            $filename = $file->getClientOriginalName();

            $path  = $file->storeAs('projects',$filename,'galleries');

            $gallery->update([
                'photo' => $path,
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
        return $gallery->id;
    }
}
