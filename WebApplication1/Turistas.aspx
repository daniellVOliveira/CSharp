<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Turistas.aspx.cs" Inherits="WebApplication1.Turistas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Turistas</h2>
    <div class="panel panel-default">
        <div class="panel-heading">Procurar Turista</div>
        <div class="panel-body">
            <div class="panel-group">
                <label for="TextBoxEmail">Email do Turista: 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReservasModel1 %>" SelectCommand="SELECT [Id], [Nome], [Email] FROM [Turista] WHERE ([Email] = @Email) ORDER BY [Id], [Nome], [Email]">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="" Name="Email" QueryStringField="Email" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </label>
                <asp:TextBox ID="TextBoxEmail" CssClass="form-control" MaxLength="50" DataSourceId="SqlDataResourcesReservas" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="ButtonProcurar" CssClass="btn" runat="server" Text="Procurar" OnClick="ButtonProcurar_Click" />
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Cadastrar Novo Turista</div>
        <div class="panel-body">
            <asp:Button ID="ButtonIncluir" CssClass="btn" runat="server" Text="Incluir Turista" OnClick="ButtonIncluir_Click" />
        </div>
    </div>
</asp:Content>
