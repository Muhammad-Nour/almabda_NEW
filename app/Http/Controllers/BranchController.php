<?php

namespace App\Http\Controllers;

use App\Models\Branch;
use App\Http\Requests\BranchRequest;

class BranchController extends Controller
{
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Branch  $Branch
     * @return \Illuminate\Http\Response
     */
    public function show(Branch $Branch)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Branch  $Branch
     * @return \Illuminate\Http\Response
     */
    public function edit(Branch $Branch)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBranchRequest  $request
     * @param  \App\Models\Branch  $Branch
     * @return \Illuminate\Http\Response
     */
    public function update(BranchRequest $request, Branch $Branch)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Branch  $Branch
     * @return \Illuminate\Http\Response
     */
    public function destroy(Branch $Branch)
    {
        //
    }
}
