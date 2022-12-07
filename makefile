HAYSTACK_VERSION := v1.11.0

clone-haystack:
	git clone --depth 1 --branch $(HAYSTACK_VERSION) https://github.com/deepset-ai/haystack.git
