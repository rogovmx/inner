



function runSerial(id) {

                new Effect.Appear(id, { duration:1.0, from:0.0, to:1.0,
			queue: {position: 'end', scope: 'myqueue'} }),
                    new Effect.Fade(id, { duration:3.0, from:1.0, to:1.0,
			queue: {position: 'end', scope: 'myqueue'} }),
		new Effect.Fade(id, { duration:1.0, from:1.0, to:0.0,
			queue: {position: 'end', scope: 'myqueue'}  })

	;
}




window.onload=function(){
$('sel2').show();

$('sel1').show();
return

}

function redir(list)
{
    var sel = list.options[list.selectedIndex].value
    if (sel != "None")
    {
        location.href = sel
    }

}


function zp(zp){
var zp_el=$(zp);
Element.setStyle(zp_el, 'display:none')
}
function zp2(zp){
var zp_el=$(zp);
Element.setStyle(zp_el, 'visibility:hidden')
}
function zp3(zp){
var zp_el=$(zp);
Element.setStyle(zp_el, 'display:none')
Element.setStyle(zp_el, 'background-color:transparent')
}


function filtr(brend,id)
{
   if (brend== 1)
   location="/kt3/tg_n/"+id
   else
   location="/kt3/tg_n/"+id+"?filtr="+brend;
}
function filtr_v(brend,id)
{
   if (brend== 1)
   location="/kt3/tg_v/"+id
   else
   location="/kt3/tg_v/"+id+"?filtr="+brend;
}
function filtr1(brend,id,order)
{
    if (brend== '1')
    location="/kt3/tg_n/"+id+"?order="+order;
    else
    location="/kt3/tg_n/"+id+"?filtr="+brend+"&order="+order;

}
function filtr1_v(brend,id,order)
{
    if (brend== '1')
    location="/kt3/tg_v/"+id+"?order="+order;
    else
    location="/kt3/tg_v/"+id+"?filtr="+brend+"&order="+order;

}
function filtr1_beauty(zp){
var zp_el=$(zp);
Element.setStyle(zp_el, 'visibility: visible');
}
function vis(zp){
var zp_el=$(zp);
Element.setStyle(zp_el, 'display: block');
Element.setStyle(zp_el, 'background-color:#FFFFCC;')
}

function show_id(zp){
//var zp_el=$(zp);
$(zp).show();
//new Effect.Appear(zp_el, { duration:0.1, from:0.0, to:1.0})
//Element.setStyle(zp_el, 'display: block');
}

function show_hide_id(zp,zp2){
var zp_el=$(zp);
var zp_el2=$(zp2);
Element.setStyle(zp_el, 'display: block');
Element.setStyle(zp_el2, 'display: none');
}
function show_show_hide_id(zp3,zp,zp2){
var zp_el=$(zp);
var zp_el2=$(zp2);
var zp_el3=$(zp3);
Element.setStyle(zp_el3, 'display: block');
Element.setStyle(zp_el, 'display: block');
Element.setStyle(zp_el2, 'display: none');
}


function hide_show_id(zp,zp2){
var zp_el=$(zp2);
var zp_el2=$(zp);
Element.setStyle(zp_el, 'display: block');
Element.setStyle(zp_el2, 'display: none');
}

function hide_hide_show_id(zp3,zp,zp2){
var zp_el=$(zp2);
var zp_el2=$(zp);
var zp_el3=$(zp3);
Element.setStyle(zp_el, 'display: block');
Element.setStyle(zp_el2, 'display: none');
Element.setStyle(zp_el3, 'display: none');
}

function back_size(zp){
var zp_el=$(zp);
Element.setStyle(zp_el, 'width: 50px');
Element.setStyle(zp_el, 'height: 50px');
}

function perp(perp)
{

    location="/perpage/?per_page="+perp;
}




