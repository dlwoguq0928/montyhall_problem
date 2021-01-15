




if(try < 1000)
{
	correct_answer = irandom(2);  //1개의 문에 자동차를 넣음. 나머지는 염소
	user_answer = irandom(2);  //참가자가 문 한개를 선택함
	
	if(option == 1)
	{  //옵션 : 선택을 바꾼다면
		//!-- 참가자가 고르지 않은 문 중, 염소가 든 문을 사회자가 개방.
		while(except_answer == user_answer || except_answer == correct_answer)
		{
			except_answer = irandom(2);
		}
		//--!
		//!-- 참가자가 처음 골랐던 문과, 사회자가 개방한 문을 제외한, 나머지 문을 재선택
		var o_user_answer = user_answer;
		while(user_answer == o_user_answer || user_answer == except_answer)
		{
			user_answer = irandom(2);
		}
		//--!
	}
	
	//!-- 참가자 선택의 정답유무 기록
	if (user_answer == correct_answer)
	{
		result[try] = 1;
	}
	else
	{
		result[try] = 0;
	}
	
	try += 1;
}
else
{
	var final_probability = 0;
	for(i=0;i<1000;i++) final_probability += result[i];
	final_probability /= 1000;
	if(option == 0)
		show_message_async("1000번 시뮬레이션 결과, 선택을 안 바꿨을 때 자동차 선택한 비율 : "+string(final_probability*100)+"%");
	if(option == 1)
		show_message_async("1000번 시뮬레이션 결과, 선택을 바꿨을 때 자동차 선택한 비율 : "+string(final_probability*100)+"%");
	instance_destroy();
}