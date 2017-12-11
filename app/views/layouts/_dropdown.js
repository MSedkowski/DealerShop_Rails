$( document ).ready(function() {
    $(".dropdown-button").dropdown({
    	inDuration: 300,
        outDuration: 0,
        constrainWidth: false,
    	belowOrigin: true,
    	hover: true,
    	stopPropagation: false
    });
      $('.dropdown-button').dropdown('close');
});