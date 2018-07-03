### Building app on local

To build the application on local run following command
```
cd docker
./build.sh
```

To start and stop the application scripts ([run.sh](docker/run.sh) & [stop.sh](docker/stop.sh)) are also present in [docker](docker) folder.

### Build Company News Application on Jenkins

On every commit to master build job will be triggered on Jenkins ([Jenkinsfile](Jenkinsfile) for same is part of project) which will push the docker images of frontend and backend to docker repository.

For assignment purpose i used dockerhub but in actual environment we can setup a local docker registry or private dockerhub registry.

<p align="center">
  <img  src="images/jenkins.png">
</p>


![screenshot of Jenkins pipeline](images/build_pipeline.png)

### Build/Run for developer machine

Developers can use gradle docker plugin to create docker images on local and test their code on local with docker.

### Running Application on UAT

For running application on UAT we can use docker swarm ([Compose file](docker-swarm/docker-compose.yaml) for same is also part of project)

```
cd docker-swarm
./run.sh
```
if you want to create your own docker swarm cluster using docker-machine scripts for same available in docker-swarm folder.

Use [swarm-cluster-create.sh](docker-swarm/swarm-cluster-create.sh) to create cluster and [swarm-cluster-remove.sh](docker-swarm/swarm-cluster-remove.sh) for cleanup.

### Running application on Prod

I would recommend AWS ECS for running in prod with fargate and automate the whole process using terraform

### Improvements

* Dev team has to figure out a way to provide a configuration by which we can define location of prelayer persistence file. Then we can use docker volume to share file in docker swarm environment.

* Right now certificates are embedded in docker image for this assignment purposes we  can provide certificate at runtime using volume as well.
