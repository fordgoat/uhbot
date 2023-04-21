FROM greycilik/cilikuserbot:buster

RUN git clone -b main https://github.com/wise-maestro/nandapediabroadcast /home/nandapediabroadcast/ \
    && chmod 777 /home/nandapediabroadcast \
    && mkdir /home/nandapediabroadcast/bin/

COPY ./sample_config.env ./config.env* /home/nandapediabroadcast/

WORKDIR /home/nandapediabroadcast/

CMD ["python3", "-m", "CilikUbot"]
