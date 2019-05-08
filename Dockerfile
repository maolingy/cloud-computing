# for syntax details, see https://docs.docker.com/engine/reference/builder/
FROM python:3
RUN pip install flask
RUN pip install requests
EXPOSE 5000/tcp
COPY todolist.py .
COPY todolist_api.py .
COPY index.html .
CMD python todolist.py