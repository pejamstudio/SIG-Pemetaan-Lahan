<?php include 'header.php'; ?>
<!-- BEGIN: Subheader -->
<div class="m-content">
	<div class="m-portlet m-portlet--mobile">		
		<div class="m-portlet__head">
			<div class="m-portlet__head-caption">
				<div class="m-portlet__head-title">
					<h3 class="m-portlet__head-text">
						Data Klasifikasi Lahan
					</h3>
				</div>
			</div>
		</div>	
		<div class="m-portlet__body">
			<!--begin: Datatable -->
			<table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
				<thead>
					<tr>
						<th>No</th>
						<th>Lokasi</th>
						<th>Luas Tanah</th>
						<th>Lahan Terpakai</th>
						<th>Lahan Tersisa</th>
						<th>Tanggal Dibuat</th>
						<th>Tanggal Diperbarui</th>
						<!-- <th>Actions</th> -->
					</tr>
				</thead>

				<tbody>
					<?php foreach ($data['klasifikasi'] as $i => $data): ?>
						<tr>
							<td><?php echo $i+1; ?></td>
							<td><?php echo $data->nama_lokasi; ?></td>
							<td><?php echo $data->luas_tanah; ?> m<sup>2</sup></td>
							<td><?php echo $data->lahan_terpakai; ?> m<sup>2</sup></td>
							<td><?php echo $data->lahan_tersisa; ?> m<sup>2</sup></td>
							<td><?php echo $data->created_at; ?></td>
							<td><?php echo $data->updated_at; ?></td>
							<!-- <td nowrap></td> -->
						</tr>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
	</div>
</div> 

<?php include 'footer.php'; ?>
