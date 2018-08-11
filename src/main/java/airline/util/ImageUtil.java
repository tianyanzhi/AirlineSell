package airline.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/11 0011 14:01
 * @Version 1.0
 * @mark null
 * @Description
 */


public class ImageUtil {

    public static String getBingEveryDayPicAdress() {
        return getImageAdress();
    }

    private static String getImageAdress() {
        String str = "http://s.cn.bing.net";
        String url = "http://cn.bing.com/HPImageArchive.aspx?format=xml&idx=0&n=1";
        String xml = null;
        try {
            xml = getXmlStringFormBingWithHttp(url);
        } catch (Exception e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
        String reStr = null;
        try {
            //用dom4j来解析xml文件
            Document doc = DocumentHelper.parseText(xml);
            Element rootElement = doc.getRootElement();
            Iterator iterator2 = rootElement.elementIterator("image");
            while (iterator2.hasNext()) {
                Element element2 = (Element) iterator2.next();
                reStr = element2.elementText("url");
            }
            return str.trim() + reStr.trim();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    private static String getXmlStringFormBingWithHttp(String urlStr) throws Exception {
        URL url = new URL(urlStr);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.connect();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
        String line;
        StringBuffer stringBuffer = new StringBuffer();
        while ((line = bufferedReader.readLine()) != null) {
            stringBuffer.append(line);
        }
        bufferedReader.close();
        httpURLConnection.disconnect();
        return stringBuffer.toString();
    }
}