# SuperHive-docker
 SuperHive by bambukah in a docker container
 
As of 9/11/23 I've got the container to build without error. But docker run -d -p 80:80 the container will not run. I'm guessing it's in my superhive-setup.sh It will build and run without that. 
---

So far all I've gotten is a successful build with this version.

Neither ubuntu/nginx container or nginx alpine mainline would build.

The Dockerfile version is nginx 1.25.2 bookworm.

The Superhive.yaml uses Ubuntu/nginx container

Visit https://superhive.blog/
