#FROM mydrivebot5/testfile:v5ubuntu
FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN curl -o /usr/src/app/requirements.txt https://gist.githubusercontent.com/yopremium21/54612dec29a3de15a689d4ed20a654b8/raw/requirements.txt 

RUN pip3 install --no-cache-dir -r requirements.txt
RUN curl -o /usr/src/app/install_phantomjs.sh \
     https://gist.githubusercontent.com/yopremium21/7d8a8e3101fb217ae1d6036a71e17b31/raw/26cd129ab43aa93109f132e6edb71baa5c5ed246/install_phantomjs.sh

RUN chmod 777 /usr/src/app/install_phantomjs.sh
RUN /usr/src/app/install_phantomjs.sh

COPY . .
EXPOSE 80 

CMD ["bash", "start.sh"]
