package ${BasePackageName}${InterfacePackageName};

import ${BasePackageName}${EntityPackageName}.${ClassName};
import com.yijiupi.himalaya.base.search.PageList;

import java.util.List;

/**
 * @author ${Author}
 * @date  ${Date}
 */
public interface ${IClassName}Service {

     ${ClassName} detail(Long id);

     PageList<${ClassName}> pageList(${ClassName} ${EntityName});

     void insert(${ClassName} ${EntityName});

     void insertBatch(List<${ClassName}> ${EntityName}s);

     void update(${ClassName} ${EntityName});

     void delete(${ClassName} ${EntityName});

}
