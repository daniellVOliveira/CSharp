<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hoteis.aspx.cs" Inherits="WebApplication1.Hoteis1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Hotéis</h2>
    <div class="panel panel-default">
        <div class="panel-heading">Procurar hotel</div>
        <div class="panel-body">
            <div class="form-group">
                <label for="DropDownListUfs">Estado: </label>
                <asp:DropDownList ID="DropDownListUfs" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceReservas" DataTextField="uf_id" DataValueField="uf_id"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSourceReservas" runat="server" ConnectionString="<%$ ConnectionStrings:ReservasModel1 %>" SelectCommand="SELECT * FROM [ufs] ORDER BY [uf_id]"></asp:SqlDataSource>
           
                </div>
            <asp:Button ID="ButtonProcurar" CssClass="btn" runat="server" Text="Procurar" OnClick="ButtonProcurar_Click" />
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Novo hotel</div>
        <div class="panel-body">
            <asp:Button ID="ButtonIncluir" CssClass="btn" runat="server" Text="Incluir" OnClick="ButtonIncluir_Click" />
        </div>
    </div>
</asp:Content>
