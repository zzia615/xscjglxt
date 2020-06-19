using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xscjglxt
{
    public partial class Xscj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnQuery_Click(object sender, EventArgs e)
        {
            string s_xm = q_xm.Value;
            if (string.IsNullOrEmpty(s_xm))
            {
                Response.Write("<script>alert('请输入姓名');</script>");
                return;
            }
            //查询数据
            DataTable table = new SqlServerHelper().QuerySqlDataTable("select cjdjb.*,xsjbxxb.xm,xsjbxxb.xb,xsjbxxb.zy,xsjbxxb.szbh from xsjbxxb,cjdjb where xsjbxxb.xh=cjdjb.xh and xsjbxxb.xm like N'%"+s_xm+"%'");
            JkqkGrid.DataSource = table;
            JkqkGrid.DataBind();
        }
    }
}