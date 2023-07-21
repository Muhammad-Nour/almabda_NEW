<?php

namespace App\Http\Controllers;

use App\Models\Branch;
use App\Http\Requests\BranchRequest;
use Illuminate\Support\Facades\Auth;
use App\Traits\UploadBranchPhoto;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class BranchController extends Controller
{
    use UploadBranchPhoto ;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $branches = Branch::paginate(10);

        $paginate = true ;

        return view('admin.branches.branches-show',compact('branches'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.branches.branches-add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreBranchRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BranchRequest $request)
    {
        DB::beginTransaction();

        $request->validated();

        $path  = $this->UploadBranchPhoto($request,'branches');

        Branch::create([
            'name_ar'=>$request->name_ar,
            'name_en'=>$request->name_en,
            'address_ar'=>$request->address_ar,
            'address_en'=>$request->address_en,
            'map'=>$request->map,
            'admin_id' => Auth::user()->id,
            'photo'=>$path
        ]);

        DB::commit();

        return redirect()->back()->withInput()->with('msg',__('site.addedMessage'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Branch  $Branch
     * @return \Illuminate\Http\Response
     */
    public function show(Branch $branch)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Branch  $Branch
     * @return \Illuminate\Http\Response
     */
    public function edit(Branch $branch)
    {
        return view('admin.branches.branches-edit',compact('branch'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBranchRequest  $request
     * @param  \App\Models\Branch  $Branch
     * @return \Illuminate\Http\Response
     */
    public function update(BranchRequest $request, Branch $branch)
    {
                $request->validated();

        if($request->hasFile('photo'))
        {

            $path  = $this->UploadBranchPhoto($request,'branches');

            $branch->update([
                'name_ar'=>$request->name_ar,
                'name_en'=>$request->name_en,
                'address_ar'=>$request->address_ar,
                'address_en'=>$request->address_en,
                'map'=>$request->map,
                'updated_by' => Auth::user()->id,
                'photo'=>$path
            ]);

        }else{
            $branch->update([
                'name_ar'=>$request->name_ar,
                'name_en'=>$request->name_en,
                'address_ar'=>$request->address_ar,
                'address_en'=>$request->address_en,
                'map'=>$request->map,
                'updated_by' => Auth::user()->id,
            ]);
        }

        return redirect(route('branches.index'))->with('msg',__('site.updatedMessage'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Branch  $Branch
     * @return \Illuminate\Http\Response
     */
    public function destroy(Branch $branch)
    {
        $branch->delete();

        return redirect(route('branches.index'))->with('msg',__('site.deletedMessage'));
    }
}
