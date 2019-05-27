FROM mcr.microsoft.com/dotnet/core/sdk AS build-env
WORKDIR /app

# First copy only dependency files, so a src code change does not bust cache!
COPY *.csproj ./
RUN dotnet restore

# Then copy rest, and compile
COPY . ./
RUN dotnet publish -c Release -o out


# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet
WORKDIR /app
COPY --from=build-env /app/out .
EXPOSE 80
CMD ["dotnet", "DotnetMVC.dll"]