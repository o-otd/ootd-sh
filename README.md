# ootd-sh

클라우드 서비스를 사용하지 않기 때문에, 로컬에서 db, frontend, backend 서비스를 사용하기 위해 docker를 활용함.

그래서 docker는 꼭 설치 되어있어야 함.

## 서비스별 상세
1. mysql : backend용 db
2. gradle : ../ootd-be 소스 빌드 + 서비스 실행
3. node : ../ootd-fe 소스 빌드
4. proxy : frontend 서비스 + backend 서비스에 대한 리버스 프록시

## 사용방법
1. frontend, backend, shell 프로젝트를 하나의 폴더에 checkout 해야함. 최종적으로는 아래와 같은 구조임

<pre>
ootd
  +- ootd-be
      +- api
      +- ...
  +- ootd-fe
      +- src
      +- ...
  +- ootd-sh
      +- gradle
      +- ...
</pre>
 
2. 00_config.sh 부터 40_proxy.sh 까지 접두어 두자리 숫자 기준으로 순차적 실행.

    혹시 sh 파일이 실행 불가능하다면 아래의 명령어를 터미널에서 실행

    ```chmod +x ./*.sh```

3. 제대로 실행되었는지 각 서비스 페이지로 확인
front : http://localhost
api(swagger) : http://localhost/api/swagger-ui

## 서비스 재시작
실행의 역순으로 아래의 명령어를 터미널에서 입력

```docker restart <<service_name>>```

service_name은 아래 참조
- db : ootd-db
- frontend : ootd-fe
- backend(api) : ootd-be
- proxy : ootd-proxy

## 서비스 종료
서비스 재시작과 마찬가지로 실행의 역순.

```docker stop <<service_name>>```
