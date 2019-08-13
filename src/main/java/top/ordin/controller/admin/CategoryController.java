package top.ordin.controller.admin;

import top.ordin.controller.base.BaseController;
import top.ordin.model.Metas;
import top.ordin.model.bo.ResponseBo;
import top.ordin.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/admin/category")
public class CategoryController extends BaseController {

    @Autowired
    private CategoryService categoryService;

    /**
     * 分类/标签页
     * @return
     */
    @RequestMapping(value = "")
    public String category(HttpServletRequest request){
        categoryService.getAllCategory(request);
        return "admin/category";
    }

    @ResponseBody
    @PostMapping(value = "/update")
    public ResponseBo update(Metas metas){
        return categoryService.updateCategory(metas);
    }

    @ResponseBody
    @PostMapping(value = "/add")
    public ResponseBo add(Metas metas){
        return categoryService.addCategory(metas);
    }


    @ResponseBody
    @PostMapping(value = "/deleteTag")
    public ResponseBo deleteTag(@RequestParam(value = "id", defaultValue = "0") Integer id){
        return categoryService.deleteTag(id);
    }

    @ResponseBody
    @PostMapping(value = "/deleteCate")
    public ResponseBo deleteCate(@RequestParam(value = "id", defaultValue = "0") Integer id){
        return categoryService.deleteCate(id);
    }

}
