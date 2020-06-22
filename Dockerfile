FROM python:3.7

COPY --from=takutakahashi/any-exporter /app/cmd /cmd
COPY ./config.yaml /config.yaml
COPY ./metrics /metrics
RUN wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py \
 && chmod +x speedtest-cli

CMD ["/cmd", "--config", "/config.yaml"]
