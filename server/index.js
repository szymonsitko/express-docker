import { createServer } from "./createServer";

const appPort = process.env.PORT || 5000;
createServer().listen(appPort, () => {
  console.log(`Listening on port: ${appPort}.`);
});
