<?php

/**
 * 
 */

class KlasifikasiController extends Controller
{
	protected $klasifikasi ;

	public function __construct()
	{
		$this->klasifikasi = $this->model('Klasifikasi');
	}

	public function index()
	{
		$data['klasifikasi'] = $this->klasifikasi->listing();
		$_SESSION['title'] = 'Klasifikasi Lahan';
		return $this->view('klasifikasi', $data);
	}
}