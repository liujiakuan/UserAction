$(document).ready(function(){
        $("#questionForm").submit(function(e) {

            if ($.comfim.checkName($('#nickName').val()) == true) { //验证用户名是否合法
                $('#errorName').css("display","none");
            }
            else {
                $('#errorName').css("display","block");
                if($.comfim.checkAllOption()==true){
                    $('#errorAllOption').css("display","none");
                }
                else{
                    $('#errorAllOption').css("display","block");
                    e.preventDefault();
                    return false;
                }
                e.preventDefault();//阻止表单提交
                return false;
            }

            //alert($.comfim.checkAllOption());
            if($.comfim.checkAllOption()==true){
                $('#errorAllOption').css("display","none");
            }
            else{
                $('#errorAllOption').css("display","block");
                e.preventDefault();
                return false;
            }

        });
});
$.comfim={
    chooseAll:true,
    checkName:function(name){//验证用户名
        if(name.length<12&&name.length!=0){
            return true;
        }
        else{
            return false;
        }
    },
    checkAllOption:function(){
    	
    	var studentId=$('input:radio[name="studentId"]:checked').val();
        var sex=$('input:radio[name="sex"]:checked').val();
        var college=$('input:radio[name="college"]:checked').val();
        var grade=$('input:radio[name="grade"]:checked').val();
        var love=$('input:radio[name="love"]:checked').val();
        var rise=$('input:radio[name="rise"]:checked').val();
        var afternoon_nap=$('input:radio[name="afternoon_nap"]:checked').val();
        var sleep=$('input:radio[name="sleep"]:checked').val();
        var play_phone=$('input:radio[name="play_phone"]:checked').val();
        var play_truant=$('input:radio[name="play_truant"]:checked').val();
        var library=$('input:radio[name="library"]:checked').val();
        var after_class_study=$('input:radio[name="after_class_study"]:checked').val();
        var exercise=$('input:radio[name="exercise"]:checked').val();
        var major_taste=$('input:radio[name="major_taste"]:checked').val();
        var play_games=$('input:radio[name="play_games"]:checked').val();
        var rank=$('input:radio[name="rank"]:checked').val();

        var questions=new Array();
        questions[0]=sex;
        questions[1]=college;
        questions[2]=grade;
        questions[3]=love;
        questions[4]=rise;
        questions[5]=afternoon_nap;
        questions[6]=sleep;
        questions[7]=play_phone;
        questions[8]=play_truant;
        questions[9]=library;
        questions[10]=after_class_study;
        questions[11]=exercise;
        questions[12]=major_taste;
        questions[13]=play_games;
        questions[14]=rank;
        questions[15]=studentId;

        for(key in questions){
            if(questions[key]==undefined){
                //alert(questions[key]);
                this.chooseAll=false;
                if(this.chooseAll==false){
                    return false;
                }
            }
            return true;
        }
    }
};