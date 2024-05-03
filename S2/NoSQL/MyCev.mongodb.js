use MyCev
db.createCollection("MCA")
db.MCA.insertMany([
    {
        "reg no":1,
        "name":"Adhish",
        "age":21
    },
    {
        "reg no":2,
        "name":"Abi",
        "age":22
    },
    {
        "reg no":3,
        "name":"Adith",
        "age":20
    },
    {
        "reg no":4,
        "name":"Ali",
        "age":21
    },
    {
        "reg no":5,
        "name":"Joju",
        "age":22
    },
    {
        "reg no":6,
        "name":"Nithin",
        "age":21
    },
    {
        "reg no":7,
        "name":"Sonu",
        "age":20
    },
    {
        "reg no":8,
        "name":"Ashwin",
        "age":22
    },
    {
        "reg no":9,
        "name":"Benher",
        "age":23
    },
    {
        "reg no":10,
        "name":"Jibin",
        "age":21
    }
])

db.MCA.find().limit(5)
db.MCA.find().skip(2)
db.MCA.find().sort({age:1})
db.MCA.deleteOne({name:"Adith"})
db.MCA.drop()
db.dropDatabase()
