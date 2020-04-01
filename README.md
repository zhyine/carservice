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

- `dependencies`模块管理所有模块的依赖，所以无论是`commons`,`domain`，`admin`，`api`，`ui`模块都需要继承于`dependencies`模块。所以在除了`dependencies`模块外的所有模块的`pom`都需要继承父类`pom`文件。
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

> 2020/4/3

#### 后端-用户模块-显示用户信息

> 对于这种的管理员端页面，每个页面共同的组件是——侧边栏(menu)，导航栏(nav)，版权信息(cpoyright)。
>
> 内容(content)针对于不同的页面显示的内容不同

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401113222.png)

> 所以，我将**侧边栏(menu)，导航栏(nav)，版权信息(copyright)**这三个共有的全部封装了起来
>
> 在每个页面只需要用`jsp:include`语法来在固定位置引入**includes文件夹下的对应jsp文件**即可。

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401113656.png" style="zoom:50%;" />

> 接下来我们来考虑用户管理页面需要显示那些信息，并且对应的管理员需要哪些操作来管理用户。
>
> 我这里想到的有：
>
> - 首先，需要**展示用户的信息**。这里的信息包括了`id`，`用户名`，`手机号`，`邮箱`，`最后一次的更新时间`
> - 然后对于管理员来说，最起码需要**增加用户，删除用户，修改用户信息**
> - 由于页面只显示了用户的**部分信息**，所以我们应该能让管理员查看到用户的全部信息
> - 对于用户量日渐增多的问题，所以我们需要增加一个搜索来以便快速定位

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401114333.png)

> 用户信息的展示页面是**user_list.jsp**页面。（这个页面也是和之前**登录页面**一样，一点一点把`AdminLTE`的代码挪过来）。最开始写的时候**先不要分页**，因为最开始可能分页会造成逻辑混乱，代码过于混乱。
>
> 先尝试看数据库的信息能否获取到。
>
> 这个时候我们要把数据库的信息一大部分展示在页面上，所以**由数据库传回前端的应该是实例，然后前端来选择显示需要展示的内容**

> - 1：考虑到我们需要获取数据库的大部分信息，所以，我们现在`Dao`层来写接口（这时候后端获取的是很多用户的信息，所以我们应该把每个实例都放入列表中）



<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401115024.png" style="zoom:50%;" />

> 2：我们去对应的**Mapper文件下**写**SQl语句**
>
> 因为，接下来的这个**Mapper文件下**会查询很多信息，所以我先把需要查询的信息封装成**sql片段**
>
> 在接下来的**sql语句中**根据需要来引入
>
> 注意：**sql片段**中的**a**需要在接下来写**sql语句**的时候都指定`car_user`表的**别名为a**

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401115305.png" style="zoom:50%;" />

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401115325.png" style="zoom:50%;" />

> 3：Dao层和Mapper文件完成后，接下来写**Service层**的内容
>
> 我们先写**Service层的接口**，然后再写一个**实现类(实现类都在Impl下)**
>
> 因为**Service层**需要调用**Dao，Dao再去执行SQL语句**，所以我么需要在**Impl**下对应的ServiceImpl中自动注入一个**carUserDao**，以便让其来调用Dao对应的方法

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401115742.png" style="zoom:50%;" />

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401120010.png" style="zoom: 50%;" />

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401115845.png" style="zoom:50%;" />

> 4：Service层完成之后
>
> 我们开始写**Controller层**的内容，**Controller层**来调用**Service层**拿到信息
>
> 所以我们需要先自动注入一个**carUserService**
>
> 这时候信息已经再Controller层来，所以我们要把信息**通过Model来加入到浏览器的Session中**
>
> ```java
> // 当前端发送以一个get请求，请求的地址是最初是的http://localhost:8080+/user/list
> // Controller层就会监听看是否有对应的，有的话就执行该方法
> @RequestMapping(value = "list",method = RequestMethod.GET)
> ```

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401120354.png" style="zoom:50%;" />

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401120317.png" style="zoom:50%;" />

> 5：接下来，我们开始让前端能发送**/user/list**请求，并且可以获取到后端传来的信息
>
> 当点击用户列表的时候，发送一个**GET**请求，地址是`/user/list`，如下
>
> ```jsp
>  <li><a href="/user/list"><i class="fa fa-circle-o"></i> 用户列表</a></li>
> ```
>
> 然后，Controller层传来的那个数据我们全部存在了**"carUsers"**中，对应的只需要在JSP中拿到就可以了
>
> 使用**c:forEach**这个`jstl`表达式，来循环将对应的值填入。**items=￥{carUsers}**拿到信息，**var="carUser"**表示我用carUser来代替carUSers。

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401120955.png)

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401114727.png)