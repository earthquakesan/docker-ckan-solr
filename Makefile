branch_name:=$(shell git branch | grep \* | cut -d' ' -f 2)
image_name:=earthquakesan/ckan-solr:${branch_name}
build:
	docker build -t ${image_name} .

push:
	docker push ${image_name}
