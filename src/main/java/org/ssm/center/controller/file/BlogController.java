package org.ssm.center.controller.file;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.center.pojo.kpi.BlogInformation;
import org.ssm.center.pojo.kpi.Msg;
import org.ssm.center.service.blog.BlogInformationService;

import java.util.List;

@Slf4j
@Controller
public class BlogController {

    @Autowired
    BlogInformationService blogInformationService;

    @RequestMapping("/selectAllTag")
    @ResponseBody
    public String selectAllTag(){
        return JSONArray.fromObject(blogInformationService.selectAllTag()).toString();
    }

    @RequestMapping(value = "/selectAllBlog")
    @ResponseBody
    public Msg getAllWithJson(@RequestParam(value = "pn",defaultValue = "1") Integer pn){
        PageHelper.startPage(pn,10);
        List<BlogInformation> list=blogInformationService.getNewBlog();
        //用PageInfo对结果进行包装,其中封装了分页详细信息，包括查询出来得数据,第二个参数可控制连续显示的页数
        PageInfo page = new PageInfo(list,5);
        return Msg.success().add("pageInfo",page);
    }
}
