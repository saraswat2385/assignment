### Building app on local

To build the application on local run follwing command
```
cd docker
./build.sh
```

To start and stop the application scripts (start.sh & stop.sh) are also present in docker folder.

### Build Company News Application on Jenkins

On every commit to master build job will be triggered on Jenkins (Jenkinsfile for same is part of project) which will push the docker images of frontend and backend to docker repository.

For assignment purpose i used dockerhub but in actual environment we can setup a local docker registry or private dockerhub registry.

<p align="center">
  <img  src="images/jenkins.png">
</p>


![screenshot of Jenkins pipeline](images/build_pipeline.png)

### Build/Run for developer machine

Developers can use gradle docker plugin to create docker images on local and test their code on local with docker.

### Running Application on UAT

For running application on UAT we can use docker swarm (Compose file for same is also part of project)

### Running application on Prod

I would recommend AWS ECS for running in prod with fargate


### Improvements

* Dev has to figure out a way to provide a configuration by which we can define location of prelayer persistence file. Then we can use docker volume to share file in docker swarm environment.

* Right now certificates are embbeded in docker image for this assignment purposes we  can provide certificate at runtime using volume as well.
