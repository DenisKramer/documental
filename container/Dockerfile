FROM engineor/couscous-php

RUN apk add --no-cache nodejs
RUN npm install -g less clean-css bower

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh


RUN adduser -D couscous; chown couscous /app 
USER couscous

ENTRYPOINT ["/entrypoint.sh"]
