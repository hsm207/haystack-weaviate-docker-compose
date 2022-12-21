HAYSTACK_VERSION := v1.11.1

clone-haystack:
	git clone --depth 1 --branch $(HAYSTACK_VERSION) https://github.com/deepset-ai/haystack.git

clean:
	rm -r haystack
	
upload-data:
	# upload the text documents
	curl -X 'POST' \
		'http://localhost:8000/file-upload' \
		-H 'accept: application/json' \
		-H 'Content-Type: multipart/form-data' \
		-F 'split_length=200' \
		-F 'split_overlap=10' \
		-F 'files=@data/seasons.txt;type=application/txt'
	curl -X 'POST' \
		'http://localhost:8000/file-upload' \
		-H 'accept: application/json' \
		-H 'Content-Type: multipart/form-data' \
		-F 'split_length=200' \
		-F 'split_overlap=10' \
		-F 'files=@data/days.txt;type=application/txt'