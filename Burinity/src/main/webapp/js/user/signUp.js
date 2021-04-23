/**
 * 
 */
function createFrom(obj){
	if(obj.userid.value ==""){
		alert("아이디를 반드시 입력하세요.");
		obj.userid.focus();
		return false;
	}
	
	if(obj.userpass.value ==""){
		alert("비밀번호를 반드시 입력하세요.");
		obj.userpass.focus();
		return false;
	}
	
	if(obj.userpass.value.length < 4){
		alert("비밀번호는 4글자 이상으로 만들어주세요.");
		obj.userpass.focus();
		return false;
	}
	
	if(obj.userpasscheck.value ==""){
		alert("비밀번호 확인란에 입력해주세요.");
		obj.userpasscheck.focus();
		return false;
	}
	
	if(obj.userpass.value != obj.userpasscheck.value){
		alert("입력하신 비밀번호가 같지 않습니다.");
		obj.userpasscheck.focus();
		return false;
	}
	
	if(obj.name.value ==""){
		alert("이름을 반드시 입력하세요.");
		obj.name.focus();
		return false;
	}
	
	if(obj.email.value ==""){
		alert("이메일을 입력하세요.");
		obj.email.focus();
		return false;
	}

	var check = false;
	for(var i=0;i<obj.mailing.length;i++){
		if(obj.mailing[i].checked==true) check=true;
	}

	if(obj.mailing.value ==""){
		alert("메일수신 여부를 체크해주세요.");
		obj.mailing.focus();
		return false;
	}
	if(obj.gender.value ==""){
		alert("성별을 선택하세요.");
		obj.gender.focus();
		return false;
	}
	check = false;
	var str="";
	for(var i=0; i<obj.interest.length; i++){
		if(obj.interest[i].checked==true){
			str+=obj.interest[i].value + ",";
		}	
	}	
}
function idCheck(obj, root){
	alert(obj.userid.value);
	
	if(obj.userid.value ==""){
		alert("아이디를 반드시 입력하세요.");
		obj.userid.focus();
		return false;
	}else{
		let url = root + "/idCheck?userid=" + obj.userid.value;
		window.open(url, "", "width=400, height=200");
	}
}
