use Empmapping;
db.createCollection("EMPLOYEE");
db.EMPLOYEE.insertMany([
    {
        "ssn": 301,
        "E_name": "ALLEN",
        "Address": "HNO:123",
        "Ph_no": 1234567891,
        "department": "DEP1"
    },
    {
        "ssn": 302,
        "E_name": "SMITH",
        "Address": "HNO:456",
        "Ph_no": 23456789123,
        "department": "DEP1"
    },
    {
        "ssn": 303,
        "E_name": "JAMES",
        "Address": "HNO:789",
        "Ph_no": 3456789123,
        "department": "DEP2"
    },
    {
        "ssn": 304,
        "E_name": "JOHN",
        "Address": "HNO:321",
        "Ph_no": 4567891234,
        "department": "DEP3"
    }
]);

db.createCollection("PROJECT");
db.PROJECT.insertMany([
    {"p_id": 401, "p_name": "BILLING SYSTEM", "type": "WEB", "client_name": "BRICK"},
    {"p_id": 402, "p_name": "AIRLINE", "type": "ANDROID", "client_name": "ALLEN"},
    {"p_id": 403, "p_name": "E_BOOK", "type": "CLOUD", "client_name": "ALEN"},
    {"p_id": 404, "p_name": "SMART PARKING", "type": "ANDROID", "client_name": "PETER"}
]);

db.EMPLOYEE.updateOne({ "E_name" :"JOHN" }, { $set: { "Address" :"HNO:301" } });

db.PROJECT.find({ type: { $ne :"ANDROID" } });

db.EMPLOYEE.find().sort({ "E_name": -1 });
