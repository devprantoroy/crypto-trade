@extends('admin.layouts.app')

@section('main-content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">@lang('Dashboard')</h1>
          </div>
        </div>
      </div>
    </div>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{ $menus->count() }}</h3>

                <p>@lang('Menu')</p>
              </div>
              <a href="{{ url('/') }}" class="small-box-footer">@lang('More info') <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>{{ $blogs->count() }}</h3>

                <p>@lang('Project')</p>
              </div>
              <a href="{{route('user.single_blog')}}" class="small-box-footer">@lang('More info') <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>{{ $subscribers->count() }}</h3>

                <p>@lang('Subscriber')</p>
              </div>
              <a href="{{route('subscriber.index')}}" class="small-box-footer">@lang('More info') <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-dark">
              <div class="inner">
                <h3>{{ $features->count() }}</h3>

                <p>@lang('Featured')</p>
              </div>
              <a href="{{route('user.single_feature')}}" class="small-box-footer">@lang('More info') <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-success">
              <div class="inner">
                <h3>{{ $sub_menus->count() }}</h3>

                <p>@lang('Sub Menu')</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-white">
              <div class="inner">
                <h3>{{ $services->count() }}</h3>

                <p>@lang('Service')</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{ $companys->count() }}</h3>

                <p>@lang('Company')</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>{{ $testimonials->count() }}</h3>

                <p>@lang('Testimonial')</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

@endsection