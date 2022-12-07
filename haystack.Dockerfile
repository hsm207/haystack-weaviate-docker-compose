FROM deepset/haystack-cpu:latest
        
WORKDIR /app
COPY haystack /app
RUN pip install -e '.[dev,ocr,weaviate]'