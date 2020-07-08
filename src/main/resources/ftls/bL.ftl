package ${BasePackageName}${blPackageName};

import ${BasePackageName}${DaoPackageName}.${ClassName}Mapper;
import ${BasePackageName}${EntityPackageName}.${ClassName};
${InterfaceImport}
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ${Author}
 * @date  ${Date}
 */
@Service
public class ${ClassName}BL {
    @Autowired
    private ${ClassName}Mapper ${EntityName}Mapper;
    ${Override}
    public ${ClassName} detail(String id){
        return ${EntityName}Mapper.detail(id);
    }
    ${Override}
    public List<${ClassName}> list(${ClassName} ${EntityName}) {
        return ${EntityName}Mapper.list(${EntityName});
    }
    ${Override}
    public void insert(${ClassName} ${EntityName}) {
        ${EntityName}Mapper.insert(${EntityName});
    }
    ${Override}
    public void insertBatch(List<${ClassName}> ${EntityName}s){
        ${EntityName}Mapper.insertBatch(${EntityName}s);
    }
    ${Override}
    public void update(${ClassName} ${EntityName}) {
        ${EntityName}Mapper.update(${EntityName});
    }
    ${Override}
    public void delete(${ClassName} ${EntityName}) {
        ${EntityName}Mapper.delete(${EntityName});
    }

}
