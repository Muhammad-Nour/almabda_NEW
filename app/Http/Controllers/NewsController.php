<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Http\Requests\NewsRequest;
use Illuminate\Support\Facades\Auth;
use App\Traits\UploadNewsPhoto;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class NewsController extends Controller
{

    use UploadNewsPhoto;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = News::paginate(20);

        $paginate = true ; 

        return view('admin.news.news-show',compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.news.news-add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\NewsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(NewsRequest $request)
    {
        DB::beginTransaction();

        $request->validated();

        $path  = $this->UploadNewsPhoto($request,'news');

        News::create([
            'name_ar'=>$request->name_ar,
            'name_en'=>$request->name_en,
            'description_ar'=>$request->description_ar,
            'description_en'=>$request->description_en,
            'date'=>$request->date,
            'admin_id' => Auth::user()->id,
            'photo'=>$path
        ]);

        DB::commit();

        return redirect()->back()->withInput()->with('msg',__('site.addedMessage'));

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show(News $news)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function edit(News $news)
    {
        return view('admin.news.news-edit',compact('news'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateNewsRequest  $request
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function update(NewsRequest $request, News $news)
    {
        $request->validated();

        if($request->hasFile('photo'))
        {

            $path  = $this->UploadNewsPhoto($request,'news');

            $news->update([
                'name_ar'=>$request->name_ar,
                'name_en'=>$request->name_en,
                'description_ar'=>$request->description_ar,
                'description_en'=>$request->description_en,
                'date'=>$request->date,
                'updated_by' => Auth::user()->id,
                'photo'=>$path
            ]);

        }else{
            $news->update([
                'name_ar'=>$request->name_ar,
                'name_en'=>$request->name_en,
                'description_ar'=>$request->description_ar,
                'description_en'=>$request->description_en,
                'date'=>$request->date,
                'updated_by' => Auth::user()->id,
            ]);
        }

        return redirect(route('news.index'))->with('msg',__('site.updatedMessage'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(News $news)
    {
        $news->delete();

        return redirect(route('news.index'))->with('msg',__('site.deletedMessage'));

    }
}
