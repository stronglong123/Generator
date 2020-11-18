package ${BasePackageName}${blPackageName};

import ${BasePackageName}${DaoPackageName}.${ClassName}Mapper;
import ${BasePackageName}${EntityPackageName}.${ClassName};
${InterfaceImport}
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.yijiupi.himalaya.base.search.PageList;
import com.yijiupi.himalaya.ibatis.type.PageResult;
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
    public ${ClassName} detail(Long id){
        return ${EntityName}Mapper.detail(id);
    }
    ${Override}
    public PageList<${ClassName}> pageList(${ClassName} ${EntityName}) {
         PageResult<${ClassName}> pageResult = ${EntityName}Mapper.pageList(${EntityName});
         return pageResult.toPageList();
    }
    ${Override}
    @Transactional
    public void insert(${ClassName} ${EntityName}) {
        ${EntityName}Mapper.insert(${EntityName});
    }
    ${Override}
    @Transactional
    public void insertBatch(List<${ClassName}> ${EntityName}s){
        ${EntityName}Mapper.insertBatch(${EntityName}s);
    }
    ${Override}
    @Transactional
    public void update(${ClassName} ${EntityName}) {
        ${EntityName}Mapper.update(${EntityName});
    }
    ${Override}
    @Transactional
    public void delete(${ClassName} ${EntityName}) {
        ${EntityName}Mapper.delete(${EntityName});
    }

}
