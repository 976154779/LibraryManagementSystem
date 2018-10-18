# LibraryManagementSystem
西电软院大四项目管理课程设计
# 图书管理系统
#### 基于Spring+Spring MVC(Maven方式构建)
### 系统简介：
本图书管理系统基于spring,spring mvc,数据库为mysql。前端使用了Bootstrap。 

### 系统功能
该系统实现读者和管理员登陆，图书的增删改查，读者的增删改查，借还图书，密码修改等功能。

### 数据库
本系统共有六张数据表。admin为管理员表，book_info为图书信息表，class_info为分类信息表，lend_list为借还信息表，reader_card为读者证表,reader_info为读者信息表。

### 如何使用

1. 解压代码文件。
2. 启动数据库服务,将library.sql文件导入数据库,生成数据库和表，添加数据项。

3. 用IDEA打开解压后的文件夹（不是 导入 ！！！）。

4. 配置源文件src\main\resources\book-context.xml中的数据库设置项，设置为自己的数据库连接，账号和密码。

5. 单击IDEA右边侧栏的Maven Projects选项卡，将弹出Maven项目的管理窗口。

7. 单击管理窗口的刷新按钮，等待依赖下载完毕。

8. 点击Maven Projects\book\Plugins\jetty\jetty:run启动jetty服务器（功能上等同于Tomcat服务器）。 默认端口号为9000。可在pom.xml中修改。

9. 待服务器启动完毕后，在浏览器地址栏输入 http://localhost:9000 进入该系统。管理员和读者使用同一个的登录界面，系统会根据账号和密码，判断身份，跳转不同的界面。



