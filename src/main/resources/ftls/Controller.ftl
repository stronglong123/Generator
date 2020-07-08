package ${BasePackageName}${ControllerPackageName};

import ${BasePackageName}${EntityPackageName}.${ClassName};
import ${BasePackageName}${ServicePackageName}.${ClassName}Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author ${Author}
 * @date  ${Date}
 */
@RestController
@RequestMapping(value = "/${EntityName}")
public class ${ClassName}Controller {
    @Autowired
    private ${ClassName}Service ${EntityName}Service;

    @PostMapping("/list")
    public Object list(@RequestBody ${ClassName} ${EntityName}) {
        List<${ClassName}> ${EntityName}s = ${EntityName}Service.list(${EntityName});
        return ${EntityName}s;
    }

    @GetMapping("/detail")
    public Object detail(@RequestParam String id) {
        ${ClassName} ${EntityName} = ${EntityName}Service.detail(id);
        return ${EntityName};
    }

    @PostMapping("/insert")
    public Boolean insert(@RequestBody ${ClassName} ${EntityName}) {
        ${EntityName}Service.insert(${EntityName});
        return true;
    }

    @PostMapping("/insertBatch")
    public Boolean insertBatch(@RequestBody List<${ClassName}> ${EntityName}s) {
        ${EntityName}Service.insertBatch(${EntityName}s);
        return true;
    }

    @PostMapping("/update")
    public Boolean update(@RequestBody ${ClassName} ${EntityName}) {
        ${EntityName}Service.update(${EntityName});
        return true;
    }

    @PostMapping("/delete")
    public Boolean delete(@RequestBody ${ClassName} ${EntityName}) {
        ${EntityName}Service.delete(${EntityName});
        return true;
    }

}
