
import java.io.File;
import java.util.List;
import org.bson.Document;
import org.junit.Test;

public class MongoGridFSTest {

    /**
     * 先上传
     */
    @Test
    public void upload() {
        File file = new File("C:/Users/Administrator/Desktop/Java持久化之myBatis3.pdf");
        String databaseName = "test";
        String objectId = MongoDbUpload.uploadFileToGridFS(file, databaseName);
        System.out.println(objectId);
        System.out.println("文件上传成功");
    }

    /**
     * 测试下载
     */
    @Test
    public void download() {
        //System.out.println(objectId);
        File file = new File("D:/1.pdf");
        String databaseName = "test";
        MongoDbUpload.downloadFile("594b8298932ed623249dea18", file, databaseName);
        System.out.println("文件下载成功");
    }

    /**
     * 最后将上传的信息删除
     */
    @Test
    public void delete() {
        String databaseName = "test";
        MongoDbUpload.deleteByObjectId("594b3b53932ed60b043ac4c8", databaseName);
    }


    @Test
    public void find() {
        List results = MongoDbUpload.find("test");
        for (Object file : results) {
            System.out.println(file.toString());
        }
    }


    @Test
    public void findBy() {
        Document filter = new Document();
        filter.append("filename", "深入理解Java虚拟机：JVM高级特性与最佳实践.pdf");
        List results = MongoDbUpload.findBy("test", filter);
        for (Object file : results) {
            System.out.println(file);
        }
    }
}