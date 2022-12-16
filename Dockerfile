FROM ubuntu:22.04
RUN mkdir -p ~/.aws
RUN echo '[default] \
aws_access_key_id=AKIAIOSFODNN7EXAMPLE \
aws_secret_access_key=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY' > ~/.aws/credentials
RUN mkdir -p ~/myAWSKey
RUN echo 'AKIAI1SFODNN7EXAMPLE=wJblrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY' > ~/myAWSKey/mykey.txt
RUN echo 'User name,Password,Access key ID,Secret access key,Console login link \
falgout-example,,AKIAI2SFODNN7EXAMPL3,wJclrXUtnFEMI/K7MDENG/bPxRfiCY3XAMPL3K3Y,https://294109810000.signin.aws.amazon.com/console' > ~/myAWSKey/mykey.csv

RUN mkdir ~/slackExample
RUN echo 'curl -F code=1234 -F client_id=3336676.569200954261 -F client_secret=ABCDEFGH https://slack.com/oauth/v2/authorize?scope=incoming-webhook&client_id=33336676.569200954261' > ~/slackExample/slackCurl.sh
RUN echo 'export ORCA_SECURITY_API_TOKEN=aHR0cHM6Ly9hcHAudXMub3JjYXNlY3VyaXR5LmlvfHx5YW5YVERoYnZrRkw2aFd6N1R3V1lPUDNLZTE3cVpPMQ==' > ~/orcatoken.sh

RUN mkdir -p ~/orca
COPY /orca ~/orca
