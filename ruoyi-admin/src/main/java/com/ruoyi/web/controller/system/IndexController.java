package com.ruoyi.web.controller.system;

import com.ruoyi.common.config.Global;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.web.core.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 首页 业务处理
 *
 * @author renfei
 */
@Controller
public class IndexController extends BaseController {
//    @Autowired
//    private ISysMenuService menuService;

    // 系统首页
    @GetMapping("/index")
    public String index(ModelMap mmap) {
        // 取身份信息
        SysUser user = getUser();
        // 根据用户id取出菜单
        mmap.put("user", user);
        mmap.put("copyrightYear", Global.getCopyrightYear());
        return "index";
    }

    // 系统介绍
    @GetMapping("/system/main")
    public String main(ModelMap mmap) {
        mmap.put("version", Global.getVersion());
        return "main";
    }
}
