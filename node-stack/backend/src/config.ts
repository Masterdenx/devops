if (process.env.NODE_ENV && process.env.NODE_ENV === 'development') {
    require('dotenv').config();
}

export default {
    database: {
        url: process.env.DATABASE_URL || 'mongodb://localhost:27017',
        name: process.env.DATABASE_NAME || 'TopicstoreDb'
    },
    app: {
        host: process.env.HOST || '0.0.0.0',
        port: parseInt(process.env.PORT, 10) || 5000
    }
};
