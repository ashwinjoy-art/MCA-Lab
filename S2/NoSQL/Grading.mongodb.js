use Grading;
db.createCollection("STUDENT");
db.STUDENT.insertMany([
    {
        "reg_no": 501,
        "fname": "SMITH",
        "lname": "FORD",
        "Address": "HSNO:121",
        "Sub_name": "dbms",
        "Credit": 8
    },
    {
        "reg_no": 502,
        "fname": "ALLEN",
        "Address": "HSNO:122",
        "Sub_name": "dbms",
        "Credit": 5
    },
    {
        "reg_no": 503,
        "fname": "JONES",
        "lname": "BLAKE",
        "Address": "HSNO:123",
        "Sub_name": "sw engineering",
        "Credit": 9
    },
    {
        "reg_no": 504,
        "fname": "JAMES",
        "lname": "JEORGE",
        "Address": "HSNO:124",
        "Sub_name": "sw engineering",
        "Credit": 7
    },
    {
        "reg_no": 505,
        "fname": "JAMES",
        "Address": "HSNO:124",
        "Sub_name": "dbms",
        "Credit": 4
    }
]);

db.createCollection("COURSE");
db.COURSE.insertMany([
    {"c_code": 201, "c_name": "MCA"},
    {"c_code": 202, "c_name": "MBA"},
    {"c_code": 203, "c_name": "B-TECH"},
    {"c_code": 204, "c_name": "M-TECH"}
]);

db.STUDENT.find().pretty();

db.STUDENT.aggregate([
    {  "$group": {
        "_id": "$Sub_name",
        "minCredit": { "$min": "$Credit" },
        "maxCredit": { "$max": "$Credit" }
    }}
]);

db.STUDENT.find({ "fname": { "$ne": "JAMES" } }).pretty();
