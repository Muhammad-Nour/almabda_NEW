<?php

namespace App\Http\Controllers;

use App\Models\custom;
use App\Traits\UploadPhotoCustom;
use App\Http\Requests\CustomRequest;
use Illuminate\Support\Facades\Auth;


class CustomController extends Controller
{
    use UploadPhotoCustom;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $customs = Custom::paginate(10);

        $paginate = true;

        return view('admin.custom.custom-show',compact('customs','paginate'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.custom.custom-add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\CustomRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CustomRequest $request , Custom $custom)
    {
        
        Custom::create($request->validated());

        return redirect()->back()->withInput()->with('msg',__('site.addedMessage'));

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\custom  $custom
     * @return \Illuminate\Http\Response
     */
    public function show(Custom $custom)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\custom  $custom
     * @return \Illuminate\Http\Response
     */
    public function edit(custom $custom)
    {
        return view('admin.custom.custom-edit',compact('custom'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\CustomRequest  $request
     * @param  \App\Models\custom  $custom
     * @return \Illuminate\Http\Response
     */
    public function update(CustomRequest $request, Custom $custom)
    {
        $request->validated();

        $path  = $this->UploadPhotoCustom($request,'custom');

        $custom->update([

            'photo'=>$path,
            'description_ar'=>$request->description_ar,
            'description_en'=>$request->description_en,
            'updated_by' => Auth::user()->id
        ]);

        return redirect(route('customs.index'))->with('msg',__('site.updatedMessage'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\custom  $custom
     * @return \Illuminate\Http\Response
     */
    public function destroy(Custom $custom)
    {
        $custom->delete();

        return redirect(route('customs.index'))->with('msg',__('site.deletedMessage'));
    }
}
