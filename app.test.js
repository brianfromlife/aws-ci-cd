const supertest = require("supertest");
const { app } = require("./app");

test("GET /posts", async () => {
  await supertest(app)
    .get("/")
    .expect(200)
    .then((response) => {
      expect(response.text).toEqual("hello");
    });
});
