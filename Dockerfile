FROM python3.8-apline

WORKDIR /lottery

COPY requirements.txt ./lottery

COPY . .

RUN pip install -r requirements.txt

RUN brownie compile

RUN brownie test

RUN brownie run scripts/deploy_lottery.py