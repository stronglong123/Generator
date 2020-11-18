package ${BasePackageName}${ServicePackageName};

import ${BasePackageName}${BlPackageName}.${ClassName}ServiceImpl;
import ${BasePackageName}${EntityPackageName}.${ClassName};
${InterfaceImport}
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.junit.Test;
import org.junit.runner.RunWith;
import java.util.ArrayList;
import java.util.List;
import com.alibaba.fastjson.JSON;
/**
 * @author ${Author}
 * @date  ${Date}
 */

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class ${ClassName}ServiceImplTest {
    @Autowired
    private ${ClassName}ServiceImpl ${EntityName}Service;

    ${Override}
    @Test
    public void detail(){
        ${EntityName}Service.detail(id);
        System.out.println(JSON.toJSONString(""));
    }
    ${Override}
    @Test
    public void pageList() {
        ${ClassName} ${EntityName} = new ${ClassName}();
        ${EntityName}Service.pageList(${EntityName});
        System.out.println(JSON.toJSONString(""));
    }
    ${Override}
    @Test
    public void insert() {
        ${ClassName} ${EntityName} = new ${ClassName}();
        ${EntityName}Service.insert(${EntityName});
    }
    ${Override}
    @Test
    public void insertBatch(){
        List<${ClassName}> ${EntityName}s = new ArrayList();
        ${EntityName}Service.insertBatch(${EntityName}s);
    }
    ${Override}
    @Test
    public void update() {
        ${ClassName} ${EntityName} = new ${ClassName}();
        ${EntityName}Service.update(${EntityName});
    }
    ${Override}
    @Test
    public void delete() {
        ${ClassName} ${EntityName} = new ${ClassName}();
        ${EntityName}Service.delete(${EntityName});
    }

}
