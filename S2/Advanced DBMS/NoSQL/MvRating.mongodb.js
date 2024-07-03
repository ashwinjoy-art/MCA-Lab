use MvRating;
db.createCollection("MOVIE");
db.MOVIE.insertMany([
    {"mv_id": 501, "mv_name": "AVATAR", "language": "ENGLISH", "year": 2009},
    {"mv_id": 502, "mv_name": "THE PRINCESS", "language": "ENGLISH", "year": 2022},
    {"mv_id": 503, "mv_name": "HOME", "language": "MALAYALAM", "year": 2021},
    {"mv_id": 504, "mv_name": "DON", "language": "TAMIL", "year": 2022},
    {"mv_id": 505, "mv_name": "DIRTY DEEDS", "language": "ENGLISH", "year": 2002},
    {"mv_id": 506, "mv_name": "QUARANTINE", "language": "ENGLISH", "year": 2008}
]);

db.createCollection("ACTOR");
db.ACTOR.insertMany([
    {"act_id": 601, "act_name": "SAM", "gender": "M"},
    {"act_id": 602, "act_name": "JOEY KING", "gender": "F"},
    {"act_id": 603, "act_name": "INDRANS", "gender": "M"},
    {"act_id": 604, "act_name": "SURYAH", "gender": "M"}
]);

db.MOVIE.updateOne(
    { "mv_name": "DON" },   
    { $set: { "year": 2021 } }  
);

db.MOVIE.find({ "year": 2022 })

db.MOVIE.find().sort({ "year": 1 })