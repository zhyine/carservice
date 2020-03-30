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

> 2020/3/26

#### 1：各模块之间的关系

- `dependencies`模块管理所有模块的依赖，所以无论是`commons`,`domain`，`admin`，`api`，`ui`模块都需要继承于`dependencies`模块。所以在除了`dependencies`模块外的所有模块的`pom`都需要制定父类`pom`文件。
- <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330172543.png" style="zoom:50%;" />
- 因为`commons`，`domain`模块，里面封装了一些工具类，工具类在其他模块中需要被调用，所以我们应该把这两个模块打包成`jar`然后把`jar`包根据需要引入`admin`，`api`，`ui`模块。
- <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330172940.png" style="zoom: 50%;" />![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330173020.png)
- <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330173020.png" style="zoom:50%;" />

> 2020/3/28

#### 1：`admin`模块

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330173341.png" style="zoom:50%;" />

- 配置文件`resources`文件夹下：

  - `mapper`文件夹下：放置所有的`mybatis-mapper`文件。**每个`mapper`文件需要与一个`DAO`相对应**

    <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330173709.png" style="zoom:50%;" />

- `carservice.properties`：该文件内放置的该模块的需要的所有配置属性；`web.xml`的视图解析器，`Mybatis`的连接信息，`druid`阿里连接池的配置信息

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330173955.png" style="zoom:50%;" />

- `mybatis-config.xml`：`Mybatis`的核心配置文件，里面注释很详细不多说
- `spring-context.xml`：`Spring`的核心配置文件，注释详细
- `spring-context-druid.xml`：`spring`整合`druid`，注释详细
- `spring-context-mybatis.xml`：`spring`整合`mybatis`，注释详细
- `spring-mvc.xml`：`SpringMVC`核心配置文件，注释详细

> 2020/2/30

#### 1：`AdminLTE框架`的使用

- 打开AdminLTE文件夹下的index.html

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330175759.png" style="zoom:50%;" />

- 接下来比如说你要做一个登录界面，找到**login**组件

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330175901.png" style="zoom:50%;" />

- 打开之后找出位置是在`pages/examples/login.html`这个页面
- ![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330175938.png)

- 使用`VSCode`打开`login.html`,把里面的内容复制到你的`JSP`页面后，更改引入`js`,`css`的文件路径为你项目内的路径
- <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330180322.png" style="zoom:50%;" />

- 这时候静态页面已经完成了。

> 2020/3/30

#### 1：登录功能

- 为了使后端能够获取到页面输入的信息，我们需要在页面发送一个表单请求，也就是`post`请求，在后端的`Controller`层来接受这个`post`请求的数据，由`controller`层调用`Service`层来处理业务逻辑，`Servie`层调用`Dao`层从数据库获取到登录用户的信息来判断，`DAO`层对应的`SQl`会在`mapper`文件夹下。
- <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330180937.png" style="zoom:50%;" />

- 因为数据库的密码使用`MD5`加密的，所以传来的明文密码需要加密后，再作判断
- <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330181150.png" style="zoom:50%;" />

- 如果用户信息不一样，那么需要再页面进行提示，后端应该传给页面一个信息，来表示用户名或者密码错误
- <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330181454.png" style="zoom:33%;" />

- 所以页面需要用`jstl`表达式来判断：后端（Controller层）传回页面的那个值（message）是否为空，不为空的情况下，显示警告信息。