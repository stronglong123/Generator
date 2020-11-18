package ${BasePackageName}${ControllerPackageName};

import com.yijiupi.himalaya.api.supplychain.advice.aop.Log;
import ${BasePackageName}${EntityPackageName}.${ClassName};
import ${BasePackageName}${ServicePackageName}.${ClassName}Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.List;
import com.alibaba.fastjson.JSON;

/**
 * @author ${Author}
 * @date  ${Date}
 */
@RestController
public class ${ClassName}Controller {
    private static final Logger LOGGER = LoggerFactory.getLogger(${ClassName}Controller.class);

    @Autowired
    private ${ClassName}Service ${EntityName}Service;

    @PostMapping("/${EntityName}/list")
    public Object list(@RequestBody ${ClassName} ${EntityName}) {
        LOGGER.info("查询参数：{}", JSON.toJSONString(${EntityName}));
        List<${ClassName}> ${EntityName}s = ${EntityName}Service.list(${EntityName});
        return ${EntityName}s;
    }

    @GetMapping("/${EntityName}/detail")
    public Object detail(@RequestParam Long id) {
        ${ClassName} ${EntityName} = ${EntityName}Service.detail(id);
        return ${EntityName};
    }

    @Log("新增")
    @PostMapping("/${EntityName}/insert")
    public Boolean insert(@RequestBody ${ClassName} ${EntityName}) {
        LOGGER.info("新增参数：{}", JSON.toJSONString(${EntityName}));
        ${EntityName}Service.insert(${EntityName});
        return true;
    }

    @Log("批量新增")
    @PostMapping("/${EntityName}/${EntityName}/insertBatch")
    public Boolean insertBatch(@RequestBody List<${ClassName}> ${EntityName}s) {
        LOGGER.info("批量新增：{}", JSON.toJSONString(${EntityName}s));

        ${EntityName}Service.insertBatch(${EntityName}s);
        return true;
    }

    @Log("修改")
    @PostMapping("/${EntityName}/update")
    public Boolean update(@RequestBody ${ClassName} ${EntityName}) {
        LOGGER.info("修改：{}", JSON.toJSONString(${EntityName}));
        ${EntityName}Service.update(${EntityName});
        return true;
    }

    @Log("删除")
    @PostMapping("/${EntityName}/delete")
    public Boolean delete(@RequestBody ${ClassName} ${EntityName}) {
        LOGGER.info("删除：{}", JSON.toJSONString(${EntityName}));
        ${EntityName}Service.delete(${EntityName});
        return true;
    }

}
