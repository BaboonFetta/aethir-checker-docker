FROM ubuntu
ARG region=na
RUN echo "\n\nUsing region: ${region}\n\n\n"
RUN apt update && apt install -y ntpdate
ADD https://aethir-checker-client-new.s3.ap-southeast-1.amazonaws.com/na/AethirCheckerCLI-linux-1.0.2.0-na.tar.gz /
RUN tar -zxf AethirCheckerCLI-linux-1.0.2.0-na.tar.gz

RUN touch  /root/.yes_aethir
WORKDIR /AethirCheckerCLI-linux-na

CMD ./AethirCheckerService

