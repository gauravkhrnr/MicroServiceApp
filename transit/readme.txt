---DOCKER

docker build . -t transit (build image)
docker images (get all creatd images)
docker image inspect <imageid> (give details of image)
and 
docker container inspect <containerid>

-- convert image to container
docker run -p 8080:8080 (image tag name)
(1st port is use to expose content to outside world)
(2nd is which is maintain by docker in its isolated env)

-- check running container
docker ps
docker ps -a
(-a show all container)

--docker logs
docker logs (container id)

docker logs -f (container id) 
(-f for follow)

-- docker stop
docker stop (container id)

--docker pause
docker pause (container id)
and 
docker unpause (container id)

--kill docker container
docker kill (instantly kill without get time)

--docker staticstic
docker stats
(check docker conatner staticstics)

-- remove docker container
docker rm (conatiner id)

-- run docker in detach mode (run without displaing logs)
docker run -d -p 8080:8080 easybytes/accounts

--create and run docker images without using docker file defination
- buildpacks (eg: paketo) is use to give cloud native docker images run on any cloud 
- add plugins and configuration in pom.xml
	    --<plugin>
			--<groupId>org.springframework.boot</groupId>
				--<artifactId>spring-boot-maven-plugin</artifactId>
				--<configuration>
					--<image>
						--<name>transit/${project.artifactId}</name>
					--</image>
			--</configuration>
		-- </plugin>

- mvn spring-boot:build-image (run command)

--push image into docker hub
docker tag (docker image name) (tag name)
docker image push docker.io/eazybytes/bank:latest


-- docker compose
-It is a tool to define and run all container 
-create yml file
-put in root of project
- docker-compose up (run command for docker compose)
- docker-compose stop

- https://docs.docker.com/compose/compose-file/ (check docker version)




-- mvn clean install -Dmaven.test.skip=true

docker run -d -p 9411:9411 openzipkin/zipkin

docker run -it --rm --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3-management