<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\ProjectGallery;

use App\Http\Requests\ProjectRequest;
use App\Http\Requests\ProjectGalleryRequest;

use App\Traits\UploadProjectGallery;
use App\Traits\UploadProjectPhoto;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

class ProjectController extends Controller
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
        $projects = project::paginate(10);

        $paginate = true;

        return view('admin.projects.projects-show',compact('projects','paginate'));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.projects.projects-add');
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\ProjectRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProjectRequest $request)
    {

        DB::beginTransaction();

        $request->validated();

        $path  = $this->UploadProjectPhoto($request,'projects');

        $projects = Project::create([
            'photo'=>$path,
            'name_ar'=>$request->name_ar,
            'name_en'=>$request->name_en,
            'created_at' => $request->created_at,
            'updated_at' => $request->updated_at,
            'admin_id' => Auth::user()->id
        ]);

        if($request->hasFile('gallery'))
        {
            $files = $request->file('gallery');

            foreach($files as $file){

                $filename = $file->getClientOriginalName();

                $path  = $file->storeAs('projects',$filename,'galleries');

                ProjectGallery::create([
                    'project_id' => $projects->id,
                    'photo' => $path,
                    'admin_id' => Auth::user()->id
                ]);
            }
        }

        DB::commit();

        return redirect()->back()->withInput()->with('msg',__('site.addedMessage'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function show(Project $project)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function edit(Project $project)
    {
        return view('admin.projects.projects-edit',compact('project'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProjectRequest  $request
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function update(ProjectRequest $request, Project $project)
    {
        $request->validated();

        if($request->hasFile('photo'))
        {
            
        $path  = $this->UploadProjectPhoto($request,'projects');
            
            $project->update([
                'photo' => $path,
                'name_ar'=>$request->name_ar,
                'name_en'=>$request->name_en,
                'updated_at' => $request->updated_at,
                'admin_id' => Auth::user()->id,
                'updated_by' => Auth::user()->id
            ]);
        }else{

            $project->update([
                'name_ar'=>$request->name_ar,
                'name_en'=>$request->name_en,
                'updated_at' => $request->updated_at,
                'admin_id' => Auth::user()->id,
                'updated_by' => Auth::user()->id
            ]);

        }

        return redirect(route('projects.index'))->with('msg',__('site.updatedMessage'));
    }

    public function getDetails(Project $project)
    {
        $ProjectGallery = ProjectGallery::where('project_id',$project->id)->get();

        $projects = Project::where('id',$project->id)->get();

        return view('admin.projects.projects-details',
            compact('ProjectGallery','projects','project'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $project)
    {
        $project->delete();

        return redirect(route('projects.index'))->with('msg',__('site.deletedMessage'));
    }
}
