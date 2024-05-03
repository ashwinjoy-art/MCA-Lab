use Bookreview
db.createCollection("user")
db.USER.insertMany([
    {
        "u_id":101,
        "u_name":"SMITH",
        "location":"TVM",
        "dob":"2008-10-03"
    },
    {
        "u_id":102,
        "u_name":"ALLEN",
        "location":"TVM",
        "dob":"2000-11-23"
    },
    {
        "u_id":103,
        "u_name":"JONES",
        "location":"CLT",
        "dob":"2001-10-28"
    },
    {
        "u_id":104,
        "u_name":"JAMES",
        "location":"EKM",
        "dob":"2001-03-11"
    },
])

db.createCollection("book")
db.book.insertMany([
    {
        "b_id":201,
        "b_name":"dbms",
        "author":"Navathe"
    },
    {
        "b_id":202,
        "b_name":"cloud computing",
        "author":"Sehgal"
    },
    {
        "b_id":203,
        "b_name":"operating systems",
        "author":"Silberschtz"
    },
    {
        "b_id":204,
        "b_name":"software engineering",
        "author":"Roger"
    },
    {
        "b_id":205,
        "b_name":"android",
        "author":"John Horton"
    },
    {
        "b_id":206,
        "b_name":"python",
        "author":"Guido Van"
    },
])

db.book.updateOne(
    { "b_name": "android" },
    { $set: { "name": "ANDROID OS" } } 
);

db.book.find(
    { "b_name": { $in: ["dbms", "python"] } }
);

db.book.find().sort({ "author": -1 });

 