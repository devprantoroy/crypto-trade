<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Model\User\menu;
use App\Model\User\slider;
use App\Model\User\work;
use App\Model\User\service;
use App\Model\User\company;
use App\Model\User\testimonial;
use App\Model\User\feature;
use App\Model\User\partner;
use App\Model\User\blog;
use App\Model\User\category;
use App\Model\User\social;
use App\Model\User\counter;
use App\Model\User\general;
use App\Model\User\subscriber;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $menus = menu::with('sub_menu')->get();
        $sliders = slider::all();
        $works = work::all();
        $services = service::all();
        $companies = company::take(4)->get();;
        $testimonials = testimonial::all();
        $features = feature::all()->take(4);
        $partners = partner::all();
        $blogs = blog::take(3)->get();
        $socials = social::all();
        $counters = counter::all();
        $subscribers = subscriber::all();
        $general = general::first();
        $categorys = category::all();


        // for crypto API 1
        $url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest';
        $parameters = [
        'start' => '1',
        'limit' => '10',
        'convert' => 'USD'
        ];
        $headers = [
        'Accepts: application/json',
        'X-CMC_PRO_API_KEY: 04b588e9-4554-4ef0-9509-a1a42de9583d'
        ];
        $qs = http_build_query($parameters);
        $request = "{$url}?{$qs}";
        $curl = curl_init();
        curl_setopt_array($curl, array(
        CURLOPT_URL => $request,
        CURLOPT_HTTPHEADER => $headers,
        CURLOPT_RETURNTRANSFER => 1
        ));
        $response = curl_exec($curl);
        curl_close($curl);
        $cryptoList = json_decode($response,true);


        //for crypto API 2
        // $cryptoList = file_get_contents('https://cryptocurrencyliveprices.com/api/');
        // return json_decode($cryptoList,true);

        // return  $cryptoList['data'];


        return view('user.index', compact('menus','sliders','works','services','companies','testimonials','features','partners','blogs','socials','counters','general','subscribers', 'categorys','cryptoList'));
    }

}
