# minikube and kubectl installation

- kubectl : https://github.com/kubernetes/kubernetes/tags
- minikube : https://github.com/kubernetes/minikube/tags

# minikube commands

Start Minikube:

```
minikube start
```

Display dashboard:

```
minikube dashboard
```

Access to the service:

```
minikube service <service>
```

Docker api:

```
eval $(minikube docker-env)
```

# kubectl commands

Start the service:

```
kubectl apply -f <service>
```

List the pod:

```
kubectl get pod
```

Forward port:

```
kubectl port-forward <pod> <port>
```
