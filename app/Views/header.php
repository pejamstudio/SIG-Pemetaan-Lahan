<!DOCTYPE html>
<html lang="en" >
    <!-- begin::Head -->
    <head>
        <meta charset="utf-8" />
        
        <title>GIS Lahan | <?php echo $_SESSION['title']; ?></title>
        <meta name="description" content="Latest updates and statistic charts"> 
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">

        <!--begin::Web font -->
        <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
        <script>
          WebFont.load({
            google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
            active: function() {
                sessionStorage.fonts = true;
            }
          });
        </script>
        
        <link href="<?php echo $GLOBALS['base_url'] ?>assets/vendor/vendors/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />

		<link href="<?php echo $GLOBALS['base_url'] ?>assets/vendor/vendors/base/vendors.bundle.css" rel="stylesheet" type="text/css" />

		<link href="<?php echo $GLOBALS['base_url'] ?>assets/vendor/demo/default/base/style.bundle.css" rel="stylesheet" type="text/css" />

        <link rel="shortcut icon" href="<?php echo $GLOBALS['base_url'] ?>assets/img/1.png" /> 
    </head>
    <!-- end::Head -->

    
    <!-- begin::Body -->
    <body  class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--fixed m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default"  >
    
	
				<!-- BEGIN: Header -->
	<header id="m_header" class="m-grid__item    m-header"  m-minimize-offset="200" m-minimize-mobile-offset="200" >
		<div class="m-container m-container--fluid m-container--full-height">
			<div class="m-stack m-stack--ver m-stack--desktop">		
				<!-- BEGIN: Brand -->
				<div class="m-stack__item m-brand  m-brand--skin-dark ">
					<div class="m-stack m-stack--ver m-stack--general">
						<div class="m-stack__item m-stack__item--middle m-brand__logo">
							<a href="index.html" class="m-brand__logo-wrapper">
							<img alt="" src="<?php echo $GLOBALS['base_url'] ?>assets/img/2.png"/>
							</a>  
						</div>
						<div class="m-stack__item m-stack__item--middle m-brand__tools">
											
								<!-- BEGIN: Left Aside Minimize Toggle -->
								<a href="javascript:;" id="m_aside_left_minimize_toggle" class="m-brand__icon m-brand__toggler m-brand__toggler--left m--visible-desktop-inline-block  ">
									<span></span>
								</a>
								<!-- END -->
							
											<!-- BEGIN: Responsive Aside Left Menu Toggler -->
								<a href="javascript:;" id="m_aside_left_offcanvas_toggle" class="m-brand__icon m-brand__toggler m-brand__toggler--left m--visible-tablet-and-mobile-inline-block">
									<span></span>
								</a>
								<!-- END -->
							
										

											<!-- BEGIN: Responsive Header Menu Toggler -->
								<a id="m_aside_header_menu_mobile_toggle" href="javascript:;" class="m-brand__icon m-brand__toggler m--visible-tablet-and-mobile-inline-block">
									<span></span>
								</a>
								<!-- END -->
										

							<!-- BEGIN: Topbar Toggler -->
							<a id="m_aside_header_topbar_mobile_toggle" href="javascript:;" class="m-brand__icon m--visible-tablet-and-mobile-inline-block">
								<i class="flaticon-more"></i>
							</a>
							<!-- BEGIN: Topbar Toggler -->
						</div>
					</div>
				</div>		
				<div class="m-stack__item m-stack__item--fluid m-header-head" id="m_header_nav">							<!-- BEGIN: Horizontal Menu -->
					<button class="m-aside-header-menu-mobile-close  m-aside-header-menu-mobile-close--skin-dark " id="m_aside_header_menu_mobile_close_btn"><i class="la la-close"></i></button>

				<div id="m_header_menu" class="m-header-menu m-aside-header-menu-mobile m-aside-header-menu-mobile--offcanvas  m-header-menu--skin-light m-header-menu--submenu-skin-light m-aside-header-menu-mobile--skin-dark m-aside-header-menu-mobile--submenu-skin-dark "  >	
					<ul class="m-menu__nav  m-menu__nav--submenu-arrow ">
						<li class="m-menu__item  m-menu__item--submenu m-menu__item--rel">
							<h3>Pemetaan Lahan</h3>
						</li>
					</ul>
				</div>
					
				</div>
			</div>
		</div>
	</header>

	<div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">
			
											<!-- BEGIN: Left Aside -->
	<button class="m-aside-left-close  m-aside-left-close--skin-dark " id="m_aside_left_close_btn"><i class="la la-close"></i></button>

	<div id="m_aside_left" class="m-grid__item	m-aside-left  m-aside-left--skin-dark ">	
		<!-- BEGIN: Aside Menu -->
		<div id="m_ver_menu" class="m-aside-menu  m-aside-menu--skin-dark m-aside-menu--submenu-skin-dark " m-menu-vertical="1" m-menu-scrollable="1" m-menu-dropdown-timeout="500" style="position: relative;">		
			<ul class="m-menu__nav  m-menu__nav--dropdown-submenu-arrow ">
				<li class="m-menu__item  m-menu__item<?php if($_SESSION['title'] == 'Dashboard') echo '--active' ?>
				" aria-haspopup="true" >
					<a  href="<?php echo $GLOBALS['base_url'] ?>" class="m-menu__link " >
						<i class="m-menu__link-icon flaticon-line-graph"></i>
						<span class="m-menu__link-title">
							<span class="m-menu__link-wrap">      
								<span class="m-menu__link-text">Dashboard</span>      
								<!-- <span class="m-menu__link-badge">
								<span class="m-badge m-badge--danger">2</span> -->  
							</span>
						</span>
					</a>
				</li>
	            <li class="m-menu__item  m-menu__item<?php if($_SESSION['title'] == 'Lahan') echo '--active' ?>
	            " aria-haspopup="true" >
					<a href="<?php echo $GLOBALS['base_url'].'lahan' ?>" class="m-menu__link " >
						<i class="m-menu__link-icon flaticon-layers"></i>
						<span class="m-menu__link-title">
							<span class="m-menu__link-wrap">      
								<span class="m-menu__link-text">Data Lahan</span>
							</span>
						</span>
					</a>
	            </li>
	            <li class="m-menu__item  m-menu__item<?php if($_SESSION['title'] == 'Fasilitas') echo '--active' ?>
	            " aria-haspopup="true" >
					<a href="<?php echo $GLOBALS['base_url'].'fasilitas' ?>" class="m-menu__link " >
						<i class="m-menu__link-icon flaticon-interface-1"></i>
						<span class="m-menu__link-title">
							<span class="m-menu__link-wrap">      
								<span class="m-menu__link-text">Fasilitas</span>
							</span>
						</span>
					</a>
	            </li>
	            <li class="m-menu__item  m-menu__item<?php if($_SESSION['title'] == 'Klasifikasi Lahan') echo '--active' ?>
	            " aria-haspopup="true" >
					<a href="<?php echo $GLOBALS['base_url'].'klasifikasi' ?>" class="m-menu__link " >
						<i class="m-menu__link-icon flaticon-folder-2"></i>
						<span class="m-menu__link-title">
							<span class="m-menu__link-wrap">      
								<span class="m-menu__link-text">Klasifikasi Lahan</span>
							</span>
						</span>
					</a>
	            </li>
	            <li class="m-menu__item  m-menu__item<?php if($_SESSION['title'] == 'Pemetaan Lahan') echo '--active' ?>
	            " aria-haspopup="true" >
					<a href="<?php echo $GLOBALS['base_url'].'pemetaan' ?>" class="m-menu__link " >
						<i class="m-menu__link-icon flaticon-route"></i>
						<span class="m-menu__link-title">
							<span class="m-menu__link-wrap">      
								<span class="m-menu__link-text">Pemetaan Lahan</span>
							</span>
						</span>
					</a>
	            </li>
	        </ul>
	    </div>
	</div>

	<div class="m-grid__item m-grid__item--fluid m-wrapper">  	