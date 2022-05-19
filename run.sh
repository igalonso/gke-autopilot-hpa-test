export MY_IP='34.66.84.160'
kubectl autoscale deployment/web --min=2 --max=15 --cpu-percent=50
docker run -e 'POST=vote=a' -it --rm -t devth/alpine-bench -c50 -n200000 http://$MY_IP/