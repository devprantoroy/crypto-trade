@extends('admin.layouts.app')
@section('main-content')
<div class="container">
   <div class="content-wrapper">

      <section class="content">
         <div class="row">
            <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h2>@lang('Testimonial Edit')</h2>
                </div>
               <div class="card-body">
                  @include('includes.messege')
                  <form action="{{ route('testimonial.update',$testimonials->id) }}" method="post" enctype="multipart/form-data">
                      @csrf
                      @method('PUT')
                               <div class="form-row">
                            <div class="form-group col-md-6">
                                <div class="row">
                                  <div class="form-group col-md-12">
                                        <label>@lang('Name')</label>
                                        <input type="text" class="form-control" name="name" value="{{$testimonials->name}}" required>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label>@lang('Designation')</label>
                                        <input type="text" class="form-control" name="designation" value="{{$testimonials->designation}}" required>
                                    </div>

                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label>@lang('Testimonial Image') <small>(@lang('PNG format is standard'))</small></label>
                                <input type="file" id="dvd_image" class="form-control" name="image">
                                <div class="row mt-2">
                                    <div class="form-group col-md-12">
                                      <div class="preview hide">
                                        <img id="dvd_image" align="middle" src="{{ asset('public/user/img/testimonials/'.$testimonials->image) }}" class="image_to_upload"/>
                                      </div>
                                    </div>
                                </div>
                            </div>
                          <div class="form-group col-md-12">
                              <label>@lang('Description')</label>
                              <textarea id="textAreaNiceEditor" class="form-control" name="description" rows="9">{{$testimonials->description}}</textarea>
                          </div>
                        </div>
                        <div class="box-footer">
                        <button type="submit" class="btn btn-primary btn-sm btn-dark mt-2">@lang('Update')</button>
                      </div>
                    </form>
                </div>
            </div>
        </div>
         </div>
      </section>
   </div>
</div>
@endsection