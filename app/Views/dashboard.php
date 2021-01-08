<?php include 'header.php'; ?>
<!-- BEGIN: Subheader -->
<div class="m-content">
	<div class="m-portlet m-portlet--mobile">		
		<div class="m-portlet__head">
			<div class="m-portlet__head-caption">
				<div class="m-portlet__head-title">
					<h3 class="m-portlet__head-text">
						Dashboard
					</h3>
				</div>
			</div>
		</div>	
		<div class="m-portlet__body">
			<div class="col-xl-8">
				<!--begin:: Widgets/Profit Share-->
				<div class="m-widget14">
					<div class="m-widget14__header">
						<h3 class="m-widget14__title">
							INFORMASI TERBARU            
						</h3>
						<span class="m-widget14__desc">
							Data terbaru dari GIS Lahan
						</span>
					</div>
					<div class="row  align-items-center">
						<div class="col">
							<div class="m-widget14__legends">
								<div class="m-widget14__legend">
									<span class="m-widget14__legend-bullet m--bg-accent"></span>
									<span class="m-widget14__legend-text"><?= $data['lahan'] ?> Lokasi Tanah Kosong</span>
								</div>
								<div class="m-widget14__legend">
									<span class="m-widget14__legend-bullet m--bg-warning"></span>
									<span class="m-widget14__legend-text"><?= $data['kelurahan'] ?> Kelurahan</span>
								</div>
								<div class="m-widget14__legend">
									<span class="m-widget14__legend-bullet m--bg-brand"></span>
									<span class="m-widget14__legend-text"><?= $data['kecamatan'] ?> Kecamatan</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--end:: Widgets/Profit Share-->			</div>
			</div>
		</div>
	</div>
</div>  

<?php include 'footer.php'; ?>