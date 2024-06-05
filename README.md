PS C:\Users\Yuukitore\Downloads\GSDocker> docker build -t node-test .
[+] Building 12.9s (11/11) FINISHED                                                                                                  docker:default
 => [internal] load build definition from dockerfile                                                                                           0.0s
 => => transferring dockerfile: 650B                                                                                                           0.0s
 => [internal] load metadata for docker.io/library/node:14-alpine                                                                              0.7s
 => [internal] load .dockerignore                                                                                                              0.0s
 => => transferring context: 2B                                                                                                                0.0s
 => [build 1/5] FROM docker.io/library/node:14-alpine@sha256:434215b487a329c9e867202ff89e704d3a75e554822e07f3e0c0f9e606121b33                  7.0s
 => => resolve docker.io/library/node:14-alpine@sha256:434215b487a329c9e867202ff89e704d3a75e554822e07f3e0c0f9e606121b33                        0.0s
 => => sha256:8f665685b215c7daf9164545f1bbdd74d800af77d0d267db31fe0345c0c8fb8b 37.17MB / 37.17MB                                               3.8s
 => => sha256:e5fca6c395a62ec277102af9e5283f6edb43b3e4f20f798e3ce7e425be226ba6 2.37MB / 2.37MB                                                 1.3s
 => => sha256:434215b487a329c9e867202ff89e704d3a75e554822e07f3e0c0f9e606121b33 1.43kB / 1.43kB                                                 0.0s
 => => sha256:4e84c956cd276af9ed14a8b2939a734364c2b0042485e90e1b97175e73dfd548 1.16kB / 1.16kB                                                 0.0s
 => => sha256:0dac3dc27b1ad570e6c3a7f7cd29e88e7130ff0cad31b2ec5a0f222fbe971bdb 6.44kB / 6.44kB                                                 0.0s 
 => => sha256:f56be85fc22e46face30e2c3de3f7fe7c15f8fd7c4e5add29d7f64b87abdaa09 3.37MB / 3.37MB                                                 0.7s 
 => => extracting sha256:f56be85fc22e46face30e2c3de3f7fe7c15f8fd7c4e5add29d7f64b87abdaa09                                                      0.2s 
 => => sha256:561cb69653d56a9725be56e02128e4e96fb434a8b4b4decf2bdeb479a225feaf 448B / 448B                                                     1.3s 
 => => extracting sha256:8f665685b215c7daf9164545f1bbdd74d800af77d0d267db31fe0345c0c8fb8b                                                      2.7s 
 => => extracting sha256:e5fca6c395a62ec277102af9e5283f6edb43b3e4f20f798e3ce7e425be226ba6                                                      0.1s 
 => => extracting sha256:561cb69653d56a9725be56e02128e4e96fb434a8b4b4decf2bdeb479a225feaf                                                      0.0s 
 => [internal] load build context                                                                                                              0.0s
 => => transferring context: 712B                                                                                                              0.0s 
 => [build 2/5] WORKDIR /app                                                                                                                   0.1s 
 => [build 3/5] COPY package.json ./                                                                                                           0.0s 
 => [build 4/5] RUN npm install                                                                                                                4.5s 
 => [build 5/5] COPY . .                                                                                                                       0.0s 
 => [stage-1 3/3] COPY --from=build /app /app                                                                                                  0.1s
 => exporting to image                                                                                                                         0.1s 
 => => exporting layers                                                                                                                        0.1s 
 => => writing image sha256:f8d6b0db3b67dd07ec31bccab5f5f90039f70dd140fdb6f6bb815b6848a16081                                                   0.0s 
 => => naming to docker.io/library/node-test                                                                                                   0.0s 
                                                                                                                                                    What's Next?                                                                                                                                          View a summary of image vulnerabilities and recommendations → docker scout quickview                                                              PS C:\Users\Yuukitore\Downloads\GSDocker> docker run -d --name node-test -p 9090:8090 node-test                                                     
b2c725bcb6bfe4b8be0de7cec08bc3559c80ec21d1951c49093350325ee09b89
PS C:\Users\Yuukitore\Downloads\GSDocker> docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED          STATUS          PORTS                    NAMES
b2c725bcb6bf   node-test   "docker-entrypoint.s…"   17 seconds ago   Up 16 seconds   0.0.0.0:9090->8090/tcp   node-test
PS C:\Users\Yuukitore\Downloads\GSDocker> curl http://localhost:9090


StatusCode        : 200
StatusDescription : OK
Content           : Hello World!
RawContent        : HTTP/1.1 200 OK
                    Connection: keep-alive
                    Keep-Alive: timeout=5
                    Content-Length: 12
                    Content-Type: text/html; charset=utf-8
                    Date: Wed, 05 Jun 2024 00:43:16 GMT
                    ETag: W/"c-Lve95gjOVATpfV8EL5X4nxwjKHE"...
