FROM python:3.8-buster
# ENV PYTHONPATH="${PYTHONPATH}:/var/www/pi-frame/src"
ENV FLASK_APP=app.py

# Mount the SMB share on the container.
#RUN if [ "$arg" = "x" ] ; then echo not ; else echo $arg ; fi

WORKDIR /var/www/pi-frame/src

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src/ .

CMD python $FLASK_APP
