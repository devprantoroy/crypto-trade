<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\User\blog;
use App\Model\User\general;
use App\Model\User\category;
use Image;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogs = blog::all();
        $generals = general::first();
        
        return view('admin.blog.show',compact('blogs','generals'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categorys = category::all();
        return view('admin.blog.blog', compact('categorys'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[

            'cat_id' => 'required',
            'title' => 'required',
            'description' => 'required',
            'image' => 'required|image',
            'file' => 'sometimes',

        ]);

        $fileNm = time().'.'.$request->file->extension();  
        $request->file->move(public_path('/user/file/'), $fileNm);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $fileName = time().'.'.$image->getClientOriginalExtension();
            $location = public_path().'/user/img/blog/'.$fileName;
            Image::make($image)->save($location);
        }else{
           $fileName = $blog->image;
        }

        $blog = new blog;
            $blog->cat_id  = $request->cat_id;
            $blog->image    = $fileName;
            $blog->title    = $request->title;
            $blog->description = $request->description;
            $blog->file = $fileNm;
            $blog->save();
            
            return redirect(route('blog.index'))->with('messege', 'Blog Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $blogs = blog::find($id);
        $categorys =category::all();

        return view('admin.blog.edit',compact('blogs', 'categorys'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            
            'cat_id' => 'required',
            'title' => 'required',
            'description' => 'required',
            'image' => 'sometimes|required|image',
            'file' => 'sometimes',

        ]);

        $blog = blog::find($id);

        if ($request->hasFile('file')) {
              @unlink('public/user/file/'.$blog->file);
           $fileNm = time().'.'.$request->file->getClientOriginalExtension();  
        $request->file->move(public_path('/user/file/'), $fileNm);
        }else{
             $fileNm = $blog->file;
        }

        

        if ($request->hasFile('image')) {
            @unlink('public/user/img/blog/'.$blog->image);
            $image = $request->file('image');
            $fileName = time().'.'.$image->getClientOriginalExtension();
            $location = public_path().'/user/img/blog/'.$fileName;
            Image::make($image)->save($location);
        }else{
           $fileName = $blog->image;
        }

            $blog->cat_id  = $request->cat_id;
            $blog->image       = $fileName;
            $blog->title       = $request->title;
            $blog->description = $request->description;
            $blog->file = $fileNm;
            $blog->update();

            return redirect(route('blog.index'))->with('messege', 'Blog Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blogs = blog::find($id);
        unlink(public_path().'/user/img/blog/'.$blogs->image);
        unlink(public_path().'/user/file/'.$blogs->file);
    
        $blogs->delete();

        return back()->with('messege', 'Blog Delete Successfully');
    }


}
