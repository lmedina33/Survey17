
$('.solo-una-opcion>td>.checkbox>label>input').change(function() {
	console.log('hola');
    $('.solo-una-opcion>td>.checkbox>label>input').prop("checked", false);
    $(this).prop("checked", true);
});

var stringPrioridad = "";
var stringPrioridadShow = "";
$('.multiple-con-prioridad>td>.checkbox>label>input').change(function() {
	if($(this).is(':checked')){
		stringPrioridad=stringPrioridad+$(this).attr('data-check');

		if(stringPrioridadShow==""){
			stringPrioridadShow=stringPrioridadShow+$(this).attr('data-check');
		}
		else{
			stringPrioridadShow=stringPrioridadShow+'/'+$(this).attr('data-check');
		}
		
		$('.ordenprioridad').val(stringPrioridadShow);
		
	}
	else{
		stringPrioridad="";
		stringPrioridadShow="";
		$('.ordenprioridad').val('');
		$('.multiple-con-prioridad>td>.checkbox>label>input').prop("checked", false);
	}
	
    
});