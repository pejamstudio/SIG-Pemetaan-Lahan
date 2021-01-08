<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class Klasifikasi extends Eloquent{

	public function listing()
	{
		$query = DB::table('klasifikasi')
				->join('lahan', 'klasifikasi.id_lokasi', '=', 'lahan.id','LEFT')
            	->select('klasifikasi.*', 'lahan.nama_lokasi')
            	->orderBy('klasifikasi.id','asc')
            	->get();
		return $query;
	}
} 