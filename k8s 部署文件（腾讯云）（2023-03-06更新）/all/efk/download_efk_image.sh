#!/bin/sh
#master 节点和 worker 节点都要执行 【所有机器执行】
# 加载环境变量
. /etc/profile
. /etc/bashrc

# 变量设置
elasticsearch_iamge="elasticsearch-oss:6.7.0"
busybox_image="busybox:latest"
bats_image="bats:0.4.0"
fluentd_image="fluentd-elasticsearch:v2.3.2"
kibana_image="kibana-oss:6.7.0"

# 集群所有机器执行
# elasticsearch镜像下载
docker pull registry.cn-beijing.aliyuncs.com/google_registry/${elasticsearch_iamge}
docker tag  registry.cn-beijing.aliyuncs.com/google_registry/${elasticsearch_iamge} docker.elastic.co/elasticsearch/${elasticsearch_iamge}
docker rmi  registry.cn-beijing.aliyuncs.com/google_registry/${elasticsearch_iamge}
# busybox镜像下载
docker pull registry.cn-beijing.aliyuncs.com/google_registry/${busybox_image}
docker tag  registry.cn-beijing.aliyuncs.com/google_registry/${busybox_image} ${busybox_image}
docker rmi  registry.cn-beijing.aliyuncs.com/google_registry/${busybox_image}
# bats镜像下载
docker pull registry.cn-beijing.aliyuncs.com/google_registry/${bats_image}
docker tag  registry.cn-beijing.aliyuncs.com/google_registry/${bats_image} dduportal/${bats_image}
docker rmi  registry.cn-beijing.aliyuncs.com/google_registry/${bats_image}
# fluentd-elasticsearch镜像下载
docker pull registry.cn-beijing.aliyuncs.com/google_registry/${fluentd_image}
docker tag  registry.cn-beijing.aliyuncs.com/google_registry/${fluentd_image} gcr.io/google-containers/${fluentd_image}
docker rmi  registry.cn-beijing.aliyuncs.com/google_registry/${fluentd_image}
# kibana-oss镜像下载
docker pull registry.cn-beijing.aliyuncs.com/google_registry/${kibana_image}
docker tag  registry.cn-beijing.aliyuncs.com/google_registry/${kibana_image} docker.elastic.co/kibana/${kibana_image}
docker rmi  registry.cn-beijing.aliyuncs.com/google_registry/${kibana_image}
