FROM ubuntu as build

RUN apt update && apt install -y python-pip libjpeg-dev zlib1g-dev
ADD . /app
RUN pip install -r /app/requirements.txt
WORKDIR /app
RUN mkdir scraper/export && python scraper/scrape.py && cat scraper/scrape.log && python overlay.py


FROM nginx
COPY --from=build /app /usr/share/nginx/html

EXPOSE 80