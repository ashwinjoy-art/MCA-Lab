use Library
db.createCollection("book")
db.book.insertMany([
    {
        "book id":101,
        "bktitle":"Database Management Systems",
        "bkedition":7,
        "bkauthor":"Navathe",
        "bkcost":450.0,
        "bkcopies":10
    },
    {
        "book id":102,
        "bktitle":"Cloud Computing",
        "bkedition":2,
        "bkauthor":"Sehgal",
        "bkcost":750.0,
        "bkcopies":7
    },
    {
        "book id":103,
        "bktitle":"Software Engineering",
        "bkedition":5,
        "bkauthor":"Roger",
        "bkcost":210.0,
        "bkcopies":10
    },
    {
        "book id":104,
        "bktitle":"Database Concepts",
        "bkedition":5,
        "bkauthor":"Henry",
        "bkcost":520.0,
        "bkcopies":5
    },
])

db.createCollection("student")
db.student.insertMany([
    {
        "name":"SMITH",
        "regno":12345,
        "region":"TVM"
    },
    {
        "name":"ALLEN",
        "regno":56789,
        "region":"CLT"
    },
    {
        "name":"JEN",
        "regno":67890,
        "region":"CLT"
    },
    {
        "name":"BLAKE",
        "regno":78901,
        "region":"EKM"
    },
    {
        "name":"WARD",
        "regno":89012,
        "region":"CLT"
    },
    {
        "name":"JAMES",
        "regno":90123,
        "region":"EKM"
    },
])

db.student.updateOne(
    { "name": "JAMES" }, 
    { $set: { "region": "TVM" } } 
);

db.student.find(
   { "region": { $in: ["EKM", "TVM"] } }
);

db.student.find().sort({ "name": 1 });

 

