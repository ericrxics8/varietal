$(document).ready(function() {

	$('#placeListContainer').isotope({
		itemSelector: '.isotopeStore',
		layoutMode: 'cellsByRow',
		cellsByRow: {
			columnWidth: 290,
			rowHeight: 260
		}
	});

  //Get all product score
  var scaaScoreLength = $(".radarValue li").length;
  var scaaArray = new Array(scaaScoreLength);
  scaaArray = getSCAAScore(scaaScoreLength);

  var option = {
    //Boolean - If we show the scale above the chart data
    scaleOverlay : true, 
    //Boolean - If we want to override with a hard coded scale 
    scaleOverride : true,
    //** Required if scaleOverride is true **
    //Number - The number of steps in a hard coded scale
    scaleSteps : 5,
    //Number - The value jump in the hard coded scale
    scaleStepWidth : 2,
    //Number - The centre starting value
    scaleStartValue : 0,
    //Boolean - Whether to show labels on the scale 
    scaleShowLabels : true,
    scaleFontSize : 14,
    //Function - Fires when the animation is complete
    onAnimationComplete : null
  }

  var times = scaaArray.length / 7;
  var data = {};

  for (var i = 0; i<times; i++){

    var partScaaArray = new Array(7);

    $.each(scaaArray,function(j){

      var arrayStart = (i+1)*7-7;

      if(times == j){
        return false;
      } else{
        for(var k=0; k<7; k++){
          partScaaArray[k] = scaaArray[arrayStart+k];
        }
      }

    });

    data = {
      labels : ["Fragrance","Flavor","Aftertaste","Acidity","Body","Balance","Overall"],
      datasets : [
        {
          fillColor : "rgba(128,64,0,0.7)",    //填充顏色
          strokeColor : "rgba(220,220,220,1)", //邊框顏色
          pointColor : "rgba(255,220,220,1)",  //節點顏色
          pointStrokeColor : "#111",           //節點邊框顏色
          data : partScaaArray
        }
      ]
    }

    new Chart($("#coffeeRadarChart_"+i).get(0).getContext("2d")).Radar(data,option);

  }

//    new Chart(ctx1).Radar(data,option);
//    new Chart(ctx2).Radar(data,option);


});

function getSCAAScore(scaaScoreLength) {
    var scaaScoreLength = scaaScoreLength;
    var scaaArray = new Array(scaaScoreLength);
    $(scaaArray).each(function (i) { scaaArray[i] = 0; });

    $(".radarValue li").each(function(i){
      scaaArray[i] = parseFloat($.trim($(this).text()));
    });

    return scaaArray
  }