<?php

/**
 * 
 */

class FasilitasController extends Controller
{
	protected $fasilitas ;

	public function __construct()
	{
		$this->fasilitas = $this->model('Fasilitas');
	}

	public function index()
	{
		$data['fasilitas'] = $this->fasilitas->listing();
		$_SESSION['title'] = 'Fasilitas';
		return $this->view('fasilitas', $data);
	}
}