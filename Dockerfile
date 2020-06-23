FROM dtzar/helm-kubectl

RUN mkdir /app
WORKDIR /app

ENV HELM_EXPERIMENTAL_OCI 1

COPY ./scripts/entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

WORKDIR /data/push-helm-chart

ENTRYPOINT ["bash", "/app/entrypoint.sh"]
