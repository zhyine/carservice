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

> `dependencies`模块管理所有模块的依赖，所以无论是`commons`,`domain`，`admin`，`api`，`ui`模块都需要继承于`dependencies`模块。所以在除了`dependencies`模块外的所有模块的`pom`都需要继承父类`pom`文件。

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330172543.png" style="zoom:50%;" />

> 因为`commons`，`domain`模块，里面封装了一些工具类，工具类在其他模块中需要被调用，所以我们应该把这两个模块打包成`jar`然后把`jar`包根据需要引入`admin`，`api`，`ui`模块。

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330172940.png" style="zoom: 50%;" />

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330173020.png)

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200330173020.png" style="zoom:50%;" />

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

> 2020/4/1

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

> 2020/4/2

#### 拦截器

> 我们需要处理这样的逻辑
>
> **当用户没有登录的时候，我们应该拒绝它通过`url`直接访问到我们的主页面**
>
> **当登录到主页面后，这时候用户已经登录成功了，我们应该拒绝其通过`url`直接跳转到`登录页面`，这时候想要跳转到登录页面只能通过注销该用户**
>
> 怎么实现这样的功能呢，那么就应该使用**拦截器**

> 没有登录拒绝访问主页：这里定义了`LoginInterceptor`
>
> 登录的话不能回跳到登录页：这里定义了`PermissionInterceptor`

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200402144216.png)

> 没有登录的时候我们需要**判断浏览器的Session中是否存在一个用户**，如果不存在的情况下，当你在没有登录就请求主页的时候，依旧给你重定向到登录页面
>
> 同理，登录的话，如果你请求登录页面，结果重定向到主页

> 拦截器需要继承`HandlerInterceptor`接口
>
> `preHandle方法`：在Controller层执行之前调用
>
> `postHandle方法`：controller执行之后，且页面渲染之前调用

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200402144557.png)

> 最后，如果要使用这个拦截器的话，**需要在SpringMVC的核心配置文件中配置一下**

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200402144927.png)

> 2020/4/3

#### 后端-用户模块-CRUD

