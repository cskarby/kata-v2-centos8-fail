This container image is made to easily demonstrate and reproduce failing
`kata-collect-data.sh` using [kata v2.0.0](https://github.com/kata-containers/kata-containers/releases/tag/2.0.0)
and the [manual installation](https://github.com/kata-containers/kata-containers/blob/2.0.0/docs/install/container-manager/containerd/containerd-install.md#install-kata-containers)
instructions on CentOS 8.

The installation is prepared in the container image, so that the
verification step can be carried out just after launching the contianer:

```shell
$ docker run -it cskarby/kata-v2-centos8-fail 
[root@23e50414a5ad /]# export PATH=/opt/kata/bin:$PATH
[root@23e50414a5ad /]# kata-runtime --version
  : 2.0.0
   commit   : aa295c91f2ec5ec3389992111a1c6acecb46024b
   OCI specs: 1.0.1-dev
[root@23e50414a5ad /]# kata-collect-data.sh 
ERROR: kata-collect-data.sh: cannot find runtime ''
[root@23e50414a5ad /]# 
```

Reported as bug to the kata-containers project, see their issue [#1164](https://github.com/kata-containers/kata-containers/issues/1164).
