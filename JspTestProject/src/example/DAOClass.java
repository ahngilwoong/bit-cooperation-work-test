package example;


import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import java.util.Objects;
import org.bson.Document;

public class DAOClass {

    public static MongoCursor<Document>  loadDatabase(){

        String db = "db";
        String table = "board";
        MongoClient mongoClient = new MongoClient();
        System.out.println(Objects.isNull(mongoClient));
        MongoDatabase mongoDb = mongoClient.getDatabase(db);
        System.out.println(Objects.isNull(mongoDb));
        MongoCollection<Document> collection = mongoDb.getCollection(table);
        MongoCursor<Document> cursor = collection.find().iterator();

        return cursor;
    }
}
