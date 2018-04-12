/********************************************/
/*         qlearning.c                      */
/*   강화학습(Q 학습) 예제 프로그램         */
/*   미로 탐색을 학습합니다.                */
/*   사용 방법                              */
/*    C:\Users\deeplearning\ch2>qlearning   */
/********************************************/

/*Visual Studio와의 호환성 확보 */
#define _CRT_SECURE_NO_WARNINGS

/* 헤더 파일 포함*/
#include <stdio.h>
#include <stdlib.h>



/* 기호 상수의 정의             */
#define GENMAX  1000	/*학습 반복 횟수*/
//#define NODENO  15		/*Ｑ 값의 노드 */
#define NODENO  144		/*Ｑ 값의 노드 */
#define ACTIONNO 3		/*action */
#define ALPHA 0.1		/*학습 계수*/   // int learning_rate=0.8;
#define GAMMA 0.9		/* 할인율*/
#define EPSILON 0.3		/*행동 선택의 무작위성 결정 */
#define SEED 32767		/*난수 시드*/

/* 함수 프로그램 선언  */
int rand100() ;		/*0～100을 반환하는 난수 함수*/
int rand01() ;		/*0 또는 1을 반환하는 난수 함수*/
double rand1() ;	/*0～1 사이의 실수를 반환하는 난수 함수*/
void printqvalue(double qvalue[NODENO][ACTIONNO]);	/*Q 값 출력*/
int selecta(int s,double qvalue[NODENO][ACTIONNO]);	/*행동 선택*/
double updateq(int s,double qvalue[NODENO][ACTIONNO]);	/*Q 값 갱신*/


struct rl_struct {        // 구조체 정의
    int state;
    int new_state;
    double reward;
    int sensor[5];
    int done;
};

struct rl_struct RL;     // 구조체 변수 선언
struct rl_struct *pRL;   // 구조체 변수 선언

double qvalue[NODENO][ACTIONNO] =           //;/*Q 값*/
{    // 세로 크기 144, 가로 크기 3인 int형 2차원 배열 선언
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //10
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //20
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //30
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //40
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //50
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //60
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //70
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //80
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //90
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //100
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //110
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //120
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //130
        { 11, 22, 33},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},  //140
        { 55, 66, 77},
        { 55, 66, 77},
        { 55, 66, 77},
        { 99, 110, 121}
 };

/**********************************/
/*     rand100() 함수             */
/*   0～100을 반환하는 난수 함수  */
/**********************************/
int rand100()
{
 int rnd ;
 
 /*난수 최댓값 제외*/
 while((rnd=rand())==0x7fff /*RAND_MAX*/) ;
 /*난수 계산*/ 
 return (int)((double)rnd/0x7fff /*RAND_MAX*/*101) ;
}

/***********************************/
/*     rand01() 함수               */
/*   0 또는 1을 반환하는 난수 함수 */
/***********************************/
int rand01()
{
 int rnd ;
 
 /*난수 최댓값을 제외*/
 while((rnd=rand())==0x7fff /*RAND_MAX*/) ;
 /*난수 계산*/ 
 return (int)((double)rnd/0x7fff /*RAND_MAX*/*2) ;
}

/***********************************/
/*     rand1() 함수                */
/*0～1 사이의 실수 반환 난수 함수  */
/***********************************/
double rand1()
{
 /*난수 계산*/ 
 return (double)rand()/0x7fff /*RAND_MAX*/ ;
}

/****************************/
/*    printqvalue()함수     */
/*    Q 값 출력             */
/****************************/
void printqvalue(double qvalue[NODENO][ACTIONNO])
{
 int i, j ;
 
 for (i=1;i<NODENO;++i)
 {
   for(j=0;j<ACTIONNO;++j)
     printf("%d\t",qvalue[i][j]);
   printf("\n");
 }
 printf("\n");
}


