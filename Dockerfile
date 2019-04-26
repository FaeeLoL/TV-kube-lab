FROM python:latest


WORKDIR /app
# First, we add requirements.txt, because if we will recreate image
# and requirements.txt will not be changed, it will not reinstall packages.
# Therefore deploy will be much faster.
ADD requirements.txt /app
RUN pip install -r requirements.txt

ADD . /app

CMD python main.py