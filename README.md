# dotnet-node
A docker image with the .NET Core 3.1 SDK and NodeJS (with yarn) installed

## Usage

First, [create a personal access token](https://github.com/settings/tokens) and give it the "read docker packages" permisison.

```
docker login docker.pkg.github.com
# (enter your username, use the token generated above)
docker run -it -v "$(pwd):/usr/data" docker.pkg.github.com/yetanotherchris/dotnet-node/dotnet-node:latest sh
```

Inside the container you can `cd /usr/data` and use npm, yarn, dotnet etc. in that directory.
