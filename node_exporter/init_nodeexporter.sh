#!bin/bash
set -e
echo '开始下载文件...'
wget https://github.com/prometheus/node_exporter/releases/download/v0.15.0/node_exporter-0.15.0.linux-amd64.tar.gz
echo '结束下载文件,开始解压文件...'
tar xvf node_exporter-0.15.0.linux-amd64.tar.gz
cd node_exporter-0.15.0.linux-amd64/
echo '文件解压结束，运行文件...'
nohup ./node_exporter  --web.listen-address="0.0.0.0:9100" &
echo '结束...'
