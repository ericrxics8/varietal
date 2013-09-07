$(document).ready(function() {

	$('#placeListContainer').isotope({
		itemSelector: '.isotopeStore',
		layoutMode: 'cellsByRow',
  	cellsByRow: {
	    columnWidth: 290,
	    rowHeight: 260
	  },
	  getSortData:{
	  	name: function ( $elem ){
	  		return $elem.find('.placesName').text();
	  	}
	  }
	});

});