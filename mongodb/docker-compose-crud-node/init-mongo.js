db.createUser(
    {
        user: "adminM",
        pwd: "mongoadmin",
        roles: [
            {
                role: "readWrite",
                db: "crud-mongo"
            }
        ]
    }
)