@extends('admin.layouts.app')
@section('main-content')
<div class="container">
   <div class="content-wrapper">
    <form action="{{ route('general.update',$generals->id) }}" method="post" enctype="multipart/form-data">
        @csrf
        @method('PUT')
      <section class="content">
        @include('includes.messege')
         <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h2>@lang('Initial trading') <a href="{{route('test.mail.noti')}}" class="btn btn-primary float-right"> SEND MAIL (TEST)</a> </h2>
                    </div>
                    <div class="card-body">


                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>@lang('Increased Days')</label>
                                <select name="trending_incresed_day" class="form-control">
                                    <option {{$generals->trending_incresed_day == '1h' ? 'selected': ''}} value="1h">1 Hour</option>
                                    <option {{$generals->trending_incresed_day == '24h' ? 'selected': ''}} value="24h">1 Day</option>
                                    <option {{$generals->trending_incresed_day == '7d' ? 'selected': ''}} value="7d">7 Days</option>
                                    <option {{$generals->trending_incresed_day == '30d' ? 'selected': ''}} value="30d">30 Days</option>
                                    <option {{$generals->trending_incresed_day == '60d' ? 'selected': ''}} value="60d">60 Days</option>
                                    <option {{$generals->trending_incresed_day == '90d' ? 'selected': ''}} value="90d">90 Days</option>
                                </select>
                                {{-- <input type="text" class="form-control" name="trending_incresed_day" value="{{$generals->trending_incresed_day}}" required> --}}
                            </div>
                            <div class="form-group col-md-6">
                                <label>@lang('Average')</label>
                                <input type="text" class="form-control" name="trending_incresed_average" value="{{$generals->trending_incresed_average}}" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label>@lang('Testing Email')</label>
                                <input type="text" class="form-control" name="trending_test_email" value="{{$generals->trending_test_email}}" required>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
         </div>



         <button type="submit" class="btn btn-primary btn-sm btn-dark mt-2">@lang('Update')</button>
      </section>
    </form>
   </div>
</div>
@endsection
