package com.qxf.ftp;

import com.xiaoleilu.hutool.date.DateUtil;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;
import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.*;

/**
 * 上传辅助类
 */
public final class UploadUtil {


    //private static final Logger logger = LogManager.getLogger();

    /**
     * 上传文件缓存大小限制
     */
    private static int fileSizeThreshold = 1024 * 1024 * 1;

    /**
     * 上传文件临时目录
     */
    private static final String uploadFileDir = "/uploads/";

    /**
     * 获取所有文本域
     *
     * @param request
     * @param saveDir
     */
    public static final List<?> getFileItemList(HttpServletRequest request, File saveDir) throws FileUploadException {
        if (!saveDir.isDirectory()) {
            saveDir.mkdir();
        }
        List<?> fileItems = null;
        RequestContext requestContext = new ServletRequestContext(request);
        if (FileUpload.isMultipartContent(requestContext)) {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setRepository(saveDir);
            factory.setSizeThreshold(fileSizeThreshold);
            ServletFileUpload upload = new ServletFileUpload(factory);
            fileItems = upload.parseRequest(request);
        }
        return fileItems;
    }

    /**
     * 获取文本域
     *
     * @param request
     * @param saveDir
     * @param fieldName
     */
    public static final FileItem[] getFileItem(HttpServletRequest request, File saveDir, String... fieldName)
            throws FileUploadException {
        if (fieldName == null || saveDir == null) {
            return null;
        }
        List<?> fileItemList = getFileItemList(request, saveDir);
        FileItem fileItem = null;
        FileItem[] fileItems = new FileItem[fieldName.length];
        for (int i = 0; i < fieldName.length; i++) {
            for (Iterator<?> iterator = fileItemList.iterator(); iterator.hasNext(); ) {
                fileItem = (FileItem) iterator.next();
                // 根据名字获得文本域
                if (fieldName[i] != null && fieldName[i].equals(fileItem.getFieldName())) {
                    fileItems[i] = fileItem;
                    break;
                }
            }
        }
        return fileItems;
    }

    /**
     * 上传文件处理(支持批量)
     *
     * @param request
     * @param namespace
     */
    public static Map<String, String> uploadImage(HttpServletRequest request, String namespace) {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        Map<String, String> fileNames = new HashMap<String, String>();
        if (multipartResolver.isMultipart(request)) {
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Iterator<String> iterator = multiRequest.getFileNames();
            while (iterator.hasNext()) {
                String key = iterator.next();
                MultipartFile multipartFile = multiRequest.getFile(key);
                if (multipartFile != null) {
                    String name = multipartFile.getOriginalFilename();
                    if (!"".equals(name)) {
                        if (name.indexOf(".") == -1 && "blob".equals(name)) {
                            name = name + ".png";
                        }
                        String uuid = UUID.randomUUID().toString();
                        String postFix = name.substring(name.lastIndexOf(".")).toLowerCase();
                        String fileName = uuid + postFix;
                        try {

                            String filePath = remove2Sftp(multipartFile.getBytes(), namespace, fileName);
                            if (filePath != null && !"".equals(filePath)) {
                                fileNames.put(key, filePath);
                            }
                        } catch (IOException e1) {
                            e1.printStackTrace();
                        }
                    }
                }
            }
        }
        return fileNames;
    }

    public static String[] uploadImage1(HttpServletRequest request, String namespace) {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        String[] fileNames = null;
        if (multipartResolver.isMultipart(request)) {
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Map<String, MultipartFile> map = multiRequest.getFileMap();
            int i = 0;
            fileNames = new String[map.size()];
            for (String key : map.keySet()) {
                MultipartFile multipartFile = map.get(key);
                System.out.println(multipartFile);
                if (multipartFile != null) {
                    String name = multipartFile.getOriginalFilename();
                    if (!"".equals(name)) {
                        if (name.indexOf(".") == -1 && "blob".equals(name)) {
                            name = name + ".png";
                        }
                        String uuid = UUID.randomUUID().toString();
                        String postFix = name.substring(name.lastIndexOf(".")).toLowerCase();
                        String fileName = uuid + postFix;
                        try {

                            String filePath = remove2Sftp(multipartFile.getBytes(), namespace, fileName);
                            String dir = "";
                            if (filePath != null && !"".equals(filePath)) {
                                fileNames[i] = dir + filePath;
                                i++;
                            }
                        } catch (IOException e1) {
                            e1.printStackTrace();
                        }
                    }
                }
            }
        }
        return fileNames;
    }

