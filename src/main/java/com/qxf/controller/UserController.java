package com.qxf.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.qxf.ftp.UploadUtil;
import com.qxf.pojo.User;
import com.qxf.service.UserService;
import com.qxf.utils.EnumCode;
import com.qxf.utils.ResultUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

}
