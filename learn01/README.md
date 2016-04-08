# springboot + liquibase 整合
2016年04月08日10:17:53

	liquibase http://www.liquibase.org/index.html
	
	Liquibase是一个用于跟踪、管理和应用数据库变化的开源的数据库重构工具。它将所有数据库的变化（包括结构和数据）都保存在XML文件中，便于版本控制。
	liquibase 支持xml/yml/sql/json等格式

## 1. springboot mvn项目，通过spring cli 生成
	spring init 会下载demo.zip，解压即可
	修改pom 中的 groupId artifactId

	上传github  https://github.com/zhl2013/learn-springboot/tree/master/learn01

## 2. 添加整合liquibase

	spring or maven 插件有点出入，问题没有修复
	
	http://forum.liquibase.org/topic/setting-classpath-option-for-the-liquibase-maven-plugin#Search/maven%20plugin
	
	spring 在db.changelog-master.yaml 中配置include时 用classpath 打头。
	maven plugin 时，include 需要用src/main/resouces 替换classpath
	
``` xml
<!--pom.xml-->
<dependency>
		<groupId>org.liquibase</groupId>
		<artifactId>liquibase-core</artifactId>
</dependency>
```	

	
```yml
# 在application.yml中添加配置
liquibase: 
  changeLog: classpath:config/db/changelog/db.changelog-master.yaml  # changelog主配置文件
  enabled: false  # 是否加载启动
  contexts: init,dev  #包含的上下文
```	

	
```java
//ServletInitializer.java 添加配置 springliquibase
@Bean
@ConditionalOnBean(LiquibaseProperties.class)
public SpringLiquibase liquibase(DataSource dataSource, LiquibaseProperties liquibaseProperties) {
	SpringLiquibase result = new SpringLiquibase();
	result.setDataSource(dataSource);
	result.setChangeLog(liquibaseProperties.getChangeLog());
	result.setContexts(liquibaseProperties.getContexts());
	// 是否启动
	result.setShouldRun(liquibaseProperties.isEnabled());
	return result;
}
```

## 3、测试
```shell
# spring 测试
#通过application.yml 中 liquibase.enabled 来控制开关，打开时，启动会慢很多
mvn clean spring-boot:run
```

```shell
# mvn plugin 测试
# 需注意classpath 或找不到文件
mvn clean liquibase:update -Pdev 
```

