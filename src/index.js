exports.handler = async (event) => {
    
    const response = {
        statusCode: 200,
        body: {
            "AWS_ACCESS_KEY_ID": process.env.AWS_ACCESS_KEY_ID,
            "AWS_SECRET_ACCESS_KEY": process.env.AWS_SECRET_ACCESS_KEY,
            "AWS_SESSION_TOKEN": process.env.AWS_SESSION_TOKEN
        },
    };
    return response;
};