/****************************/
/*        selecta() 함수    */
/*        행동 선택         */
/****************************/
// action = rargmax(Q[state, :])
// action = rargmax(Q[state, :])
int selecta(int olds,double qvalue[NODENO][ACTIONNO])
{
    int action ;
    int i_no;
    double qv; 
    /*ε-greedy 법을 이용한 행동 선택*/
    if(rand1()<EPSILON){
        /*무작위로 행동*/
        if(rand01()==0) action=2*olds+1 ;
        else action=2*olds+2 ;
    }
    else{
        /*Ｑ 값 최댓값을 선택*/
//        if((qvalue[2*olds+1][ACTIONNO])>(qvalue[2*olds+2][ACTIONNO])) 
//        s=2*olds+1;
//        else s=2*olds+2;

        qv = qvalue[olds][0];
        action = 0;
        for(i_no=1;i_no<2;++i_no)
        {
            if(qv<qvalue[olds][i_no])
            {
                qv=qvalue[olds][i_no];
                action=i_no;            
            }
        }
    }
    return action;
}

/****************************/
/*       updateq() 함수     */
/*       Q 값 갱신          */
/****************************/
int updateq(int s, int qvalue[NODENO][ACTIONNO])
{
	int qv;/*갱신되는 Q 값*/
	int qmax;/*Ｑ 값의 최댓값*/

			 /*가장 아랫단일 때*/
	if (s>6) {
		if (s == 14)/*보상 부여*/
			qv = qvalue[s][ACTIONNO] + ALPHA * (1000 - qvalue[s][ACTIONNO]);
		/*보상을 주는 노드 증가   */
		/*다른 노드를 추가할 때는 */
		/*다음 2줄의 주석을 제거  */
		//  else if(s==11)/*보상 부여*/
		//   qv=qvalue[s][ACTIONNO]+ALPHA*(500-qvalue[s][ACTIONNO]) ;
		else/*보상 없음*/
			qv = qvalue[s][ACTIONNO];
	}
	/*가장 아랫단 이외*/
	else {
		if ((qvalue[2 * s + 1][ACTIONNO])>(qvalue[2 * s + 2][ACTIONNO]))
			qmax = qvalue[2 * s + 1][ACTIONNO];
		else qmax = qvalue[2 * s + 2][ACTIONNO];
		qv = qvalue[s][ACTIONNO] + ALPHA * (GAMMA*qmax - qvalue[s][ACTIONNO]);
	}
	return qv;
}
//sensor input

struct rl_struct *sensor_value(void)
{
/*
	  int sensor[5];
    //sensor input
    sensor[0] = 1;
    sensor[1] = 1;
    sensor[2] = 1;
    sensor[3] = 1;
    sensor[4] = 1;
*/    
    //sensor Zone

    //sensor sector

    return pRL;

/*
function [state_index, k1, k2, k3, k4] = discretization(state_space, sensor, dyn_obj, stadium_option)
    
    k1 = 2;         %Left zone
    k2 = 2;         %Right sone
    k3 = 3;         %Left sector    
    k4 = 3;         %Right sector
    k5 = 0;         %Left static/dynamic
    k6 = 0;         %Right static/dynamic
    
    % Find the left side sensor values of the vehicle 
    x = min(sensor(1:3));          
    if( x > 40 && x < 70)

        k1 = 1;         %zone 1
        
    elseif( x < 40)
        
        k1 = 0;         %zone 0
        
    end

    % find the right sensor values of the vehicle
    x = min(sensor(3:end));        
    if( x > 40 && x < 70)        
        k2 = 1;         %zone 1
    
    elseif(  x < 40)        
        k2 = 0;         %zone 0
        
    end       
    
    i = sensor < 100;
    
    % The left sector of the vehicle
    if( ((i(2) == 1 || i(3) == 1) && i(1) == 0))
        k3 = 0;         %sector 0
    
    elseif( (sum(i(1:2)) == 2 || i(1) == 1) && i(3) == 0 )
        k3 = 1;         %sector 1
        
    elseif( sum(i(1:3)) == 3 )    
        k3 = 2;         %sector 2     
    end        

    % The right sector of the vehicle
    if( ((i(3) == 1 || i(4) == 1) && i(end) == 0) )
        
        k4 = 0;         %sector 0
    
    elseif( (sum(i(4:end)) == 2 || i(end) == 1) && i(3) == 0 )
        
        k4 = 1;         %sector 1
        
    elseif( sum(i(3:end)) == 3)
        
        k4 = 2;         %sector 2
    end          
    
    x1 = max(dyn_obj(1:3));
    x2 = max(dyn_obj(3:end));

    if( x1 > 0)
        
        k5 = 1;         %dynamic obstacles
    end    
    
    if( x2 > 0 )
        
        k6 = 1;         %dynamic obstacles
    end
    
    % Find the state index in the Q-table
    if(strcmp(stadium_option,'Static')), [d, index] = min(dist(state_space, [k1, k2, k3, k4]'));
        
    elseif(strcmp(stadium_option,'Dynamic')), [d, index] = min(dist(state_space, [k1, k2, k3, k4, k5, k6]'));
        
    end
    
    state_index = index;
end
*/

}

