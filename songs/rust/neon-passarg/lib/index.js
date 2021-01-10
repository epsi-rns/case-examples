const {
  hello,
  passStr,
  passArray,
  passObject
} = require('../native/index.node');

console.log(hello());

console.log(passStr("Cantaloupe Island"));

console.log(passArray(["60s", "jazz"]));

console.log(passObject({
  title: "Cantaloupe Island",
  tags:  ["60s", "jazz"]
}));
