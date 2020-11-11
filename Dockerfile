FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

# Copiamos csproj y restauramos las diferentes capas del proyecto
COPY *.csproj ./
RUN dotnet restore

# Variable Global importante
# ENV PATH $PATH:/root/.dotnet/tools

# Instalamos Entityframework
# RUN dotnet tool install --global dotnet-ef 

#Copiamos los demas archivos.
COPY . ./

#Corremos la migracion.
# RUN dotnet ef migrations add DbInit
# RUN dotnet ef database update

# Copiamos todo y construimos

RUN dotnet publish -c Release -o out

# Construimos la imagen que servira el contenedor
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/out .

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["dotnet", "netCoreExample.dll"]
