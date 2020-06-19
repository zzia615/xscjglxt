<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Xscj.aspx.cs" Inherits="xscjglxt.Xscj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <form runat="server">
        <div style="padding-bottom:10px;" class="form-inline">
            <input type="text" runat="server" class="form-control" id="q_xm" placeholder="请输入姓名查询成绩"/>
            <asp:Button ID="btnQuery" CssClass="btn btn-primary" Text="查询" runat="server" OnClick="btnQuery_Click"/>
        </div>
        <asp:GridView ID="JkqkGrid" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" BorderWidth="0px" BorderStyle="None" BorderColor="White">
            <Columns>
                <asp:BoundField DataField="zy" HeaderText="专业" />
                <asp:BoundField DataField="szbh" HeaderText="所在班级" />
                <asp:BoundField DataField="xh" HeaderText="学号" />
                <asp:BoundField DataField="xm" HeaderText="姓名" />
                <asp:BoundField DataField="kcmc" HeaderText="课程名称" />
                <asp:BoundField DataField="cj" HeaderText="成绩" />
                <asp:BoundField DataField="kssj" DataFormatString="{0:d}" HeaderText="考试时间" />
            </Columns>
        </asp:GridView>
     </form>
</asp:Content>
