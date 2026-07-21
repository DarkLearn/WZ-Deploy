# FROM mysterysd/wzmlx:v3

# WORKDIR /usr/src/app

# RUN chmod 777 /usr/src/app

# COPY requirements.txt .
# RUN uv pip install --python /wzvenv/bin/python --no-cache-dir -r requirements.txt

# COPY . .

# ENTRYPOINT ["bash", "start.sh"]


FROM gkbotzg/gkmlc:v6

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

COPY . .

RUN uv venv --system-site-packages

RUN uv pip install --no-cache-dir -U -r requirements.txt

CMD ["bash", "start.sh"]
