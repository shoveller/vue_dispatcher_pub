FROM node

# pub 디렉토리 생성
RUN mkdir -p pub

# pub 디렉토리로 이동
WORKDIR pub

# 파일 복사
COPY * .

RUN npm i

EXPOSE 80

CMD npm start
