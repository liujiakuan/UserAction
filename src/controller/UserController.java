package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.SaveUserMessage;
import model.bean.UserBean;
import util.Utf8;

@WebServlet("/UserController")
public class UserController extends HttpServlet {//用户信息控制器
	
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		//PrintWriter out=response.getWriter();
		//这个代表当前用户的得分
		int number=0;
		//创建一个user对象，将下面的数据赋给这个user对象
		UserBean user=new UserBean();
		//下面总共有16个属性，数据库表总共有17个属性，多的一个属性是得分，通过下面的属性计算得分插入数据库
		//学号
		String studentId=request.getParameter("studentId");
		//用户名
		String name=Utf8.utf8(request.getParameter("name"));//处理中文，讲中文转换为UTF-8字符编码格式
		//String name=request.getParameter("name");
		//性别
		String sex=Utf8.utf8(request.getParameter("sex"));
		//学院
		String college=Utf8.utf8(request.getParameter("college"));
		//年级
		String grade=Utf8.utf8(request.getParameter("grade"));
		//是否单身
		String love=request.getParameter("love");
		//早上一般什么时间段起床
		String rise=request.getParameter("rise");
		//是否有午睡习惯
		String afternoonNap=request.getParameter("afternoonNap");
		//晚上一般什么时间段睡觉
		String sleep=request.getParameter("sleep");
		//上课玩手机或者睡觉的频率
		String playPhone=request.getParameter("playPhone");
		//每周一般逃几次课
		String playTruant=request.getParameter("playTruant");
		//每周一般去几次图书馆
		String library=request.getParameter("library");
		//对自己专业的感兴趣程度
		String majorTaste=request.getParameter("majorTaste");
		//每周一般花费多少时间用于课外学习
		String elseStudy=request.getParameter("elseStudy");
		//每周大概锻炼多少时间
		String exerciseTime=request.getParameter("exerciseTime");
		//每周大约花费多少时间打游戏
		String playGame=request.getParameter("playGame");
		
		user.setStudentId(studentId);
		user.setName(name);
		user.setSex(sex);
		user.setCollege(college);
		user.setGrade(grade);
		user.setLove(love);
		
		user.setRise(rise);
		user.setAfternoonNap(afternoonNap);
		user.setSleep(sleep);
		user.setPlayPhone(playPhone);
		user.setPlayTruant(playTruant);
		user.setLibrary(library);
		user.setMajorTaste(majorTaste);
		user.setElseStydy(elseStudy);
		user.setExercise(exerciseTime);
		user.setPlayGame(playGame);
		
		//***********************************这个jdk版本的switch不能判断字符串，换成ifelse试一试
//		switch (Integer.parseInt(rise)) {//早上一般什么时间段起床
//		case 1:
//			number+=10;
//			//out.println("早上起床时间早于7点");
//			break;
//		case 2:
//			number+=9;
//			break;
//		case 3:
//			number+=7;
//			break;
//		case 4:
//			number+=6;
//			break;
//		default:
//			break;
//		}
		if(rise.equals("afterNine")){////早上一般什么时间段起床
			number+=5;
		}else if(rise.equals("eightToNine")){
			number+=7;
		}else if(rise.equals("sevenToEight")){
			number+=9;
		}
		else{
			number+=10;
		}
		if(afternoonNap.equals("always")){//中午午睡习惯频率
			number+=10;
		}else if(afternoonNap.equals("often")){
			number+=9;
		}else if(afternoonNap.equals("occasionally")){
			number+=7;
		}
		else{
			number+=5;
		}
		if(sleep.equals("beforeTwentyTwo")){//晚上一般什么时间段睡觉
			number+=10;
		}else if(sleep.equals("twentyTwoTOTweentyThree")){
			number+=9;
		}else if(sleep.equals("tweentyThreeToTweentyFour")){
			number+=7;
		}
		else{
			number+=6;
		}
		if(playPhone.equals("hardly")){//上课玩手机或者睡觉的频率
			number+=10;
		}else if(playPhone.equals("occasionally")){
			number+=8;
		}else if(playPhone.equals("often")){
			number+=6;
		}
		else{
			number+=5;
		}
		if(playTruant.equals("zero")){//一般每周逃课几次
			number+=10;
		}else if(playTruant.equals("oneToThree")){
			number+=7;
		}else if(playTruant.equals("fourToSix")){
			number+=5;
		}
		else{
			number+=4;
		}
		if(library.equals("zero")){//一般每周去几次图书馆
			number+=6;
		}else if(library.equals("oneToThree")){
			number+=8;
		}else if(library.equals("fourToSix")){
			number+=9;
		}
		else{
			number+=10;
		}
		if(majorTaste.equals("veryInterested")){//对自己所在专业的兴趣度
			number+=10;
		}else if(majorTaste.equals("kindInterested")){
			number+=9;
		}else if(majorTaste.equals("notInterested")){
			number+=7;
		}
		else{
			number+=5;
		}
		if(Integer.parseInt(elseStudy)<=10){//一般每周花费多少时间用于课外学习
			number+=5;
		}else if(Integer.parseInt(elseStudy)<=20){
			number+=7;
		}else if(Integer.parseInt(elseStudy)<=30){
			number+=9;
		}
		else{
			number+=10;
		}
		
		
		if(Integer.parseInt(exerciseTime)<=5){//一般每周大概锻炼多少时间
			number+=7;
		}else if(Integer.parseInt(exerciseTime)<=10){
			number+=8;
		}else{
			number+=10;
		}
		
		
		if(Integer.parseInt(playGame)<=10){//一般每周大概花费多少时间打游戏
			number+=10;
		}else if(Integer.parseInt(playGame)<=20){
			number+=6;
		}else{
			number+=5;
		}
		
//		out.println("学号："+studentId+"<br>昵称："+name+"<br>性别："+sex+"<br>学院："+college+"<br>年级："+grade+"<br>是否单生："+love
//				+"<br>早上起床时间段："+rise+"<br>午睡习惯："+afternoonNap+"<br>晚上睡觉时间段:"+sleep
//				+"<br>上课玩手机或者睡觉频率："+playPhone+"<br>每周逃课次数"+playTruant+"<br>每周去图书馆次数："+library
//				+"<br>专业兴趣度："+majorTaste+"<br>课外学习时间："+elseStudy+"<br>每周锻炼时长："+exerciseTime
//				+"<br>每周打游戏时长："+playGame);
//		out.println("最后得分："+number);
		user.setScore(number);
		SaveUserMessage.addUser(user);
		
		//将用户名放在session中，用于获奖者的姓名
		HttpSession session=request.getSession();
		session.setAttribute("username",name);
		request.setAttribute("score",number);
		request.getRequestDispatcher("/jsp/user/score.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
