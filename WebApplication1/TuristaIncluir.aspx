<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TuristaIncluir.aspx.cs" Inherits="WebApplication1.TuristaIncluir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Turistas</h2>
    <div class="panel panel-default">
        <div class="panel-heading">Cadastrar novo turista.</div>
        <div class="panel-body">
            <div class="form-group">
                <label for="TextBoxNome">Nome</label>
                <asp:TextBox ID="TextBoxNome" CssClass="form-control" MaxLength="50" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxNome" ControlToValidate="TextBoxNome" runat="server" ErrorMessage="O nome é obrigatório"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxNome" ControlToValidate="TextBoxNome" runat="server" ErrorMessage="O nome deve ter pelo menos 5 caracteres" ValidationExpression="^.{5,}$"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxNome2" ControlToValidate="TextBoxNome" runat="server" ErrorMessage="O nome deve ter no máximo 50 caracteres" ValidationExpression="^.{0,50}$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="TextBoxEmail">Email</label>
                <asp:TextBox ID="TextBoxEmail" CssClass="form-control" MaxLength="100" runat="server" Width="559px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxEmail1" ControlToValidate="TextBoxEmail" runat="server" ErrorMessage="O endereço deve ter no mínimo 5 caracteres" ValidationExpression="^.{5,}$"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxEmail2" ControlToValidate="TextBoxEmail" runat="server" ErrorMessage="O endereço deve ter no máximo 100 caracteres" ValidationExpression="^.{0,50}$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="RadioButtonListSexo">Sexo</label>
                <br />
                <asp:RadioButtonList ID="RadioButtonListSexo" runat="server" OnSelectedIndexChanged="RadioButtonListSexo_SelectedIndexChanged1">
                    <asp:ListItem Value="true"> Masculino</asp:ListItem>
                    <asp:ListItem Value="false"> Feminino</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="form-group">
                <label for="TextBoxDataNascimento">Data de Nascimento</label>
                <asp:TextBox ID="TextBoxDataNascimento" Type="Date" CssClass="form-control" MaxLength="8" runat="server" Width="191px" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" min="1900-01-01" max="today" TextMode="Date"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionTextBoxDataNascimento" runat="server"
                    ControlToValidate="TextBoxDataNascimento" ValidationGroup="check" ErrorMessage="O Formato da data deve ser DD/MM/YYYY"
                    ValidationExpression="^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\d\d$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDataNascimento" ControlToValidate="TextBoxDataNascimento" runat="server" ErrorMessage="A data de nascimento é obrigatória"></asp:RequiredFieldValidator>
                <label for="TextBoxCpf">CPF</label>
                <asp:TextBox ID="TextBoxCpf" CssClass="form-control" MaxLength="11" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxCpf" ControlToValidate="TextBoxCpf" runat="server" ErrorMessage="O Campo CPF é obrigatório"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="ButtonEfetivar" CssClass="btn btn-primary" runat="server" Text="Efetivar" OnClick="ButtonEfetivar_Click" />
            <asp:Button ID="ButtonVoltar" CssClass="btn" runat="server" Text="Voltar" OnClick="ButtonVoltar_Click" />

        </div>
    </div>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Cadastro de turista</h4>
                </div>
                <div class="modal-body">
                    <p>Turista cadastrado com sucesso.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
    <asp:PlaceHolder ID="ScriptModalSucesso" runat="server">
        <script type="text/javascript">
            $(window).on('load', function () {
                $('#myModal').modal('show');
            });
        </script>
    </asp:PlaceHolder>
</asp:Content>

