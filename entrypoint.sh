#!/bin/bash 
/etc/init.d/ssh start 
export ECS_INSTANCE_IP_ADDRESS=$(hostname -i) 
exec java  -noverify -XX:+AlwaysPreTouch -Djava.security.egd=file:/dev/./urandom -cp /app/resources/:/app/classes/:/app/libs/* jp.co.softbrain.esales.uaa.UaaApp 
