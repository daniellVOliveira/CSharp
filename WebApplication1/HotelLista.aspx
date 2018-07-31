﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HotelLista.aspx.cs" Inherits="WebApplication1.HotelLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Hoteis</h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceListaHoteis" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFFFFF; color: #284775;">
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                </td>
                <td>
                    <asp:Label ID="CidadeLabel" runat="server" Text='<%# Eval("Cidade") %>' />
                </td>
                <td>
                    <asp:Label ID="UfLabel" runat="server" Text='<%# Eval("Uf") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                </td>
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CidadeTextBox" runat="server" Text='<%# Bind("Cidade") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UfTextBox" runat="server" Text='<%# Bind("Uf") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>Nenhum dado foi retornado.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CidadeTextBox" runat="server" Text='<%# Bind("Cidade") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UfTextBox" runat="server" Text='<%# Bind("Uf") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#E0FFFF; color: #333333;">
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                </td>
                <td>
                    <asp:Label ID="CidadeLabel" runat="server" Text='<%# Eval("Cidade") %>' />
                </td>
                <td>
                    <asp:Label ID="UfLabel" runat="server" Text='<%# Eval("Uf") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#E0FFFF; color: #333333;">
                                <th runat="server">Id</th>
                                <th runat="server">Nome</th>
                                <th runat="server">Cidade</th>
                                <th runat="server">Uf</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#E2DED6; font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                </td>
                <td>
                    <asp:Label ID="CidadeLabel" runat="server" Text='<%# Eval("Cidade") %>' />
                </td>
                <td>
                    <asp:Label ID="UfLabel" runat="server" Text='<%# Eval("Uf") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceListaHoteis" runat="server" ConnectionString="<%$ConnectionStrings:ReservasModel1 %>" SelectCommand="SELECT [Id], [Nome], [Cidade], [Uf] FROM [Hotel] WHERE ([Uf] = @Uf) ORDER BY [Uf], [Cidade], [Nome]">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="PR" Name="Uf" QueryStringField="uf" Type="String" />
        </SelectParameters>           
    </asp:SqlDataSource>
</asp:Content>
