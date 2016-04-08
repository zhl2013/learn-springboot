# springboot + liquibase 整合
2016年04月08日10:17:53

liquibase http://www.liquibase.org/index.html
Liquibase是一个用于跟踪、管理和应用数据库变化的开源的数据库重构工具。它将所有数据库的变化（包括结构和数据）都保存在XML文件中，便于版本控制。

>1. springboot mvn项目，通过spring cli 生成
spring init 会下载demo.zip，解压即可
修改pom 中的 groupId artifactId

上传github  https://github.com/zhl2013/learn-springboot/tree/master/learn01

>2. 添加整合liquibase

spring or maven 插件有点出入，问题没有修复
http://forum.liquibase.org/topic/setting-classpath-option-for-the-liquibase-maven-plugin#Search/maven%20plugin

spring 在db.changelog-master.yaml 中配置include时 用classpath 打头。
maven plugin 时，include 需要用src/main/resouces 替换classpath