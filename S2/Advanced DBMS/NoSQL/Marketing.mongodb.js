use Marketing;
db.createCollection("EMPLOYEE");
db.EMPLOYEE.insertMany([
    {
        "emp_id": 101,
        "emp_name": "SMITH",
        "address": "HNO:123",
        "location": "CLT"
    },
    {
        "emp_id": 102,
        "emp_name": "ALLEN",
        "address": "HNO:456",
        "location": "EKM"
    },
    {
        "emp_id": 103,
        "emp_name": "JONES",
        "address": "HNO:789",
        "location": "EKM"
    },
    {
        "emp_id": 104,
        "emp_name": "JAMES",
        "address": "HNO:321",
        "location": "TVM"
    }
]);

db.createCollection("PRODUCT");
db.PRODUCT.insertMany([
    {
        "p_id": 201,
        "p_name": "laptop",
        "stock": 50,
        "price": 40000.00
    },
    {
        "p_id": 202,
        "p_name": "mobile phone",
        "stock": 70,
        "price": 25000.00
    },
    {
        "p_id": 203,
        "p_name": "pen drive",
        "stock": 25,
        "price": 1000.00
    },
    {
        "p_id": 204,
        "p_name": "smart watch",
        "stock": 100,
        "price": 30000.00
    }
]);

db.EMPLOYEE.updateMany(
    { "location" :"EKM" },
    { $set: { "location" :"ERN" } }
);

db.EMPLOYEE.find().sort({ "emp_name": 1 });

db.PRODUCT.find({ "price": { $gt : 25000 } });
