package ${BasePackageName}${ServicePackageName};

import ${BasePackageName}${BlPackageName}.${ClassName}BL;
import ${BasePackageName}${EntityPackageName}.${ClassName};
${InterfaceImport}
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.dubbo.config.annotation.Service;

import java.util.List;

/**
 * @author ${Author}
 * @date  ${Date}
 */
@Service
public class ${ClassName}Service${Impl} {
    @Autowired
    private ${ClassName}BL ${EntityName}Bl;
    ${Override}
    public ${ClassName} detail(String id){
        return ${EntityName}Bl.detail(id);
    }
    ${Override}
    public List<${ClassName}> list(${ClassName} ${EntityName}) {
        return ${EntityName}Bl.list(${EntityName});
    }
    ${Override}
    public void insert(${ClassName} ${EntityName}) {
        ${EntityName}Bl.insert(${EntityName});
    }
    ${Override}
    public void insertBatch(List<${ClassName}> ${EntityName}s){
        ${EntityName}Bl.insertBatch(${EntityName}s);
    }
    ${Override}
    public void update(${ClassName} ${EntityName}) {
        ${EntityName}Bl.update(${EntityName});
    }
    ${Override}
    public void delete(${ClassName} ${EntityName}) {
        ${EntityName}Bl.delete(${EntityName});
    }

}