> 这时候考虑到数据库的增删改查大同小异，所以我在这里直接把**Dao层**所需要的接口全部列出。***Server层和Dao层基本一样不过多说***
>
> CRUD的SQL语句也不过多说
>
> ```java
> // 通过邮箱登录
> public CarUser getByEmail(String email);
> // 查询全部信息
> public List<CarUser> selectAll();
> // 新增用户
> public void insert(CarUser carUser);
> //根据id删除用户
> public void delete(Long id);
> // 根据id查询用户信息
> public CarUser getById(Long id);
> // 更新用户
> public void update(CarUser carUser);
> // 批量删除
> public void deleteMulti(String[] ids);
> // 分页查询
> public List<CarUser> page(Map<String,Object> params);
> // 查询总笔数
> public int count(CarUser carUser);`
> ```

> 现在我们来实现**增删改查**操作
>
> 1：增加一个用户
>
> 首先，我们要需要一个**表单页**来让用户来填写信息，之后将**用户提交表单**，这时候我我们**Controller层接收到信息**调用相应的**Service层**来处理逻辑，**Service层**再调用**Dao层**来向数据库中插入一条记录。

> 建立表单页面`user_form.jsp`，填写完表单信息后，点击提交发送请求`/user/save`。
>
> 这时候`Controller层`监听到了，调用**Service**层的来保存信息。
>
> 这时候需要判断**你填写的这个邮箱对应的`id`在数据库中存在不存在**，如果存在的情况下，就是**更新用户信息**；如果不存在的情况下，就是**新增一个用户**。
>
> 注意：**我们数据库里面的密码不是以明文的形式显示的**，所以需要将密码加密。

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401212132.png)

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401212918.png)

> 再用户填写表单的时候，**如何来判断表单信息是否正确呢**，所以我们需要进行验证
>
> 前端使用的是**Jquery Validdation**插件来进行验证
>
> 后端使用的**Spring-Validation+正则表达式**来进行验证
>
> 因为**Spring-Validation**继承的是**hibernate-validation**所以需要先导入**hibernate-validation**
>
> 但是对于**手机号和邮箱**怎么进行验证呢？
>
> 在这里需要你自己去指定验证规则，也就是所谓的**正则表达式**
>
> ```java
> // 规定用户名，也就是邮箱，长度6-20
> @Length(min = 6, max = 20, message = "姓名长度必须介于6-20位之间")
> // 这里我在封装了一个工具类RegexpUtils，在里面有手机号和邮箱的验证规则
> // 自定义手机号验证规则
> @Pattern(regexp = RegexpUtils.PHONE, message = "手机号格式不正确")
> ```

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401213321.png)

> 接下来是制定的验证规则，在`commons`模块下的`utils`包下

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401213753.png)

> 接下来应该考虑到，**管理员如何知道你这条数据插入成功了还是失败了**
>
> 所以，我们是不是**无论插入成功还是失败都应该在前端显示一个警告框**，这样让管理员来知道是否插入成功。
>
> 那么如何来判断是否插入成功呢？
>
> 这时候还需要考虑到，**不仅仅是新增用户的时候，比如：删除用户的时候，更新用户信息的时候......这些时候都需要考虑到`提示的重要性`**
>
> 所以，我在这里封装了一个类`BaseResult`，专门用来判断是否插入成功，删除成功等等
>
> 这里用到**封装，继承，多态这些特性**。因为操作都是在浏览器上进行的，所以利用**成功的状态码为200，失败的状态码为500**，来判断这些操作是否成功。成功的话那么在提示框中应该显示成功，失败亦然。
>
> 但是考虑到不同操作提示的信息也不一样，所以**需要传入一个参数`message`**，这时候`message`就可以动态的改变了。

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401214417.png)

> 那么此时回到`Controller层`，我们应该来**通过状态码来判断以下是否插入成功**
>
> 如果插入成功的话，页面就应该重定向到我们显示用户的那个页面，也就是`user_list.jsp`，并提示信息
>
> 如果不成功的话，就仍在此页面，并且提示`插入失败`类似的信息
>
> 之前已经说过了，**Controller层与页面之间信息传递是将信息保存在model内**

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401215024.png)

> 这时候我们来到页面将提示信息来显示出来
>
> 这里需要用到**jstl**中的`c:if`语法
>
> 插入成功：成功的状态码为200，所以我们在`user_list.jsp`页面添加以下判断，当为状态200的时候，我们应该显示提示框，并将在`baseResult`中的动态`message`取出放在页面上。这里用了三目表达式是为了当插入成功的时候，这个提示框为绿色。
>
> 插入失败：插入失败的时候，页面仍在`user_form.jsp`所以需要在`user_form.jsp`上添加以下判断，道理都一样

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401215505.png)

------

> 现在来实现搜索删除功能
>
> 对于删除功能，我们可以需要**单个删除**和**批量删除**
>
> 那么我们需要通过什么来定位到这条数据，并且删除它呢？就是主键`id`
>
> 那么接下来如何来获取到一条或者多条数据的`id`呢，我们应该在每条数据前面加上一个能够选择的选择框
>
> 这里我们使用`Jquery的iCheck插件`
>
> 接下来我们把插件加入到显示用户信息的表格中`(<theady>中添加也为了能够全选,<tbody>中添加为了能够单选)`
>
> 我们在`app.js`中需要对给定的`iCheck`进行初始化，`app.js`里面封装了整个`admin模块`所需要的大部分插件
>
> <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200402151537.png" style="zoom:50%;" />
>
> 每当点击`icheck选择框`时，需要拿到其对应那条数据的`id`。

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200402151413.png)

> 但是如何来实现多选功能呢？
>
> 我们需要把`<thead>中的那个iCheck选择框`单独给一个属性，亦或者是点击事件。
>
> 当点击`<thead>`中的主选择框时，因为**整个显示用户列表页面的所有数据都在一个数组内**，所以，当我们点击主选择框时，应该遍历列表拿到所有的`id`信息，并且改变列表中的所有选择框的状态为选中

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200402152152.png" style="zoom:67%;" />

> 无论是**单选**还是**多选**全部把`id`加入到一个数组这种，将这个数组传回Controller层，逐层调用，删除信息
>
> 最后，通过**BaseResult**来判断是否删除成功，显示提示框来通知管理员。

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200402152415.png" style="zoom:67%;" />

------

#### 分页功能

> 由于前端分页在数据量过大的时候会出现问题
>
> 所以我们这里使用后端分页的技术。
>
> 分页是在初始化加载表格数据的时候开始的。这里我们表格用的**dataTables**所以我在`app.js`里面封装了一个针对于`dataTables`的方法，需要页面传来一个分页的请求`url`和`dataTables`需要显示的列

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200404211236.png" style="zoom:50%;" />

> 在`user_list.jsp`页面，我们需要把之前写的`table`里面的`<tbody>`标签里的内容删除，并且封装一个`columns`，在`columns`中使用了`DateTime`来格式化日期

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200404211358.png" style="zoom:67%;" />

> `start`,`length`,`draw`是datatables传递的时候默认自带的
>
> ![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200404212457.png)
>
> 所以我们需要在Controller获得这三个参数并作判断，然后传给Service层

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200404212542.png)

------

> 接下来来实现**更新用户信息**
>
> 编辑用户信息需要考虑到**提高管理员的效率**，所以当用户管理在点击编辑的时候，我们应该将一些信息自动填写到表单内部，类似下图
>
> **编辑需要的表单和新增的表单因为具有共性**，所以依旧使用新增用户的表单来完成更新用户信息的功能

![](https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401220453.png)

> 点击**编辑按钮**后，跳转到`user_form.jsp`这个页面，只需要在那个按钮外部加上一个`<a></a>`标签即可
>
> 那么如何将信息自动填入到表单内呢？
>
> 其实，对于每一个编辑按钮，都有一个对应的`id`，这个`id`就是数据库中这条数据的`id`
>
> 所以我们在发起请求的时候**需要把`id`也作为参数发送出去**
>
> **那么我们在点击按钮，跳转到`user_form.jsp`之前，就应该通过`id`来拿到这个`id`对应的全部信息**
>
> 如何实现呢？
>
> 这时候需要用到**Controller层**的一个注解：`@ModelAttribute`。其作用就是：**每次执行方法时都会先执行@ModelAttribute注解的方法，并将结果添加到model中。**

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401221355.png" style="zoom:50%;" />

> 这时候我用一步步通过`Service层，Dao层`在加载`user_form.jsp`前拿到了对应的数据
>
> 数据拿到了，如何将数据放入表单中呢？
>
> 不妨先试着给原始的`user_form页面`对应的`url为：http://localhost:8080/user/form`加上参数试
>
> 先试着加上不同的参数`id`这时候`url`变为：`http://localhost:8080/user/form?id=`，会发现不同`id`对应的页面数据也是不一样的，所以我们传入的`id`应该是动态获取到的

> 为什么页面能获取到信息呢？
>
> 因为在`user_form.jsp`中的使用的**<form : form></form : form>**标签
>
> 它的作用：它会自动绑定来自`Model`中的一个属性值到当前`form`对应的实体对象，这里对应的是`modelAttribute="carUser"`
>
> 另外通过隐藏域`<form : hidden path="id">`来判断是更新还是新增，因为，有了`MOdelAttribute`所以只需要给其传入一个`id`即可

<img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/20200401222825.png" style="zoom:50%;" />