    /**
     * 上传本地图片到ftp服务器
     *
     * @param filePath
     * @param namespace
     */
    public static String uploadImage(String filePath, String namespace) {
        String path = "";
        if ((filePath != null && !"".equals(filePath)) && (namespace != null && !"".equals(namespace))) {
            path = remove2Sftp(filePath, namespace);
        }
        return path;
    }

    /**
     * 获取上传文件临时目录
     *
     * @param request
     */
    public static String getUploadDir(HttpServletRequest request) {
        return request.getServletPath() + uploadFileDir + File.separator;
    }

    /**
     * 移动文件到SFTP,并生产随机的名称
     *
     * @param filePath
     * @param namespace
     */
    private static String remove2Sftp(String filePath, String namespace) {
        File file = new File(filePath);
        if (!file.exists()) {
            throw new RuntimeException("文件" + filePath + "不存在");
        }
        String dir = "";
        String path = (dir + "/" + namespace).replace("//", "/");

        String name = file.getName(); //获取文件名称
        String uuid = UUID.randomUUID().toString(); //获取随机生产的UUID
        String postFix = name.substring(name.lastIndexOf(".")).toLowerCase();  //获取图片后缀
        String fileName = uuid + postFix;

        System.out.println("fileName=" + fileName);
        System.out.println("path=" + path);
        System.out.println("filePath=" + filePath);

        FTPFileTransmit ftp = new FTPFileTransmit();
        ftp.createDirectory(path);
        ftp.saveInFTP(path, fileName, File2byte(filePath));

        String tempPath = "";
        if (dir.contains("home")) {
            tempPath = (namespace + "/" + fileName).replace("//", "/").replace("\\", "/");
        } else {
            tempPath = (path + "/" + fileName).replace("//", "/").replace("\\", "/");
        }
        System.out.println("tempPath=" + tempPath);
        return tempPath;
    }

    /**
     * 移动文件到SFTP
     *
     * @param byteFile
     * @param namespace
     * @param fileName
     */
    public static String remove2Sftp(byte[] byteFile, String namespace, String fileName) {
        if (byteFile == null) {
            throw new RuntimeException("文件" + fileName + "不存在");
        }
        String dir = "";
        String path = (dir + "/" + namespace).replace("//", "/");
        System.out.println("init ftp");
        System.out.println("path=" + path);
        System.out.println("fileName=" + fileName);
        FTPFileTransmit ftp = new FTPFileTransmit();
        ftp.createDirectory(path);
        ftp.saveInFTP(path, fileName, byteFile);
        if (dir.contains("home")) {
            return (namespace + "/" + fileName).replace("//", "/").replace("\\", "/");
        } else {
            return (path + "/" + fileName).replace("//", "/").replace("\\", "/");
        }
    }

//    /**
//     * 微信移动文件到SFTP
//     * @author Salad
//     * @date 2017年7月17日 上午10:56:28
//     * @param mediaId
//     * @param namespace
//     * @return
//     * @throws WxErrorException
//     * @throws IOException
//     */
//    public static String wxSftp(String mediaId, String namespace)
//            throws WxErrorException, IOException {
//        // 获得一个在系统临时目录的文件
//        byte[] in = null;
//        File file = null;
//        try {
//            file = wxMpService.getMaterialService().mediaDownload(mediaId);
//
//            FileInputStream fis;
//            fis = new FileInputStream(file);
//            ByteArrayOutputStream bos = new ByteArrayOutputStream();
//            byte[] b = new byte[1024];
//            int n;
//            while ((n = fis.read(b)) != -1) {
//                bos.write(b, 0, n);
//            }
//            fis.close();
//            bos.close();
//            in = bos.toByteArray();
//        } catch (FileNotFoundException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//
//        System.out.println(in.length);
//        if (in.length > 0) {
//            String dir = "";
//            String path = (dir + "/" + namespace).replace("//", "/");
//            String uuid = UUID.randomUUID().toString();
//            String fileType = FileUtil.getType(file);
//            System.out.println("文件类型：：：：" + fileType);
//            String postFix = ".jpg";
//            String fileName = uuid + postFix;
//            System.out.println("init ftp");
//            remove2Sftp(in, path, fileName);
//            return (path + "/" + fileName).replace("//", "/")
//                    .replace("\\", "/");
//        } else {
//            return "";
//        }
//    }

