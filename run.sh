docker build --pull -t tester .

docker run --rm -it -p 8000:8080 -e ASPNETCORE_HTTP_PORTS=8080 tester