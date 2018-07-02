#!/usr/bin/env bash
 docker build -t frontend:latest -f ./Dockerfile1 .
 docker build -t backend:latest -f ./Dockerfile .
