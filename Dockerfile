FROM mcr.microsoft.com/dotnet/sdk:8.0

RUN mkdir /TEST

COPY SAL-Blazor /TEST

WORKDIR /TEST

EXPOSE 5250

CMD ["dotnet", "watch"]

##########################


# FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
# ARG BUILD_CONFIGURATION=Release
# WORKDIR /src

# COPY SAL-Blazor/SAL-Blazor.csproj SAL-Blazor/
# RUN dotnet restore SAL-Blazor.csproj

# COPY . .
# WORKDIR /src/SAL-Blazor
# RUN dotnet build SAL-Blazor.csproj -c ${BUILD_CONFIGURATION} -o /app/build

# FROM build AS publish

# ARG BUILD_CONFIGURATION=Release

# RUN dotnet publish SAL-Blazor.csproj -c ${BUILD_CONFIGURATION} -o /app/publish /p:UseAppHost=false

# FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
# WORKDIR /app

# EXPOSE 8080

# COPY --from=publish /app/publish .

# ENTRYPOINT [ "dotnet","SAL-Blazor.dll" ]