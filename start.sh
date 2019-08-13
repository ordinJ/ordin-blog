#!/usr/bin/env bash


nohup java -jar  ordin-blog.jar --spring.profiles.active=prod > /dev/null 2>&1 &
