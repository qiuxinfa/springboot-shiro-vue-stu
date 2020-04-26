package com.qxf.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.ftp.UploadUtil;
import com.qxf.pojo.User;
import com.qxf.service.UserService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ExcelUtil;
import com.qxf.utils.ResultUtil;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: com.qxf.controller
 */
@RestController
@RequestMapping(value = "user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    Map<String, String> uploadImg;

    /**
     * 上传用户头像
     */
    @ResponseBody
    @RequestMapping(value = "/uploadHander", method = RequestMethod.POST)
    public String uploadLogo(HttpServletRequest request) {
        uploadImg = new HashMap<String, String>();
        uploadImg = UploadUtil.uploadImage(request, "vue_shiro_photo/userImg");
        return uploadImg.get("pic");
    }

    @RequestMapping("/upload")
    @ResponseBody
    public String handleFileUpload(MultipartFile file) {
        if (!file.isEmpty()) {
            try {
                /*
                 * 这段代码执行完毕之后，图片上传到了工程的跟路径； 大家自己扩散下思维，如果我们想把图片上传到
                 * d:/files大家是否能实现呢？ 等等;
                 * 这里只是简单一个例子,请自行参考，融入到实际中可能需要大家自己做一些思考，比如： 1、文件路径； 2、文件名；
                 * 3、文件格式; 4、文件大小的限制;
                 */
                BufferedOutputStream out = new BufferedOutputStream(
                        new FileOutputStream(new File(
                                file.getOriginalFilename())));
                System.out.println(file.getName());
                out.write(file.getBytes());
                out.flush();
                out.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return "上传失败," + e.getMessage();
            } catch (IOException e) {
                e.printStackTrace();
                return "上传失败," + e.getMessage();
            }

            return "上传成功";

        } else {
            return "上传失败，因为文件是空的.";
        }
    }

    /**
     * @desc: 查询用户
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public Object findUserByPage(Integer startPage,Integer pageSize,User user) {
        Page<User> page = new Page<User>(startPage,pageSize);
        List<User> list = userService.findUserByPage(page,user);
        return ResultUtil.result(EnumCode.OK.getValue(), "请求成功", list, page.getTotal());
    }

    /**
     * @desc: 新增用户
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public Object addUser(@Valid User userVo, BindingResult bindingResult) {
        return userService.addUser(userVo);
    }

    /**
     * @desc: 批量删除用户
     */
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public Object delUsers(User user) {
        String[] ids = user.getIds();
        if (null == ids || ids.length == 0) {
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        return userService.delUsers(ids);
    }

    /**
     * 修改用户状态
     */
    @RequestMapping(value = "/status", method = RequestMethod.POST)
    public Object editUserStatus(User dto) {
        if (StringUtils.isEmpty(dto.getId()) || null == dto.getEnable()) {
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        return userService.editUserStatus(dto);
    }

    /**
     * 用户修改用户个人信息
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public Object editUserInfo(User vo) {
        return userService.editUserInfo(vo);
    }


    /**
     * 导出报表，这里get和post请求复用了该方法，仅仅是为了测试
     *
     * @return
     */
    @RequestMapping(value = "/export")
    @ResponseBody
    public void export(@RequestBody(required = false) User user,String username,HttpServletResponse response) throws Exception {
        if (user ==null && !StringUtils.isEmpty(username)){
            //GET 请求的参数
            user = new User();
            user.setUsername(username);
        }
        //获取数据
        List<User> list = userService.findAllUser(user);

        //excel标题
        String[] title = {"姓名", "邮箱", "创建时间", "最近登录时间","角色","是否可用"};

        //excel文件名
        String fileName = System.currentTimeMillis() + ".xls";

        //sheet名
        String sheetName = "用户信息";

        //没有数据就传入null吧，Excel工具类有对null判断
        String [][] content = null;

        if (list != null && list.size() > 0){
            content = new String[list.size()][title.length];
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            for (int i = 0; i < list.size(); i++) {
                content[i] = new String[title.length];
                User obj = list.get(i);
                content[i][0] = obj.getUsername();
                content[i][1] = obj.getEmail();
                content[i][2] = obj.getCreateTime() == null ? "" : sdf.format(obj.getCreateTime());
                content[i][3] = obj.getLastLoginTime() == null ? "": sdf.format(obj.getLastLoginTime());
                content[i][4] = obj.getRoleName();
                content[i][5] = obj.getEnable()==1 ? "是" : "否";
            }
        }

        //创建HSSFWorkbook
        HSSFWorkbook wb = ExcelUtil.getHSSFWorkbook(sheetName, title, content);

        //响应到客户端
        try {
//            fileName = new String(fileName.getBytes(), "UTF-8");
//            response.setContentType("application/vnd.ms-excel;charset=utf-8");
            response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
            OutputStream os = response.getOutputStream();
            wb.write(os);
            os.flush();
            os.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    /**
     * 批量导入用户
     *
     */
    @RequestMapping(value = "/import")
    @ResponseBody
    public Object ExcelImport(MultipartFile[] multipartFiles) throws Exception {
        if (multipartFiles == null || multipartFiles.length < 1){
            return ResultUtil.result(EnumCode.INTERNAL_SERVER_ERROR.getValue(),"空数据，导入失败");
        }
        for (MultipartFile file : multipartFiles){
            List<String[]> list = ExcelUtil.readExcel(file);
            if (list.isEmpty()){
                return ResultUtil.result(EnumCode.INTERNAL_SERVER_ERROR.getValue(),"空数据，导入失败");
            }

            for (int i=0;i<list.size();i++){
                String[] values = list.get(i);
                //这里只导入了3列数据：姓名、邮箱和是否可用（0、1），其他列可自行导入，现转换格式再写入数据库，比如：
                //导入角色的时候，根据角色名称查找角色id，如果角色id不存在，可以默认为学生之类的处理
                User user = new User();
                user.setUsername(values[0]);
                user.setEmail(values[1]);
                user.setEnable(values[2] == null ? 1 : Integer.valueOf(values[2]));
                user.setCreateTime(new Date());
                user.setId(UUID.randomUUID().toString().replace("-",""));
                user.setPassword("a123456");
                user.setRoleId("3");
                userService.addUser(user);
            }
        }
        //前端可以通过状态码，判断文件是否上传成功
        return ResultUtil.result(EnumCode.OK.getValue(),"文件上传成功");
    }

}
