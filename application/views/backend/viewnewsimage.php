<div class="row">
  
	<div class="col-lg-12">
		<section class="panel">
			<header class="panel-heading">
                News Image Details<a class="btn btn-primary pull-right" href="<?php echo site_url("site/createnewsimage?id=").$this->input->get('id'); ?>"><i class="icon-plus"></i>Create </a><a class="btn btn-primary pull-right savenewsorder">Save Order</a>
     
            </header>
           
<ul id="sortable">
 <?php
foreach($table as $row) { 
    ?>
  <li class="ui-state-default" data-order="<?php echo $row->order;?>" data-id="<?php echo $row->id;?>">
                          
                          <div class="row">
                              <div class="col-md-3"><img src="<?php echo base_url('uploads')."/".$row->image; ?>"  class="img-thumbnail" width="120px" height="auto"></div>
                              <div class="col-md-7">
                              <div><h4 class="text-capitalize"><?php echo $row->name; ?></h4></div>
<!--                              <div><span class="badge"><?php if($row->type==1){ echo "Horizontal "; } else { echo "Verticle "; } ?></span></div>-->
                              </div>
                              
                              <div class="col-md-2"><a href="<?php echo site_url('site/editnewsimage?id=').$row->news.'&newsimageid='.$row->id;?>" class="btn btn-primary btn-xs">
								<i class="icon-pencil"></i>
							</a>
							<a href="<?php echo site_url('site/deletenewsimage?id=').$row->news.'&newsimageid='.$row->id; ?>" class="btn btn-danger btn-xs">
								<i class="icon-trash "></i>
							</a></div>
                          </div>
                          
                          
                          
    
                           
                            
 </li>
<?php
}
?>
</ul>
			
		</section>
	</div>
</div>
<script>
    $(document).ready(function(){
        $( "#sortable" ).sortable({
  stop: function( event, ui ) {
    $("#sortable>li").each(function( index ) {
  $(this).attr("data-order",index+1);
});
  }
});
        $( "#sortable" ).disableSelection();
       
        
    }); 
    
    $(".savenewsorder").click(function () {
        $("#sortable>li").each(function( index ) {
            
        $.getJSON(
            "<?php echo base_url(); ?>index.php/site/savenewsimageorder?order="+$(this).attr("data-order")+"&id="+$(this).attr("data-id")+"", {
                
            },
            function (data) {
                //  alert(data);
                console.log(data);
                nodata=data;
                // $("#store").html(data);
//                changestoretable(data);

            }

        );
        }); });
  </script>
