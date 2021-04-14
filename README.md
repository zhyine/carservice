
#### 1：项目介绍

##### 1：技术选择

Java版本：1.8<br>
数据库：MySQL<br>
框架：`Spring + Spring MVC + MyBatis`<br>
服务器：Tomcat<br>
解析引擎：`AdminLTE + BootStrap模板`<br>
开发工具：Idea <br>
版本管理工具：Maven<br>

------

##### 2：项目结构

- `carservice-dependencies`依赖模块，用来管理所有模块的版本号
- `carservice-commons`工具模块，放封装的各种方法类
- `carservice-domain`：实体模块，里面放所有的`pojo`
- `carservice-web-admin`：后台管理模块
- `carservice-web-api`：Api接口模块
- `carservice-web-ui`：前端显示模块

##### 3：文件目录结构

- 非配置文件
  - `DAO`：数据访问层，`Service`：逻辑处理层，`controller`：控制层
  - `static`：存放所有静态资源文件
  - `plugins`：用到的所有`Jquery`插件
  - `includes`：封装的一些`jsp`共有页面组件
  - `web.xml`：`Servlet`和拦截器，中文乱码配置
- 配置文件
  - `mapper`：`Mybatis`的映射文件配置
  - `log4j.properties`：日志配置
  - `mybatis-config.xml`：`Mybatis`的核心配置
  - `myshop.properties`：**admin**模块的配置文件
  - `spring-context-druid.xml`：阿里连接池的配置
  - `spring-context.mybatis.xml`：Spring整合Mybatis
  - `spring-mvc.xml`：SpringMVC核心配置

#### 4：后端技术

- 登录页面
  - 记住我功能：技术选择：`LocalStorage,SessionStorage,Cookies...`中选择`Cookies`。
  - 密码加密：`MD5`加密
- 主页面
  - 用户显示
    - 使用插件`dataTables`来显示用户数据，使用`iCheck`插件来批量删除
    - 分页：服务端分页
    - 表单：前端验证`Jquery Validation`，后端验证`Spring Validation`
  - 内容分类
    - 使用`TreeTable`来递归显示父子节点的关系
    - 删除操作：需要删除改节点的信息以及该节点以下所有子节点的信息
  - 内容管理
    - `form`页面使用`dropzone`来负责上传图片，`wangEditor`来负责富文本的编辑
    - 使用插件`dataTables`来显示用户数据，使用`iCheck`插件来批量删除
    - 分页：服务端分页
    - 表单：前端验证`Jquery Validation`，后端验证`Spring Validation`

#### 5：Api接口

- `Restful`风格
- 根据功能拿到数据

#### 6：UI前端

- 如何拿到`Api`模块传来的数据-->`HttpClient`来模拟请求拿到数据
- 数据处理：拿到的`Json`格式的数据，如何转换为`JavaBean`或者自定义类

