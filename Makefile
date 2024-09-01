help-me:
	@echo Run one of the following when outside the container
	@echo - build-server-container-image
	@echo - run-server-container
	@echo - access-server-container
	@echo - stop-server-container
	@echo - restart-server-container
	@echo - delete-server-container
	@echo - delete-server-container-image
	@echo - launch-server
	@echo - run-server
	@echo - update-server
	@echo - stop-server

build-server-container-image: 
	docker build -t jro -f Dockerfile .

run-server-container: 
	docker run -t -d --name=ragnarok -p 6900:6900 -p 6121:6121 -p 5121:5121 jro

access-server-container:
	docker exec -it ragnarok /bin/bash

stop-server-container:
	docker stop ragnarok

restart-server-container:
	docker restart ragnarok

delete-server-container:
	docker container rm ragnarok

delete-server-container-image:
	docker image rm jro

launch-server:
	docker exec ragnarok ./launch_server.sh
	
run-server:
	docker exec ragnarok ./run_server.sh
	
update-server:
	docker exec ragnarok ./update_server.sh 
	
stop-server:
	docker exec pkill login-server
	docker exec pkill char-server
	docker exec pkill map-server
