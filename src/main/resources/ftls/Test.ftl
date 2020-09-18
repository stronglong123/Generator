package ${BasePackageName}${ServicePackageName};

import ${BasePackageName}${BlPackageName}.${ClassName}ServiceImpl;
import ${BasePackageName}${EntityPackageName}.${ClassName};
${InterfaceImport}
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.junit.Test;
import org.junit.runner.RunWith;
import java.util.List;

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
    public ${ClassName} detail(){
        String id
        return ${EntityName}Service.detail(id);
    }
    ${Override}
    @Test
    public List<${ClassName}> list() {
        ${ClassName} ${EntityName}
        return ${EntityName}Service.list(${EntityName});
    }
    ${Override}
    @Test
    public void insert() {
        ${ClassName} ${EntityName}
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
        ${ClassName} ${EntityName}
        ${EntityName}Service.update(${EntityName});
    }
    ${Override}
    @Test
    public void delete() {
        ${ClassName} ${EntityName}
        ${EntityName}Service.delete(${EntityName});
    }

}
