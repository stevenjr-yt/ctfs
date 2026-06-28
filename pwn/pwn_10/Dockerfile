FROM ubuntu:20.04
RUN apt-get update && apt-get install -y gcc socat
RUN useradd -m ctf
WORKDIR /app
COPY vuln.c .
COPY flag.txt .
RUN chown -R root:ctf /app && chmod 750 /app && chmod 440 /app/flag.txt && chmod 2755 /app/vuln
EXPOSE 10000
CMD ["socat", "TCP-LISTEN:10000,reuseaddr,fork", "EXEC:/app/vuln,su=ctf,stderr"]
