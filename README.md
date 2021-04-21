# alpine-kubectl
alpine:12.0.0 + kubectl + envsubst
该镜像是为了在k8s的docker中执行kubectl命令来完成服务部署，例如:kubectl apply -f deployment.yaml
使用该镜像还需要配置$HOME/.kube/config，例如：
    - mv $KUBE_CONFIG $HOME/.kube/config   # $KUBE_CONFIG是个预先准备好的文件
    - kubectl config view
    - kubectl version
    - envsubst < Deployment.yaml | kubectl apply -f -
