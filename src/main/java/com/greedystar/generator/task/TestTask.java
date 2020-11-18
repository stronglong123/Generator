package com.greedystar.generator.task;

import com.greedystar.generator.task.base.AbstractTask;
import com.greedystar.generator.utils.ConfigUtil;
import com.greedystar.generator.utils.FileUtil;
import com.greedystar.generator.utils.FreemarketConfigUtils;
import com.greedystar.generator.utils.StringUtil;
import freemarker.template.TemplateException;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @author xialei
 * @date 2019/8/19 17:16
 */
public class TestTask extends AbstractTask {

    public TestTask(String className) {
        super(className);
    }

    @Override
    public void run() throws IOException, TemplateException {
        // 生成Service填充数据
//        Map<String, String> blData = new HashMap<>();
//        blData.put("BasePackageName", ConfigUtil.getConfiguration().getPackageName());
//        blData.put("blPackageName", ConfigUtil.getConfiguration().getPath().getTest());
//        blData.put("EntityPackageName", ConfigUtil.getConfiguration().getPath().getEntity());
//        blData.put("DaoPackageName", ConfigUtil.getConfiguration().getPath().getTest());
//        blData.put("Author", ConfigUtil.getConfiguration().getAuthor());
//        blData.put("Date", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
//        blData.put("ClassName", className);
//        blData.put("EntityName", StringUtil.firstToLowerCase(className));
//        String filePath = FileUtil.getSourcePath() + StringUtil.package2Path(ConfigUtil.getConfiguration()
//                .getPackageName()) + StringUtil.package2Path(ConfigUtil.getConfiguration().getPath().getTest());
//        String fileName;
//        blData.put("Override", "");
//        blData.put("InterfaceImport", "");
//        fileName = className + "Test.java";
//        System.out.println("Generating " + className + "Test.java");
//        // 生成test文件
//        FileUtil.generateToJava(FreemarketConfigUtils.TYPE_TEST, blData, filePath + fileName);

        // 生成Service填充数据
        Map<String, String> testData = new HashMap<>();
        testData.put("BasePackageName", ConfigUtil.getConfiguration().getPackageName());
        testData.put("ServicePackageName", ConfigUtil.getConfiguration().getPath().getTest());
        testData.put("EntityPackageName", ConfigUtil.getConfiguration().getPath().getEntity());
        testData.put("BlPackageName", ConfigUtil.getConfiguration().getPath().getTest());
        testData.put("Author", ConfigUtil.getConfiguration().getAuthor());
        testData.put("Date", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        testData.put("ClassName", className);
        testData.put("EntityName", StringUtil.firstToLowerCase(className));
        String filePath = FileUtil.getSourcePath() + StringUtil.package2Path(ConfigUtil.getConfiguration().getPackageName()) + StringUtil.package2Path(ConfigUtil.getConfiguration().getPath().getTest());
        String fileName;

        testData.put("Impl", "ImplService");
        testData.put("Override", "");
        testData.put("InterfaceImport", "");

        fileName = className + "ServiceImplTest.java";
        System.out.println("Generating " + className + "Test.java");

        // 生成Service文件
        FileUtil.generateToJava(FreemarketConfigUtils.TYPE_TEST, testData, filePath + fileName);
    }
}
