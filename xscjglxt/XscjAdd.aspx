<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="XscjAdd.aspx.cs" Inherits="xscjglxt.XscjAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<form runat="server" class="col-md-4 col-md-offset-4">
  <div class="form-group">
    <label for="xs">学生</label>
    <asp:DropDownList ID="xs" runat="server" CssClass="form-control"></asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请选择学生" ControlToValidate="xs" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <label for="kcmc">课程名称</label>
    <input type="text" class="form-control" id="kcmc" placeholder="课程名称" runat="server">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="请输入课程名称" ControlToValidate="kcmc" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <label for="cj">成绩</label>
    <input type="text" class="form-control" id="cj" placeholder="成绩" runat="server">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="请输入成绩" ControlToValidate="cj" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="成绩范围0-100" ControlToValidate="cj" Type="Integer" MinimumValue="0" MaximumValue="100" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
  </div>
  <div class="form-group">
    <label for="kssj">考试时间</label>
    <input type="text" class="form-control" id="kssj" placeholder="yyyy/MM/dd" runat="server">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="请选择考试时间" ControlToValidate="kssj" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="考试时间超出范围" MaximumValue="2999/12/31" MinimumValue="2000/01/01" ControlToValidate="kssj" Type="Date" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
  </div>
  <div class="form-group">
      <asp:Button ID="btnSave" runat="server" Text="保存成绩" CssClass="btn btn-primary" OnClick="btnSave_Click"/>
  </div>
  
</form>
</asp:Content>
