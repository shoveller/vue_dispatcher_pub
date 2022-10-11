FROM node

# pub 디렉토리 생성
RUN mkdir -p pub

# 파일 복사
COPY ./src ./pub/src
COPY package.json ./pub

WORKDIR ./pub

RUN npm i

EXPOSE 80

CMD npm start