    /**
     * 上传文件到本地服务器处理(支持批量)
     *
     * @param request
     * @param namespace
     * @param isFtp
     */
    public static Map<String, String> uploadImageDir(HttpServletRequest request, String namespace, boolean isFtp) {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        Map<String, String> fileNames = new HashMap<String, String>();
        if (multipartResolver.isMultipart(request)) {
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Iterator<String> iterator = multiRequest.getFileNames();
            String tem_path = uploadFileDir + namespace + "/" + DateUtil.NORM_DATETIME_PATTERN + "/";
            String pathDir = request.getSession().getServletContext().getRealPath(tem_path);
            File dirFile = new File(pathDir);
            if (!dirFile.isDirectory()) {
                dirFile.mkdirs();
            }
            while (iterator.hasNext()) {
                String key = iterator.next();
                MultipartFile multipartFile = multiRequest.getFile(key);
                if (multipartFile != null) {
                    String name = multipartFile.getOriginalFilename();
                    if (!"".equals(name)) {
                        if (name.indexOf(".") == -1 && "blob".equals(name)) {
                            name = name + ".png";
                        }
                        String uuid = UUID.randomUUID().toString();
                        String postFix = name.substring(name.lastIndexOf(".")).toLowerCase();
                        String fileName = uuid + postFix;
                        try {
                            FileUtils.writeByteArrayToFile(new File(pathDir, fileName), multipartFile.getBytes());
                            if (isFtp) {
                                //同步到ftp服务器
                                String ftpPath = remove2Sftp(multipartFile.getBytes(), namespace, fileName);
                                System.out.println("同步到ftp服务器成功,ftpPath=" + ftpPath);
                            }
                            fileNames.put(key, tem_path + fileName);
                        } catch (IOException e1) {
                            e1.printStackTrace();
                        }
                    }
                }
            }
        }
        return fileNames;
    }

    /**
     * 上传文件到本地服务器处理(支持批量)
     *
     * @param request
     * @param namespace
     */
    public static Map<String, String> uploadImageDir(HttpServletRequest request, String namespace) {
        return uploadImageDir(request, namespace, false);
    }

//    /**
//     * 获取上传图片的路径
//     * @author Salad
//     * @date 2017年7月17日 上午8:01:23
//     * @param path
//     * @return
//     */
//    public static String getUploadPath(String path){
//        if(path == null || path == ""){
//            path = "/";
//        }
//        return ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath(path);
//    }
//
//    public static void main(String[] args) {
//        try {
//            wxSftp("CSSzvWjLYEDwimyJSmIkj9NughOSa60lc37d93U2hrdlKNnLrVN-FsT","wechat");
//        } catch (WxErrorException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (IOException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        //System.out.println(System.getProperty("user.dir"));//user.dir指定了当前的路径
//    }

    /**
     * 文件转二进制
     *
     * @param filePath
     */
    public static byte[] File2byte(String filePath) {
        byte[] buffer = null;
        try {
            File file = new File(filePath);
            FileInputStream fis = new FileInputStream(file);
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] b = new byte[1024];
            int n;
            while ((n = fis.read(b)) != -1) {
                bos.write(b, 0, n);
            }
            fis.close();
            bos.close();
            buffer = bos.toByteArray();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return buffer;
    }
}

