package ${BasePackageName}${InterfacePackageName};

import ${BasePackageName}${EntityPackageName}.${ClassName};

import java.util.List;

/**
 * @author ${Author}
 * @date  ${Date}
 */
public interface ${IClassName}Service {

     ${ClassName} detail(String id);

     List<${ClassName}> list(${ClassName} ${EntityName});

     void insert(${ClassName} ${EntityName});

     void insertBatch(List<${ClassName}> ${EntityName}s);

     void update(${ClassName} ${EntityName});

     void delete(${ClassName} ${EntityName});

}
