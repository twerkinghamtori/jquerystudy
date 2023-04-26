/**
 * 
 */
function ajax(url,params,callback,method) {
	const xhttp = new XMLHttpRequest()
	method = method.toUpperCase()
	if(method !="POST") {
		method="GET"
	}
	if(method =="GET") {
		url = url + "?" + params
	}
	xhttp.open(method,url,true) //true : 기본값. 비동기방식으로 전송할거라는 의미. 동기화방식 하려면 false로 바꾸면 됨.
	//POST방식 대비하여 header 설정
	xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded;charset=UTF-8")
	xhttp.send(method=='POST'?params:null)
	xhttp.onreadystatechange=callback
}