Forms             : {}
Headers           : {[Connection, keep-alive], [Keep-Alive, timeout=5], [Content-Length, 12], [Content-Type, text/html; charset=utf-8]...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : mshtml.HTMLDocumentClass
CONTAINER ID   NAME        CPU %     MEM USAGE / LIMIT    MEM %     NET I/O          BLOCK I/O   PIDS
b2c725bcb6bf   node-test   0.00%     22.38MiB / 7.67GiB   0.28%     4.86kB / 2.9kB   0B / 0B     18
PS C:\Users\Yuukitore\Downloads\GSDocker> docker volume create nginx-data
nginx-data
PS C:\Users\Yuukitore\Downloads\GSDocker> docker network create nginx-net
82d0e4e480f8510c620239613196580b6b6a9ad477096a0b3483cc8dd785f30d
PS C:\Users\Yuukitore\Downloads\GSDocker> docker run -d --name nginx-container --network nginx-net -v nginx-data:/usr/share/nginx/html -p 8080:80 nginx
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
09f376ebb190: Pull complete
5529e0792248: Pull complete
9b3addd3eb3d: Pull complete
57910a8c4316: Pull complete
7b5f78f21449: Pull complete 
b7923aa4e8a6: Pull complete
785625911f12: Pull complete
Digest: sha256:0f04e4f646a3f14bf31d8bc8d885b6c951fdcf42589d06845f64d18aec6a3c4d
Status: Downloaded newer image for nginx:latest
2304efea9759caf61b747deeae2f9bfe698c586ec2afa5a5acd1429e7851b86e
PS C:\Users\Yuukitore\Downloads\GSDocker> docker build -t daniramos/gs_docker_2024:latest .
[+] Building 1.7s (12/12) FINISHED                                                                                                   docker:default
 => [internal] load build definition from dockerfile                                                                                           0.0s
 => => transferring dockerfile: 650B                                                                                                           0.0s 
 => [internal] load metadata for docker.io/library/node:14-alpine                                                                              1.6s 
 => [auth] library/node:pull token for registry-1.docker.io                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                              0.0s
 => => transferring context: 2B                                                                                                                0.0s 
 => [build 1/5] FROM docker.io/library/node:14-alpine@sha256:434215b487a329c9e867202ff89e704d3a75e554822e07f3e0c0f9e606121b33                  0.0s 
 => [internal] load build context                                                                                                              0.0s 
 => => transferring context: 90B                                                                                                               0.0s 
 => CACHED [build 2/5] WORKDIR /app                                                                                                            0.0s 
 => CACHED [build 3/5] COPY package.json ./                                                                                                    0.0s 
 => CACHED [build 4/5] RUN npm install                                                                                                         0.0s 
 => CACHED [build 5/5] COPY . .                                                                                                                0.0s 
 => CACHED [stage-1 3/3] COPY --from=build /app /app                                                                                           0.0s 
 => exporting to image                                                                                                                         0.0s 
 => => exporting layers                                                                                                                        0.0s 
 => => writing image sha256:f8d6b0db3b67dd07ec31bccab5f5f90039f70dd140fdb6f6bb815b6848a16081                                                   0.0s 
 => => naming to docker.io/daniramos/gs_docker_2024:latest                                                                                     0.0s 

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview
PS C:\Users\Yuukitore\Downloads\GSDocker> docker tag daniramos/gs_docker_2024:latest daniramos/gs_docker_2024:latest
PS C:\Users\Yuukitore\Downloads\GSDocker> docker login
Authenticating with existing credentials...
Login Succeeded
PS C:\Users\Yuukitore\Downloads\GSDocker> docker push daniramos/gs_docker_2024:latest
The push refers to repository [docker.io/daniramos/gs_docker_2024]
5e7f876aecd5: Pushed
0a6392c16ea5: Pushed
31f710dc178f: Pushed
a599bf3e59b8: Pushed
e67e8085abae: Pushed
f1417ff83b31: Pushed
latest: digest: sha256:580c824b99e4bdbbc1706aebca774ff56b0c2c86da4bac3a8de829366b41aa11 size: 1574
PS C:\Users\Yuukitore\Downloads\GSDocker> git init
Initialized empty Git repository in C:/Users/Yuukitore/Downloads/GSDocker/.git/
PS C:\Users\Yuukitore\Downloads\GSDocker> git add .
PS C:\Users\Yuukitore\Downloads\GSDocker> git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   app.js
        new file:   dockerfile
        new file:   package.json

PS C:\Users\Yuukitore\Downloads\GSDocker> git commit -m "GS Docker 98629"
[master (root-commit) 8fa36a5] GS Docker 98629
 3 files changed, 46 insertions(+)
 create mode 100644 app.js
 create mode 100644 dockerfile
 create mode 100644 package.json
PS C:\Users\Yuukitore\Downloads\GSDocker> git push
fatal: No configured push destination.
Either specify the URL from the command-line or configure a remote repository using

    git remote add <name> <url>

and then push using the remote name

    git push <name>

PS C:\Users\Yuukitore\Downloads\GSDocker> git remote add GSDocker https://github.com/daniramosy28/GSDocker.git
PS C:\Users\Yuukitore\Downloads\GSDocker> git push GSDocker                                                   
fatal: The current branch master has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream GSDocker master

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.

PS C:\Users\Yuukitore\Downloads\GSDocker> git push --set-upstream GSDocker master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 918 bytes | 918.00 KiB/s, done.
Total 5 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/daniramosy28/GSDocker.git
 * [new branch]      master -> master
branch 'master' set up to track 'GSDocker/master'.

