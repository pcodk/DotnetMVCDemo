.NET Core MVC Test
====
This repository contain a basic .NET Core  Asp.net MVC application created with dotnet new mvc. It is part of a 
Peytz & co Docker masterclass curriculum.

The project contains a Dockerfile for build a container locally. Build with

```docker build -t <TagName> .```

And run the container with

```docker run -p8080:80<TagName>``` and open your browser on http://localhost:8080

Azure devops pipeline
---
The project also contain a sample Azure devops pipeline file that can be used to build and push the container to Azure registry. 