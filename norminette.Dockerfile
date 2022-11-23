FROM python:3.10.8-alpine

RUN python3 -m pip install --disable-pip-version-check --no-cache-dir norminette

WORKDIR /src

ENTRYPOINT ["norminette"]
