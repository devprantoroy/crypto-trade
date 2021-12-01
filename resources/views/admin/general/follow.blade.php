@extends('admin.layouts.app')
@section('main-content')
<div class="container">
   <div class="content-wrapper">

      <section class="content">
        @include('includes.messege')
        <div class="row">
            @if ( $cryptoList['status']['error_code'] ==0)
                @foreach ($cryptoList['data'] as $key => $data)
                    <div class="col-md-2">
                        <div class="card">
                            <div class="card-body text-center">
                                <h4>{{$data['name']}} <small>({{$data['symbol']}})</small></h4>
                            </div>
                        </div>
                    </div>
                @endforeach
            @else
            <tr>Not Data fund</tr>
            @endif
            {{-- <div class="col col-xs-12">
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
            </div> --}}
        </div>




   </div>
</div>
@endsection