//	function [state_index, k1, k2, k3, k4] = discretization(state_space, sensor, dyn_obj, stadium_option)
//int discretization(int state_space, int sensor[5], int dyn_obj[5], int stadium_option)
struct rl_struct *discretization(int sensor[5])
{
    int k1 = 2;         // Left zone
    int k2 = 2;         // Right sone
    int k3 = 3;         // Left sector
    int k4 = 3;         // Right sector
    int k5 = 0;         // Left static/dynamic
    int k6 = 0;         // Right static/dynamic

    int i[5];
    int x, x1, x2;
    int min, min_no;

    int i_no;
    // Find the left side sensor values of the vehicle
    ////x = min(sensor(1:3));
    x = sensor[0];
    for(i_no=1;i_no<3;++i_no)
    {
        if(x>sensor[i_no])
            x=sensor[i_no];
    }
    if( x > 40 && x < 70)
        k1 = 1;         //zone 1
    else if( x < 40)
        k1 = 0;         //zone 0

    // find the right sensor values of the vehicle
    ////x = min(sensor(3:end));
    x = sensor[2];
    for(i_no=3;i_no<5;++i_no)
    {
        if(x>sensor[i_no])
            x=sensor[i_no];
    }
    if( x > 40 && x < 70)
        k2 = 1;         //zone 1
    else if(  x < 40)
        k2 = 0;         //zone 0

//    i = sensor < 100;
    for(i_no=0;i_no<5;++i_no)
    {
        if(sensor[i_no] < 100)
            i[i_no] = 1;
        else
            i[i_no] = 0;
    }

    if( ((i[1] == 1 || i[2] == 1) && i[0] == 0))
        k3 = 0;         //sector 0
    else if( ((i[0]+i[1]) == 2 || i[0] == 1) && i[2] == 0 )
        k3 = 1;         //sector 1
    else if( (i[0]+i[1]+i[2]) == 3 )
        k3 = 2;         //sector 2

    // The right sector of the vehicle
    if( ((i[2] == 1 || i[3] == 1) && i[4] == 0) )
        k4 = 0;         //sector 0
    else if( ((i[0]+i[1]) == 2 || i[4] == 1) && i[2] == 0 )
        k4 = 1;         //sector 1
    else if( (i[0]+i[1]+i[2]) == 3)
        k4 = 2;         //sector 2

    // The left sector of the vehicle
/*
    if( ((i(2) == 1 || i(3) == 1) && i(1) == 0))
        k3 = 0;         //sector 0
    else if( (sum(i(1:2)) == 2 || i(1) == 1) && i(3) == 0 )
        k3 = 1;         //sector 1
    else if( sum(i(1:3)) == 3 )
        k3 = 2;         //sector 2

    // The right sector of the vehicle
    if( ((i(3) == 1 || i(4) == 1) && i(end) == 0) )
        k4 = 0;         //sector 0
    else if( (sum(i(4:end)) == 2 || i(end) == 1) && i(3) == 0 )
        k4 = 1;         //sector 1
    else if( sum(i(3:end)) == 3)
        k4 = 2;         //sector 2
*/
//////    x1 = max(dyn_obj(1:3));
//    x1 = dyn_obj[0];
//    for(i_no=1;i_no<3;++i_no)
//    {
//        if(x1<dyn_obj[i_no])
//            x1=dyn_obj[i_no];
//    }
//////    x2 = max(dyn_obj(3:end));
//    x2 = dyn_obj[3];
//    for(i_no=3;i_no<5;++i_no)
//    {
//        if(x2<dyn_obj[i_no])
//            x2=dyn_obj[i_no];
//    }

//    if( x1 > 0)
//        k5 = 1;         //dynamic obstacles

//    if( x2 > 0 )
//        k6 = 1;         //dynamic obstacles

    pRL->new_state = 48*k1+16*k2+4*k3+k4;

//    return index;
    return pRL;
    // Find the state index in the Q-table
    ////if(strcmp(stadium_option,'Static')), [d, index] = min(dist(state_space, [k1, k2, k3, k4]'));
    ////elseif(strcmp(stadium_option,'Dynamic')), [d, index] = min(dist(state_space, [k1, k2, k3, k4, k5, k6]'));
    ////state_index = index;
}

