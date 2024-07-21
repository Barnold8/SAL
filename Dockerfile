FROM mcr.microsoft.com/dotnet/sdk:8.0

RUN mkdir /TEST

COPY SAL-Blazor /TEST

WORKDIR /TEST

EXPOSE 8080

CMD ["dotnet", "watch"]

