// JavaScript Document
function checkIdcard(idcard1){

var idcard=idcard1;
 
var Errors=new Array(
"��֤ͨ��!",
"���֤����λ������!",
"���֤����������ڳ�����Χ���зǷ��ַ�!",
"���֤����У�����!",
"���֤�����Ƿ�!"
);
var area={11:"����",12:"���",13:"�ӱ�",14:"ɽ��",15:"���ɹ�",21:"����",22:"����",23:"������",31:"�Ϻ�",32:"����",33:"�㽭",34:"����",35:"����",36:"����",37:"ɽ��",41:"����",42:"����",43:"����",44:"�㶫",45:"����",46:"����",50:"����",51:"�Ĵ�",52:"����",53:"����",54:"����",61:"����",62:"����",63:"�ຣ",64:"����",65:"�½�",71:"̨��",81:"���",82:"����",91:"����"} 
var idcard,Y,JYM;
var S,M;
var idcard_array = new Array();
idcard_array = idcard.split("");
/*��������*/
if(area[parseInt(idcard.substr(0,2))]==null) 
{
   alert(Errors[4]); 
   return false;
}
switch(idcard.length){
   case 15:
   if ( (parseInt(idcard.substr(6,2))+1900) % 4 == 0 || ((parseInt(idcard.substr(6,2))+1900) % 100 == 0 && (parseInt(idcard.substr(6,2))+1900) % 4 == 0 )){
    ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;//���Գ������ڵĺϷ���
   } else {
    ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;//���Գ������ڵĺϷ���
   }
   if(ereg.test(idcard)){
     //alert(Errors[0]+"15"); 
     return true;
    }
   else {
     alert(Errors[2]);
      return false;
     }
   break;
   case 18:
   //18λ��ݺ�����
   //�������ڵĺϷ��Լ�� 
   //��������:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))
   //ƽ������:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))
   if ( parseInt(idcard.substr(6,4)) % 4 == 0 || (parseInt(idcard.substr(6,4)) % 100 == 0 && parseInt(idcard.substr(6,4))%4 == 0 )){
   ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;//����������ڵĺϷ���������ʽ
   } else {
   ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;//ƽ��������ڵĺϷ���������ʽ
   }
   if(ereg.test(idcard)){//���Գ������ڵĺϷ���
    //����У��λ
    S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7
    + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9
    + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10
    + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5
    + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8
    + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4
    + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2
    + parseInt(idcard_array[7]) * 1 
    + parseInt(idcard_array[8]) * 6
    + parseInt(idcard_array[9]) * 3 ;
	
    Y = S % 11;
    M = "F";
    JYM = "10X98765432";
    M = JYM.substr(Y,1);/*�ж�У��λ*/
	//alert(S+"   "+idcard_array[17]+"   "+M);
    if(M.toUpperCase() == idcard_array[17].toUpperCase()){
     //alert(Errors[0]+"18"); 
     return true; /*���ID��У��λ*/
    }
    else {
     alert(Errors[3]); 
     return false;
    }
   }
   else {
    alert(Errors[2]); 
    return false;
   }
   break;
   default:
    alert(Errors[1]); 
    return false;
}
} 
 //�ж����ڸ�ʽ
 function IsDate(DateString , Dilimeter) 
{ 
	var y='';   //��
	var m='';   //��
	var day='';   //��
	var tempArray;
	
	if (DateString==null) return false; 
	if (Dilimeter=='' || Dilimeter==null) 
		Dilimeter ='-'; 
	tempArray = DateString.split(Dilimeter);
	
	y=tempArray[0]; 
	m=tempArray[1];
	day=tempArray[2];
	
	var date=new Date();   
	var year=date.getFullYear(); 
	if (y<year-100 || y>year) return false; //�ж������
	if(m>12 ||m<1)	return false;  //�ж��·�

	//�ж���
	 if (m.substring(0,1)=="0")
	 {
		m=m.substring(1);
	 }
	 if(day.substring(0,1)=="0")
	 {
		day=day.substring(1);
	 }
	if(m==1 || m==3 || m==5 || m==7 || m==8 || m==10 || m==12){   
	   if(day>31 || day<1) return false;
	}   
	else if(m==4 || m==6 || m==9 || m==11){   
		 if(day>30 || day<1) return false;
	}   
	else if(m==2){   
		var flag=true;   
		flag=y%4==0&&y%100!=0||y%400==0;   
		if(flag){ 
		
				 if(day>29 || day<1) return false; 
		}   
		else{  
		
				 if(day>28 || day<1) return false;
		}   
	}  
}




function isCardID(sId){

var aCity={11:"����",12:"���",13:"�ӱ�",14:"ɽ��",15:"���ɹ�",21:"����",22:"����",23:"������",31:"�Ϻ�",32:"����",33:"�㽭",34:"����",35:"����",36:"����",37:"ɽ��",41:"����",42:"����",43:"����",44:"�㶫",45:"����",46:"����",50:"����",51:"�Ĵ�",52:"����",53:"����",54:"����",61:"����",62:"����",63:"�ຣ",64:"����",65:"�½�",71:"̨��",81:"���",82:"����",91:"����"}   
var Errors=new Array(
"����������֤���Ȼ��ʽ����!",
"������֤��������!",
"���֤�ϵĳ������ڴ���!",
"����������֤��У��λ����!"
);


var iSum=0 ;
var info="" ;

if(!/^\d{17}(\d|x)$/i.test(sId)) 
{
     alert(Errors[0]); 
     return  false ;
}

sId=sId.replace(/x$/i,"a");
if(aCity[parseInt(sId.substr(0,2))]==null) 
{
    alert(Errors[1]); 
    return  false ; 
}

sBirthday=sId.substr(6,4)+"-"+Number(sId.substr(10,2))+"-"+Number(sId.substr(12,2));
var d=new Date(sBirthday.replace(/-/g,"/")) ;
if(sBirthday!=(d.getFullYear()+"-"+ (d.getMonth()+1) + "-" + d.getDate()))  
{
    alert(Errors[2]); 
    return  false ;
}

for(var i = 17;i>=0;i --) iSum += (Math.pow(2,i) % 11) * parseInt(sId.charAt(17 - i),11) ;
if(iSum%11!=1) 
{
    alert(Errors[3]); 
    return  false ;
}

//return true;//aCity[parseInt(sId.substr(0,2))]+","+sBirthday+","+(sId.substr(16,1)%2?"��":"Ů") 

} 