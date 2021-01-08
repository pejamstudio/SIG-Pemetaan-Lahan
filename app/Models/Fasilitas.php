<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class Fasilitas extends Eloquent{

	public function listing()
	{
		$query = DB::table('fasilitas')
            	->join('tempat as kelurahan', 'fasilitas.id_kelurahan', '=', 'kelurahan.id','LEFT')
            	->select('fasilitas.*', 'kelurahan.nama as nama_kelurahan')
            	->orderBy('fasilitas.id','DESC')
            	->get();
		return $query;
	}
} 