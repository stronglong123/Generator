package ${BasePackageName}${ServicePackageName};

import ${BasePackageName}${BlPackageName}.${ClassName}BL;
import ${BasePackageName}${EntityPackageName}.${ClassName};
${InterfaceImport}
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.dubbo.config.annotation.Service;
import com.yijiupi.himalaya.base.search.PageList;

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
    public ${ClassName} detail(Long id){
        return ${EntityName}Bl.detail(id);
    }
    ${Override}
    public PageList<${ClassName}> pageList(${ClassName} ${EntityName}) {
        return ${EntityName}Bl.pageList(${EntityName});
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
