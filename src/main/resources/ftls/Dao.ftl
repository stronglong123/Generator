package ${BasePackageName}${DaoPackageName};

import ${BasePackageName}${EntityPackageName}.${ClassName};
import org.apache.ibatis.annotations.Mapper;
import com.yijiupi.himalaya.ibatis.type.PageResult;

import java.util.List;

/**
 * @author ${Author}
 * @date  ${Date}
 */
public interface ${ClassName}Mapper {

     ${ClassName} detail(Long id);

     PageResult<${ClassName}> pageList(${ClassName} ${EntityName});

     List<${ClassName}> list(${ClassName} ${EntityName});

     int insert(${ClassName} ${EntityName});

     int insertBatch(List<${ClassName}> ${EntityName}s);

     int update(${ClassName} ${EntityName});

     int delete(${ClassName} ${EntityName});

}