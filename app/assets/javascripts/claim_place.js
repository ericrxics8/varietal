$(document).ready(function() {

	$('#placeListContainer').isotope({
		itemSelector: '.isotopeStore',
		layoutMode: 'cellsByRow',
  	cellsByRow: {
	    columnWidth: 290,
	    rowHeight: 260
	  }
	});

});