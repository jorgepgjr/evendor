<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 50%; margin: 0; padding: 0 }
      #map_canvas { height: 100% }
    </style>
    <script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js">
    </script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript">
      function initialize() {
	  var markers = [];
	  var jorgeMarker;
	  var capraMarker;
	  var capraMarker1;
	  var capraMarker2;
	  
        var mapOptions = {
          center: new google.maps.LatLng(-23.499477,-46.8502321),
          zoom: 15,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);
				
		$("#jorge").change(function() {
			if(this.checked) {
				jorgeMarker = new google.maps.Marker({
				position: new google.maps.LatLng(-23.499477,-46.8502321),
				map: map,
				title: 'Jorge'
				});
				
			} else{
				jorgeMarker.setMap(null);
			}
		});
		
		$("#capra").change(function() {
			if(this.checked) {
				capraMarker = new google.maps.Marker({
				position: new google.maps.LatLng(-23.499477,-46.8512321),
				map: map,
				title: 'Capra'
				});
				
				capraMarker1 = new google.maps.Marker({
				position: new google.maps.LatLng(-23.499477,-46.8522321),
				map: map,
				title: 'Capra'
				});
				
				capraMarker2 = new google.maps.Marker({
				position: new google.maps.LatLng(-23.499477,-46.8532321),
				map: map,
				title: 'Capra'
				});
				
			} else{
				capraMarker.setMap(null);
				capraMarker1.setMap(null);
				capraMarker2.setMap(null);
			}
		});
     }
    </script>
  </head>
  <body onload="initialize()">
    <div id="map_canvas" style="width:100%; height:100%"></div>
	<div id="lista_vendedores" style="width:100%; height:100%">
		<input type="checkbox" id="jorge" name="jorge" value="jorge" onc>Jorge<br>
		<input type="checkbox" id="capra" name="capra" value="capra">Capra 
	</div>
  </body>
</html>