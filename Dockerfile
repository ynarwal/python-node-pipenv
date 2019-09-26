FROM python:3.7

RUN pip install pipenv==2018.11.26
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - > /dev/null
RUN apt install -y nodejs

# pipenv hardcodes the path to these binaries.
RUN ln -s /usr/local/bin/pip /bin/pip
RUN ln -s /usr/local/bin/python /bin/python
