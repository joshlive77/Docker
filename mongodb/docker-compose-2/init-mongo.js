db.createUser(
    {
        user: "mongoadmin",
        pwd: "mongoadmin",
        roles: [
            {
                role: "readWrite",
                db: "mongo-test"
            }
        ]
    }
)