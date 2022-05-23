export MY_IP='34.136.194.98'

kubectl autoscale deployment/web --min=2 --max=15 --cpu-percent=50

docker run -e 'POST=vote=a' -it --rm -t devth/alpine-bench -c30 -n20000 http://$MY_IP/
docker run -e 'POST=vote=a' -it --rm -t devth/alpine-bench -c50 -n30000 http://$MY_IP/
docker run -e 'POST=vote=a' -it --rm -t devth/alpine-bench -c60 -n60000 http://$MY_IP/
docker run -e 'POST=vote=a' -it --rm -t devth/alpine-bench -c100 -n100000 http://$MY_IP/
