<?php

/**
 * 
 */

class DashboardController extends Controller
{
	protected $tempat ;
	protected $lahan ;

	public function __construct()
	{
		$this->tempat = $this->model('Tempat');
		$this->lahan = $this->model('Lahan');
	}

	public function index()
	{
		$data['kelurahan'] = count($this->tempat->jumlah_kelurahan());
		$data['kecamatan'] = count($this->tempat->jumlah_kecamatan());
		$data['lahan'] = count($this->lahan->listing());
		$_SESSION['title'] = 'Dashboard';
		return $this->view('dashboard', $data);
	}
}
