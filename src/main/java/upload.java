package main.java;

import com.mongodb.Block;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientOptions;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.gridfs.GridFSBucket;
import com.mongodb.client.gridfs.GridFSBuckets;
import com.mongodb.client.gridfs.model.GridFSFile;
import com.mongodb.client.gridfs.model.GridFSUploadOptions;
import org.bson.Document;
import org.bson.types.ObjectId;
import java.io.*;

/**
 * MONGODB上传和下载
 */
public class upload {

    private final static String URL = "47.105.181.238";
    private final static Integer PORT = 27017;
    private final static String DATABASE = "local";
    private static MongoClient client;
    private static MongoDatabase db;
    private static GridFSBucket bucket;

    static {
        MongoClientOptions options = MongoClientOptions.builder().build();
        ServerAddress address = new ServerAddress(URL, PORT);
        client = new MongoClient(address, options);
        db = client.getDatabase(DATABASE);
        /*后面的名字可以自定义
         * MongoDb会在数据库生成两个collections（users.chunks和users.files）
         * users.files存放文件信息
         * users.chunks存放文件的二进制流
         */
        bucket = GridFSBuckets.create(db, "users");
    }

    /**
     * 文件上传
     */
    public static void fileUp() {
        File png = new File("D:\\转正申请表（付金山）20190819.xlsx");
        GridFSUploadOptions options = null;
        InputStream inputStream = null;
        try {
            inputStream = new FileInputStream(png);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        Document document = new Document();
        document.put("name", "liuli");
        //metadata方法可以为文件上传的同时附加一些元数据
        options = new GridFSUploadOptions().chunkSizeBytes(358400).metadata(document);
        ObjectId id = bucket.uploadFromStream("转正申请表（付金山）20190819.xlsx", inputStream, options);
        System.out.println("objectid=" + id);
    }

    /**
     * 查询文件属性
     */
    public static void fileDown() {
        bucket.find().forEach(new Block<GridFSFile>() {

            @Override
            public void apply(GridFSFile t) {
                //GridFSFile封装了所有字段
                System.out.println(t.getFilename());
            }

        });
    }

    /**
     * 下载文件
     *
     * @throws FileNotFoundException
     */
    public static void fileDownLoad() throws FileNotFoundException {
        bucket.downloadToStream("转正申请表（付金山）20190819.xlsx", new FileOutputStream(new File("D:\\img\\转正申请表（付金山）20190819.xlsx")));
    }

    public static void main(String[] args) throws FileNotFoundException {
        fileUp();
        //System.out.println("sjdfkjslkjfd");
        fileDownLoad();
    }
}
