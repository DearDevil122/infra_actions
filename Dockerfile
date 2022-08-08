FROM python:3.7-slim
COPY ./ /app
RUN pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -r /app/requirements.txt
WORKDIR /app/infra_project/
CMD python manage.py runserver 0:5000
