# 간단한 github 사용 가이드

## (선택) git 설치 [리눅스 기준]

아래 명령어를 사용하여 git을 설치한다. 

~~~ bash
sudo apt-get update
sudo apt-get install git
~~~

## (선택) github 가입
https://github.com/ 페이지에 접속하여 가입을 진행한다.

## line-tracer 프로젝트 다운로드
https://github.com/michalnand/motoko_after_math_linefollower 로 이동한다.

페이지 중간 오른쪽에 초록색 버튼 **clone or download**을 누르면 해당 주소가 보이는데 두가지 방법으로 다운로드 할 수 있다.  

**1. git 명령어를 사용**  
터미널에서 아래 명령어 실행 (초록색 버튼을 눌렀을 때 보이는 주소 전체 복사)  
~~~ bash
git clone https://github.com/michalnand/motoko_after_math_linefollower 
~~~

git은 소스 코드를 공유하고 버전 관리할 수 있는 툴인데, git의 사용자들이 업로드한 코드들은 자유롭게 내 컴퓨터에 다운로드하고 수정할 수 있게 하는 프로그램이라고 이해하면 된다. 위의 명령어는 해당 주소에 있는 소스코드를 내 컴퓨터에 복제(clone)하도록 하는 명령어이다.  

위의 명령어를 실행하고 나면 motoko_after_math_linefollower 라는 폴더가 생성된 것을 확인할 수 있다.  

**2. ZIP 파일 다운로드**  
이 방법을 사용할 경우 git은 굳이 설치하지 않아도 된다. 초록색 버튼을 누르면 아래에 **Downalod ZIP** 버튼이 보이는데 이것을 눌러서 ZIP 파일을 저장한다. 다운로드한 ZIP 파일의 압축을 풀면 소스코드가 보일 것이다.  

## (추가) 프로젝트를 내 계정으로 복사해오기 (fork)
우리가 사용하는 프로젝트는 michalnand라는 아이디를 사용하는 사람이 본인의 계정에 업로드한 프로젝트인데, 다른 사람의 프로젝트이기 때문에 내가 수정해서 덮어쓰기를 하거나 할 수 없다. (물론 내 컴퓨터에서는 마음대로 다룰 수 있지만 github 페이지에 공식적으로 업로드하거나 할 수는 없다는 의미이다)  

그래서 사람들은 보통 참고하고자 하는 프로젝트가 생기거나 내가 수정을 하고 싶은 프로젝트가 생기면 본인 계정으로 복사해와서 마음껏 수정해서 업로드하는데, 이것을 fork 한다고 한다(프로세스 fork와 같은 느낌이라고 이해하면 된다.)  

linefollwer 예제 코드도 마찬가지로 본인 계정에 복사해올 수 있는데, 이를 위해서는 일단 github에 가입을 해야하고, 이후 https://github.com/michalnand/motoko_after_math_linefollower 페이지로 다시 이동해보자.  

오른쪽 상단에 Y자처럼 생긴 아이콘 옆에 **fork**라는 버튼이 있는데, 이걸 누르면 끝이다.  

github 첫페이지로 이동해보면 오른쪽에 내가 업로드한 프로젝트나 fork한 프로젝트 리스트가 보이는데, line-follower 프로젝트가 목록에 새로 생긴 걸 확인할 수 있다. 원하면 git clone 시에 fork한 프로젝트를 사용하면 된다.  