//function [reward, terminal] = getReward(action, prev_action, sensor1, sensor2, krasj)
struct rl_struct *get_reward(int action, int prev_action, int sensor1, int sensor2, int krasj)
{
    // Reward function for Q-learning with table
    int r1 = 0;
    int r2 = 0;
    int r3 = 0;

    int status_krasj = 1; //= ~isempty(find(krasj(2),1));
    int terminal = 0;     //false;
    int a = action;

    switch(a)
    {
        case 1: r1 = 0.2;
        case 2: r1 = -0.1;
        case 3: r1 = -0.1;
    }

////    if (sum(sensor2 - sensor1) >= 0)
////        r2 = 0.2;
////    else
////        r2 = -0.2;

    if(prev_action == 2 && a == 3)
        r3 =  -0.8;
    else if(prev_action == 3 && a == 2)
        r3 = -0.8;

    pRL->reward = r1 + r2 + r3;

    if(status_krasj)
    {
        terminal = 1; //true;
        pRL->reward = -100;
    }
//    return reward;
    return pRL;
}

/*
function [reward, terminal] = getReward(action, prev_action, sensor1, sensor2, krasj)
    % Reward function for Q-learning with table

    r1 = 0;
    r2 = 0;
    r3 = 0;
    reward = 0;
    
    status_krasj = ~isempty(find(krasj(2),1));
    terminal = false;
    a = action;
        
    switch(a)
       
        case 1, r1 = 0.2;
        case 2, r1 = -0.1;
        case 3, r1 = -0.1;
            
    end
    
    if (sum(sensor2 - sensor1) >= 0)
        
        r2 = 0.2;        
    else
        
        r2 = -0.2;
    end    
    
   if(prev_action == 2 && a == 3)
      
       r3 =  -0.8;      
   elseif(prev_action == 3 && a == 2)
        
       r3 = -0.8;
   end
     
   reward = r1 + r2 + r3;
   
   if(status_krasj)
       
       terminal = true;
       reward = -100;
   end

end
*/

void do_action(int action)
{
    int dyn_obj[5];
    int sensor[5];
    
    //action에 해당하는 동작을 수행한다.
    if(action == 0)
    {
        // 전진
        ;
    }else if(action == 1)
    {
        // 왼쪽
        ;

    }else if(action == 2)
    {
        // 오른쪽
        ;
    }else
    {
        printf("action is not defined\n");
    }
    sensor_value();
    pRL = discretization(sensor);
    pRL = get_reward(1, 1, 1, 1, 1);
}

double argmax(int state)
{
    int i;
    int action_no=0;
    for(i=1;i<ACTIONNO;++i)
    {
        if(qvalue[state][action_no]<qvalue[state][i])
            action_no = i;
    }
//    return action_no;
    return qvalue[state][action_no];
}

										/*****************/
										/*  main() 함수  */
										/*****************/
int main()
{
    int i, j;
    int state; /*상태*/
    int action=0;
    double reward=0.0;
    double total_reward=0.0;
    int step;/*시각*/

    pRL=&RL;
    srand(SEED);/*난수 초기화*/

    /*Ｑ 값 초기화*/
    for(i=0;i<NODENO;++i)
    {
        for(j=0;j<ACTIONNO;++j)
            qvalue[i][j]=rand100() ;
    }
    printqvalue(qvalue) ;

    /*실제 학습*/
    for(i=0;i<GENMAX;++i){
        pRL->state=0;/*행동 초기 상태*/
        for(step=0;step<600;++step){/*가장 아랫단까지 반복*/
            /*행동 선택*/
            action=selecta(pRL->state,qvalue) ;

            // 일을 수행하고 코드 작성
            do_action(action);
            /*Q 값 갱신*/
//            qvalue[pRL->state][action]=updateq(state,qvalue) ;
            qvalue[pRL->state][action] = (1 - ALPHA) * qvalue[pRL->state][action] + \
                         ALPHA * (pRL->reward + GAMMA * argmax(pRL->new_state));
            total_reward += pRL->reward;
            pRL->state = pRL->new_state;
        }
        /*Q 값 출력*/
        printqvalue(qvalue) ;
    }
    return 0;
}
