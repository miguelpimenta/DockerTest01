FROM microsoft/dotnet:2.2-sdk AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY src/*.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
#FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
#COPY --from=publish /app .
ENTRYPOINT ["dotnet", "DockerTest01.dll"]

#COPY app/bin/Release/netcoreapp2.2/publish/ app/
