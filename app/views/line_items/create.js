$("#notice").hide();
if ($('#cart tr').length == 1) { $('#cart').show('blind', 1000); }
$('#cart').html("<%=j render @cart %>");
$('#current_item').css({'background-color':'#88ff88'}). animate({'background-color':'#114411'}, 1000);
