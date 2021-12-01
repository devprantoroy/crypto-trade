<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\User\blog;
use App\Model\User\general;
use App\Model\User\social;
use App\Model\User\menu;
use App\Model\User\category;
use App\Model\User\sub_menu;
use App\Model\User\service;
use App\Model\User\feature;


class SearchController extends Controller
{
    public function search(Request $request)
	{
		
		$search = $request->input('title');
		$blogs = blog::where('title', 'LIKE', '%' . $search . '%')->paginate(36);
		
		$general = general::first();
        $socials = social::all();
        $menus = menu::all();
        $services = service::all();
        $features = feature::all();
        

        return view('user.single_blog',compact('general','socials','menus','services','features','blogs','search'));

	}

	public function adSearch(Request $request)
	{
		$search = $request->input('title');
		$blogs = blog::where('cat_id', $request->cat_id)->where('title', 'LIKE', '%' . $search . '%')->paginate(36);

		$general = general::first();
        $socials = social::all();
        $menus = menu::all();
        $services = service::all();
        $features = feature::all();

        return view('user.single_blog',compact('general','socials','menus','services','features','blogs','search'));

	}
}
