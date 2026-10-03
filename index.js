const { faker } = require("@faker-js/faker");
const mysql = require("mysql2");
const express = require("express");
const app = express();
const path = require("path");
const methodOverride = require("method-override");

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "/views"));
app.use(methodOverride("_method"));
app.use(express.urlencoded({ extended: true }));

//connection from
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "delta_app",
  password: "Ayush@2024",
});

//fake user id password and email creator
let createRandomUser = () => {
  return [
    faker.string.uuid(),
    faker.internet.username(),
    faker.internet.email(),
    faker.internet.password(),
  ];
};

//===========================================================================================================

// //run query run in mysql(database)
// //inserting new data
// let q = "INSERT INTO user (id, username, email, password) VALUES ?";
// // let user =["123","123_user","abc@gmail.com","abc"];
// let data = [];
// for (let i = 1; i <= 100; i++) {
//   data.push(createRandomUser());
// }

//===========================================================================================================

// try {
//   connection.query(q, [data], (err, result) => {
//     if (err) throw err;
//     console.log(result);
//   });
// } catch (err) {
//   console.log(err);
// }

// connection.end();

// let createRandomUser = () => {
//   return {
//     userId: faker.string.uuid(),
//     username: faker.internet.username(),
//     email: faker.internet.email(),
//     password: faker.internet.password(),
//   };
// };

// ********    "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p ***************

// simple(home route) route
app.get("/", (req, res) => {
  let q = "SELECT COUNT(*) FROM USER";
  try {
    connection.query(q, (err, result) => {
      if (err) throw err;
      let count = result[0]["COUNT(*)"];
      res.render("home.ejs", { count });
    });
  } catch (err) {
    console.log(err);
    res.send("some error in data page");
  }
});

//show route
app.get("/user", (req, res) => {
  let q = "SELECT * FROM USER";
  try {
    connection.query(q, (err, user) => {
      if (err) throw err;
      res.render("show_data.ejs", { user });
    });
  } catch (err) {
    console.log(err);
    res.send("some error in data page");
  }
});

//Edit route
app.get("/user/:id/edit", (req, res) => {
  let { id } = req.params;
  let q = `SELECT * FROM user WHERE id='${id}'`;
  try {
    connection.query(q, (err, result) => {
      if (err) throw err;
      let user = result[0];
      res.render("edit.ejs", { user });
    });
  } catch (err) {
    console.log(err);
    res.send("some error in data page");
  }
});

//update route
app.patch("/user/:id", (req, res) => {
  let { id } = req.params;
  let { password: formpassword, username: newusername } = req.body;
  let q = `SELECT * FROM user WHERE id='${id}'`;
  try {
    connection.query(q, (err, result) => {
      if (err) throw err;
      let user = result[0];

      if (formpassword != user.password) {
        res.send("wrong password");
      } else {
        let q2 = `UPDATE user SET username = '${newusername}' WHERE id = '${id}'`;
        connection.query(q2, (err, result) => {
          if (err) throw err;
          res.redirect("/user");
        });
      }

    });
  } catch (err) {
    console.log(err);
    res.send("some error in data page");
  }
});

app.listen(8080, () => {
  console.log("server is listing to 8080");
});
