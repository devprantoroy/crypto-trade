@extends('user/app')
  @section('main-content')



        <section class="services-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-lg-9">
                        <div class="section-title">
                            <span>Crypto List</span>
                            {{-- <h2>{{$general->service_title}}</h2>
                            <p>{!! clean($general->service_description) !!}</p> --}}
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col col-xs-12">
                        <table class="table">
                            <thead>
                              <tr>
                                <th>#</th>
                                <th>Logo</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>24h %</th>
                                <th>7d %</th>
                                <th>Market Cap</th>
                                <th>Volume(24h)</th>
                                <th>Circulating Supply
                                </th>
                              </tr>
                            </thead>
                            <tbody>
                                @if ( $cryptoList['status']['error_code'] ==0)
                                @foreach ($cryptoList['data'] as $key => $data)
                                <tr>
                                    <td>{{$key +1 }}</td>
                                    <td><img src="https://s2.coinmarketcap.com/static/img/coins/64x64/{{$data['id']}}.png" alt="{{$data['name']}}"></td>
                                    <td>{{$data['name']}} <small>({{$data['symbol']}})</small></td>
                                    <td>${{round($data['quote']['USD']['price'],4)}}</td>
                                    <td>
                                        @if ($data['quote']['USD']['volume_change_24h'] > 0)
                                        &#8673; <span style="color: green"> {{round(abs($data['quote']['USD']['volume_change_24h']),2)}}%</span>
                                        @else
                                        &#8675; <span style="color: red"> {{round(abs($data['quote']['USD']['volume_change_24h']),2)}}%</span>
                                        @endif
                                    </td>
                                    <td>
                                        @if ($data['quote']['USD']['percent_change_7d'] > 0)
                                        &#8673; <span style="color: green"> {{round(abs($data['quote']['USD']['percent_change_7d']),2)}}%</span>
                                        @else
                                        &#8675; <span style="color: red"> {{round(abs($data['quote']['USD']['percent_change_7d']),2)}}%</span>
                                        @endif
                                    </td>

                                    <td>${{round($data['quote']['USD']['market_cap'],2)}}</td>
                                    <td>{{round($data['quote']['USD']['volume_24h'],4)}}</td>
                                    <td>{{round($data['circulating_supply'],4)}}</td>
                                </tr>
                                @endforeach
                                @else
                                <tr>Not Data fund</tr>
                                @endif

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>



        {{-- <section class="cta-s2-section">
            <div class="container">
                <div class="row">
                    <div class="col col-sm-9">
                        <h3>{{$general->contact_header}}</h3>
                    </div>
                    <div class="col col-sm-3">
                        <div class="contact-btn">
                            <a href="{{route('user.contacts')}}" class="theme-btn-s4">@lang('Contact With Us')</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="newsletter-section">
            <h2 class="hidden">@lang('Newsletter')</h2>
            <div class="container">
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="newsletter">
                            <div class="newsletter-form">
                            	@include('includes.subscribemsg')
                                <form action="{{ route('sub-store') }}" method="post">
                                    @csrf
                                    <input type="text" class="form-control" name="email" placeholder="Subscrib Newsletter (Enter Email Address)">
                                    <button type="submit"><i class="ti-email"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> --}}


  @endsection
