using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xscjglxt
{
    public partial class XscjAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                xs.DataSource = new SqlServerHelper().QuerySqlDataTable("select * from xsjbxxb");
                xs.DataValueField = "xh";
                xs.DataTextField = "xm";
                xs.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string s_xs = xs.SelectedValue;
                string s_kcmc = kcmc.Value;
                string s_cj = cj.Value;
                string s_kssj = kssj.Value;
                //拼接Sql字符串
                string sql = string.Format("insert into cjdjb(xh,kcmc,cj,kssj)" +
                    "values('{0}','{1}',{2},'{3}')", s_xs, s_kcmc, s_cj,s_kssj);
                //执行Sql语句完成教师插入的操作
                new SqlServerHelper().ExecuteSql(sql);
                //成功则提示
                Response.Write("<script>alert('新增学生成绩成功');window.location.href='XscjAdd.aspx';</script>");

            }



        }
    }
}