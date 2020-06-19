--创建数据库
create database Teacher
go
--选择数据库
use Teacher
go

--账户信息表
create table zhxxb
(
zhm nvarchar(20) not null primary key, --账户名
mm nvarchar(50) not null,--密码
zhlb nvarchar(10) not null, --账户类别(学生/教师)
)
go

--学生基本信息表
create table xsjbxxb
(
xh nvarchar(20) not null primary key,--学号
xm nvarchar(20) not null,--姓名
xb nvarchar(5) not null,--性别（男/女）
zy nvarchar(100) not null,--专业
szbh nvarchar(20) not null,--所在班号
rxnf int not null --入学年份
)
go


--成绩登记表
create table cjdjb
(
id int identity(1,1) not null primary key,--自增长主键
xh nvarchar(20) not null,--学号
kcmc nvarchar(50) not null, --课程名称
cj int not null, --成绩
kssj date not null, --考试时间
)
go

insert into zhxxb(zhm,mm,zhlb) values('admin','admin','教师')
go


insert into zhxxb(zhm,mm,zhlb) values('T0001','123456','学生')
go


insert into xsjbxxb(xh,xm,xb,zy,szbh,rxnf) values('T0001','张三','男','计算机系','1901班',2019)
go

--查询学生成绩的语句
--select cjdjb.*,xsjbxxb.xm,xsjbxxb.xb,xsjbxxb.zy,xsjbxxb.szbh from xsjbxxb,cjdjb where xsjbxxb.xh=cjdjb.xh