
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.gridfs.GridFSBucket;
import com.mongodb.client.gridfs.GridFSBuckets;
import com.mongodb.client.gridfs.GridFSFindIterable;
import com.mongodb.client.gridfs.model.GridFSUploadOptions;

import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class MongoDbUpload {
    private static Logger log = LoggerFactory.getLogger(MongoDbUpload.class);

    private static final class MongoInstance {
        public final static MongoClient client;

        static {
            client = new MongoClient("localhost", 27017);
        }
    }

    public static MongoDatabase getDatabase(String databaseName) {
        return MongoInstance.client.getDatabase(databaseName);
    }

    /**
     * 上传文件
     *
     * @param file
     * @param databaseName
     * @return
     */
    public static String uploadFileToGridFS(File file, String databaseName) {
        InputStream in = null;
        String returnId = null;
        String pathName = file.getPath();
        String[] pathNameArray = pathName.split("\\\\");
        String[] name = pathNameArray[pathNameArray.length - 1].split("\\.");
        String filename = name[0];
        String type = name[name.length - 1];
        try {
            in = new FileInputStream(file);
            GridFSBucket bucket = GridFSBuckets.create(getDatabase(databaseName));
            GridFSUploadOptions options = new GridFSUploadOptions();
            //设置除filename以为的其他信息
            Document metadata = new Document();
            metadata.append("contentType", type);
            options.metadata(metadata);
            ObjectId fileId = bucket.uploadFromStream(filename + type, in, options);
            returnId = fileId.toHexString();
            log.info("文件上传成功");
        } catch (IOException e) {
            log.info("upload fail:" + e);
        } finally {
            try {
                in.close();
            } catch (IOException e) {
                log.info("close inputstream fail:" + e);
            }
        }
        return returnId;
    }

    /**
     * 通过objectid和file下载文件
     *
     * @param objectId
     * @param file
     * @param databaseName
     */
    public static void downloadFile(String objectId, File file, String databaseName) {
        OutputStream os = null;
        try {
            os = new FileOutputStream(file);
            GridFSBucket bucket = GridFSBuckets.create(getDatabase(databaseName));
            bucket.downloadToStream(new ObjectId(objectId), os);
            log.info("文件下载成功");
        } catch (IOException e) {
            log.info("download fail:" + e);
        } finally {
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                    log.info("close outputstream fail:" + e);
                }
            }
        }
    }

    /**
     * 通过objectid删除文件
     *
     * @param objectId
     * @param databaseName
     */
    public static void deleteByObjectId(String objectId, String databaseName) {
        GridFSBucket bucket = GridFSBuckets.create(getDatabase(databaseName));
        bucket.delete(new ObjectId(objectId));
        log.info("文件删除成功");
    }


    /**
     * 查询文件
     *
     * @param databaseName
     */
    public static List find(String databaseName) {
        GridFSBucket bucket = GridFSBuckets.create(getDatabase(databaseName));
        GridFSFindIterable iterable = bucket.find();
        MongoCursor mongoCursor = iterable.iterator();
        List results = new ArrayList();
        while (mongoCursor.hasNext()) {
            results.add(mongoCursor.next());
        }
        return results;
    }

    /**
     * 查询文件
     *
     * @param databaseName
     */
    public static List findBy(String databaseName, Bson filter) {
        GridFSBucket bucket = GridFSBuckets.create(getDatabase(databaseName));
        GridFSFindIterable iterable = bucket.find(filter);
        MongoCursor mongoCursor = iterable.iterator();
        List results = new ArrayList();
        while (mongoCursor.hasNext()) {
            results.add(mongoCursor.next());
        }
        return results;
    }
}



