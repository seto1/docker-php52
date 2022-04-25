FROM tommylau/php-5.2

RUN apt-get update \
    && apt-get install -y \
        ssmtp \
        mailutils \
        vim

RUN echo "FromLineOverride=YES" > /etc/ssmtp/ssmtp.conf \
    && echo "Mailhub=10.0.2.2:1025" >> /etc/ssmtp/ssmtp.conf
