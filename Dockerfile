#FROM mydrivebot5/testfile:v5ubuntu
FROM anasty17/mltb:latest
VOLUME /etc/hosts
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN curl -o /usr/src/app/requirements.txt https://gist.githubusercontent.com/yopremium21/54612dec29a3de15a689d4ed20a654b8/raw/requirements.txt 

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 80 

CMD ["bash", "start.sh"]
