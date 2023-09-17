FROM python:3.10-bullseye

WORKDIR /usr/src/app

RUN pip install --upgrade pip

# Poetryのインストール
RUN curl -sSL https://install.python-poetry.org | python -

# Poetryのパスの設定
ENV PATH /root/.local/bin:$PATH

# Poetryが仮想環境を生成しないようにする
RUN poetry config virtualenvs.create false

# コードのコピー
COPY ./code /usr/src/app/

