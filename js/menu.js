// Menus
var hidetimer;
function OnOverMain(obj, num){
	AllOut();
	clearTimeout(hidetimer);
	obj.childNodes[0].style.background = "#67B3D7";
	obj.childNodes[0].style.color = "#ffffff";	
	if(num!=0)document.getElementById('td'+num).style.visibility = "visible";
}
function OnOutMain(obj){
	obj.childNodes[0].style.background = "";
	obj.childNodes[0].style.color = "#ffffff";	
}
function AllOut(){
	for(var cy=1; document.getElementById('td'+cy); cy++)	{
		document.getElementById('td'+cy).style.visibility = 'hidden';	
	}
	for(var cy=1; document.getElementById('in'+cy); cy++)	{
		document.getElementById('in'+cy).style.visibility = 'hidden';	
	}	
}
function Hide(){
	hidetimer = setTimeout(function()	{
		AllOut();
	}, 100);
}
function Show(num){
	for(var cy=1; document.getElementById('in'+cy); cy++)	{
		document.getElementById('in'+cy).style.visibility = 'hidden';	
	}
	document.getElementById('in'+num).style.visibility = "visible";
}