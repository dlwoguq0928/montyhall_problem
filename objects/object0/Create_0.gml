




user_answer = 0;  //유저의 선택 0~2
correct_answer = 0;  //실제 차가 위치한 문 0~2
except_answer = 0;  //사회자가 오픈한 염소가 든 문. 즉, 제외 답안
option = 0;  //선택 변경의사. 변경안함 0, 변경함 1
try = 0;  //현재 시도 횟수
for(i=0;i<1000;i++) result[i] = 0;  //염소 0, 차 1


randomize();