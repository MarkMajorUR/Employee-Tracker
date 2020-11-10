const mysql = require("mysql");

const connection = mysql.createConnection({
    host:"localhost",
    port: 3306,
    user: "root",
    password: "2Cleanwhiteboy",
    database: "Employee_Tracker"
});

connection.connect((err) => {
    if (err) throw err;
    console.log("connected as id " + connection.threadId)
});

module.exports = connection