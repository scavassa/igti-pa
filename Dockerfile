FROM python:3.6.13

ENV ALLOWED_HOSTS=*
WORKDIR /helios-server
COPY /app .
RUN python -m venv .
RUN ["/bin/bash", "-c", "source bin/activate && pip install --no-cache-dir -r requirements.txt"]
EXPOSE 8000
CMD ["/bin/bash", "-c", "source bin/activate && python manage.py runserver 0.0.0.0:8000"]
