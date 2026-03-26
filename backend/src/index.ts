import http from "node:http";

const port = Number(process.env.PORT ?? 3000);

const server = http.createServer((_request, response) => {
  response.writeHead(200, { "Content-Type": "application/json" });
  response.end(
    JSON.stringify({
      ok: true,
      service: "backend",
    }),
  );
});

server.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
