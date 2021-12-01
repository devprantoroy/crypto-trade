<?php

namespace App\Model\User;

use Illuminate\Database\Eloquent\Model;

class blog extends Model
{
	
    protected $fillable = [
        'title', 'description', 'image', 'file', 'cat_id',
    ];

   


    public function category()
    {
    	return $this->belongs(category::class, 'id');
    }
}
