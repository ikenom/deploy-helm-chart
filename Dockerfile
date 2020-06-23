FROM dtzar/helm-kubectl

ENV APP_HOME /data/deploy-helm-chart
WORKDIR $APP_HOME

ENV HELM_EXPERIMENTAL_OCI 1
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["bash", "entrypoint.sh"]
