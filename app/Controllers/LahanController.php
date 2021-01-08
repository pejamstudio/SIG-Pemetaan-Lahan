<?php

/**
 * 
 */

class LahanController extends Controller
{
	protected $lahan ;

	public function __construct()
	{
		$this->lahan = $this->model('Lahan');
	}

	public function index()
	{
		$data['lahan'] = $this->lahan->listing();
		$_SESSION['title'] = 'Lahan';
		return $this->view('lahan', $data);
	}
}