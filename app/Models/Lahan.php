<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class Lahan extends Eloquent{

	public function listing()
	{
		$query = DB::table('lahan')
				->join('tempat as kecamatan', 'lahan.id_kecamatan', '=', 'kecamatan.id','LEFT')
            	->join('tempat as kelurahan', 'lahan.id_kelurahan', '=', 'kelurahan.id','LEFT')
            	->select('lahan.*', 'kecamatan.nama as nama_kecamatan', 'kelurahan.nama as nama_kelurahan')
            	->orderBy('lahan.id','DESC')
            	->get();
		return $query;
	}

	public function pemetaan()
	{
		$query = DB::table('lahan')
				->join('tempat as kecamatan', 'lahan.id_kecamatan', '=', 'kecamatan.id','LEFT')
            	->join('tempat as kelurahan', 'lahan.id_kelurahan', '=', 'kelurahan.id','LEFT')
            	->join('klasifikasi', 'klasifikasi.id_lokasi', '=', 'lahan.id','LEFT')
            	->select('lahan.*', 'kecamatan.nama as nama_kecamatan', 'kelurahan.nama as nama_kelurahan', 'klasifikasi.*')
            	->orderBy('lahan.latitude','ASC')
            	->get();
		return $query;
	}
} 