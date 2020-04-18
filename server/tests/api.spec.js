import supertest from "supertest";

import { createServer } from "../createServer";

describe("API test", () => {
  let app;

  beforeAll(() => {
    app = createServer();
  });

  afterAll(() => {
    app.close();
  });

  it("should return generic response", async () => {
    const { body, status } = await supertest(app).get("/");

    expect(status).toEqual(200);
    expect(body.message).toEqual("Test app v 1.0");
  });
});
