<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class Tempat extends Eloquent{

	public function listing()
	{
		$query = DB::table('tempat')
            	->select('*')
            	->where('role', 2)
            	->orderBy('id','DESC')
            	->get();
		return $query;
	}

	public function jumlah_kecamatan()
	{
		$query = DB::table('tempat')
            	->select('*')
            	->where('role', 1)
            	->orderBy('id','DESC')
            	->get();
		return $query;
	}

	public function jumlah_kelurahan($value='')
	{
		$query = DB::table('tempat')
            	->select('*')
            	->where('role', 2)
            	->orderBy('id','DESC')
            	->get();
		return $query;
	}
} 