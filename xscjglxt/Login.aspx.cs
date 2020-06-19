using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xscjglxt
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //获取界面数据
            string s_yhbh = yhbh.Value;
            string s_yhmm = yhmm.Value;
            string s_yhlb = yhlb.Value;
            if (string.IsNullOrEmpty(s_yhbh))
            {
                Response.Write("<script>alert('账户不能为空');</script>");
                return;
            }

            if (string.IsNullOrEmpty(s_yhmm))
            {
                Response.Write("<script>alert('密码不能为空');</script>");
                return;
            }

            if (string.IsNullOrEmpty(s_yhlb))
            {
                Response.Write("<script>alert('用户类别不能为空');</script>");
                return;
            }

            string s_yhlb_mc = string.Empty;
            DataTable table = null;
            if (s_yhlb == "1")
            {
                s_yhlb_mc = "学生";
            }

            if (s_yhlb == "2")
            {
                s_yhlb_mc = "教师";
            }
            table = new SqlServerHelper().QuerySqlDataTable("select *  from zhxxb where zhm='" + s_yhbh + "' and mm='" + s_yhmm + "' and zhlb='"+ s_yhlb_mc + "'");
            //查询到数据
            if (table != null && table.Rows.Count > 0)
            {
                Session[SessionData.登录用户] = s_yhbh;
                Session[SessionData.登录用户名称] = s_yhbh;
                Session[SessionData.用户类别] = s_yhlb_mc;
                if (s_yhlb_mc == "学生")
                {
                    Response.Write("<script>alert('登录成功');window.location.href='Xscj.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('登录成功');window.location.href='XscjAdd.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('登录失败，用户名密码错误');</script>");
            }
        }
    }
}