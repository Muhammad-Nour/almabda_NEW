<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Http\Requests\SliderRequest;
use Illuminate\Support\Facades\Auth;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sliders = Slider::all();

        return view('admin.sliders.slider-show',compact('sliders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.sliders.slider-add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SliderRequest $request)
    {
        DB::beginTransaction();

        $request->validated();

        if($request->hasFile('image'))
        {
            $file = $request->file('image');
        
            $filename = $file->getClientOriginalName();

            $path  = $file->storeAs('sliders',$filename,'galleries');

                Slider::create([
                    'photo' => $path,
                    'title_ar'=>$request->title_ar,
                    'title_en'=>$request->title_en,
                    'description_ar'=>$request->description_ar,
                    'description_en'=>$request->description_en,
                    'user_id' => Auth::user()->id
                ]);
        }

        DB::commit();
        
        return redirect()->back()->withInput()->with('msg',__('site.addedMessage'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function show(Slider $slider)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function edit(Slider $slider)
    {
        return view('admin.sliders.slider-edit',compact('slider'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function update(SliderRequest $request, Slider $slider)
    {
        $request->validated();

        if($request->hasFile('image'))
        {
            $file = $request->file('image');
        
            $filename = $file->getClientOriginalName();

            $path  = $file->storeAs('sliders',$filename,'galleries');
        

            $slider->update([
                'photo' => $path,
                'title_ar'=>$request->title_ar,
                'title_en'=>$request->title_en,
                'description_ar'=>$request->description_ar,
                'description_en'=>$request->description_en,
            ]);
        }else{
    
            $slider->update([
                'title_ar'=>$request->title_ar,
                'title_en'=>$request->title_en,
                'description_ar'=>$request->description_ar,
                'description_en'=>$request->description_en,
            ]);

        }

        return redirect(route('sliders.index'))->with('msg',__('site.updatedMessage'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function destroy(Slider $slider)
    {
        $slider->delete();

        return redirect(route('sliders.index'))->with('msg',__('site.deletedMessage'));   
    }
}
