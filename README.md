### Carservice

Java版本：1.8<br>
数据库：MySQL<br>
框架：Spring + Spring MVC + MyBatis<br>
服务器：Tomcat<br>
前端解析框架：AdminLTE+模板<br>
开发工具：Idea <br>
版本管理工具：Maven<br>

> 2020/3/24---指定架构

#### 1：`carservice-commons`工具模块，放封装的各种方法类

#### 2：`carservice-dependencies`依赖模块，用来管理所有模块的版本号

#### 3：`carservice-domain`：实体模块，里面放所有的`pojo`

#### 4：`carservice-web-admin`：后台管理模块

#### 5：`carservice-web-api`：Api接口模块

#### 6：`carservice-web-ui`：前端显示模块

```xml
我已经把所需的基本依赖引入
目前先开发admin模块
dao,service,controller层已给出
admin模块配置文件已给出
```

- 非配置文件
  - `DAO`：数据访问层，`Service`：逻辑处理层，`controller`：控制层
  - `static`：存放所有静态资源文件
  - `plugins`：用到的所有`Jquery`插件
  - `includes`：封装的一些jsp共有页面组件
  - `web.xml`：`Servlet`和拦截器，中文乱码配置
- 配置文件
  - `mapper`：`Mybatis`的映射文件配置
  - `log4j.properties`：日志配置
  - `mybatis-config.xml`：`Mybatis`的核心配置
  - `myshop.properties`：**admin**模块的配置文件
  - `spring-context-druid.xml`：阿里连接池的配置
  - `spring-context.mybatis.xml`：Spring整合Mybatis
  - `spring-mvc.xml`：SpringMVC配置