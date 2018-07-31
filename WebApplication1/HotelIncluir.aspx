    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HotelIncluir.aspx.cs" Inherits="WebApplication1.HotelIncluir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Hotel</h2>
    <div class="panel panel-default">
        <div class="panel-heading">Incluir novo hotel</div>
        <div class="panel-body">
            <div class="form-group">
                <label for="TextBoxNome">Nome: </label>
                <asp:TextBox ID="TextBoxNome" CssClass="form-control" MaxLength="50" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxNome" ControlToValidate="TextBoxNome" runat="server" ErrorMessage="O nome é obrigatório"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxNome" ControlToValidate="TextBoxNome" runat="server" ErrorMessage="O nome deve ter no mínimo 5 caracteres" ValidationExpression="^.{5,}$"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxNome2" ControlToValidate="TextBoxNome" runat="server" ErrorMessage="O nome deve ter no máximo 50 caracteres" ValidationExpression="^.{0,50}$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="TextBoxEndereco">Endereço: </label>
                <asp:TextBox ID="TextBoxEndereco" CssClass="form-control" MaxLength="100" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxEndereco" ControlToValidate="TextBoxEndereco" runat="server" ErrorMessage="O endereço é obrigatório"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxEndereco1" ControlToValidate="TextBoxEndereco" runat="server" ErrorMessage="O endereço deve ter no mínimo 5 caracteres" ValidationExpression="^.{5,}$"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxEndereco2" ControlToValidate="TextBoxEndereco" runat="server" ErrorMessage="O endereço deve ter no máximo 100 caracteres" ValidationExpression="^.{0,50}$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="TextBoxNumero">Número: </label>
                <asp:TextBox ID="TextBoxNumero" CssClass="form-control" MaxLength="10" runat="server" OnTextChanged="TextBoxNumero_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxNumero" ControlToValidate="TextBoxNumero" runat="server" ErrorMessage="O número é obrigatório"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxNumero1" ControlToValidate="TextBoxNumero" runat="server" ErrorMessage="O número deve ser até 10 dígitos ou S.N." ValidationExpression="^(\d{1,10})|S\.N\.|s\.N\.$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="TextBoxComplemento">Complemento: </label>
                <asp:TextBox ID="TextBoxComplemento" CssClass="form-control" MaxLength="20" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxComplemento2" ControlToValidate="TextBoxComplemento" runat="server" ErrorMessage="O complemento deve ter no máximo 20 caracteres" ValidationExpression="^.{0,20}$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="TextBoxCidade">Cidade: </label>
                <asp:TextBox ID="TextBoxCidade" CssClass="form-control" MaxLength="60" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxCidade1" ControlToValidate="TextBoxCidade" runat="server" ErrorMessage="A cidade é obrigatória"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxCidade1" ControlToValidate="TextBoxCidade" runat="server" ErrorMessage="A cidade deve ter no mínimo 5 caracteres" ValidationExpression="^.{5,}$"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxCidade2" ControlToValidate="TextBoxCidade" runat="server" ErrorMessage="A cidade deve ter no máximo 60 caracteres" ValidationExpression="^.{0,60}$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="TextBoxCEP">CEP: </label>
                <asp:TextBox ID="TextBoxCEP" CssClass="form-control" MaxLength="8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxCEP" ControlToValidate="TextBoxCEP" runat="server" ErrorMessage="O CEP é obtrigatório"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxCEP" ControlToValidate="TextBoxCEP" runat="server" ErrorMessage="O CEP deve ser um número de 8 dígitos" ValidationExpression="^\d{8}$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="DropDownListUF">Estado: </label>
                <asp:DropDownList ID="DropDownListUF" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceUFs" DataTextField="desc_uf" DataValueField="uf_id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceUFs" runat="server" ConnectionString="<%$ ConnectionStrings:ReservasModel1 %>" SelectCommand="SELECT * FROM [ufs] ORDER BY [uf_id]"></asp:SqlDataSource>
            </div>
            <div class="form-group">
                <label for="TextBoxDDD">Telefone: </label>
                (<asp:TextBox ID="TextBoxDDD" MaxLength="2" runat="server" Width="29px"></asp:TextBox>)
                <asp:TextBox ID="TextBoxTelefone" MaxLength="9" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxDDD" ControlToValidate="TextBoxDDD" runat="server" ErrorMessage="O DDD deve ser um número de 2 dígitos" ValidationExpression="^\d{2}$"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxTelefone" ControlToValidate="TextBoxTelefone" runat="server" ErrorMessage="O telefone deve ser um número de 8 a 9 dígitos" ValidationExpression="^\d{8,9}$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="TextBoxDescricao">Descrição: </label>
                <asp:TextBox ID="TextBoxDescricao" CssClass="form-control" MaxLength="250" runat="server" Height="71px"></asp:TextBox>
            </div>
            <asp:Button ID="ButtonEfetivar" CssClass="btn btn-primary" runat="server" Text="Efetivar" OnClick="ButtonEfetivar_Click" />
            <asp:Button ID="ButtonVoltar" CssClass="btn" runat="server" Text="Voltar" OnClick="ButtonVoltar_Click" />
        </div>
    </div>
    <!-- Mensagem de sucesso de inclusão -->
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Inclusão de hotel</h4>
        </div>
        <div class="modal-body">
          <p>Hotel incluído com sucesso.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
    </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
   <asp:PlaceHolder id="ScriptModalSucesso" runat="server">
   <script type="text/javascript">
       $(window).on('load',function(){
           $('#myModal').modal('show');
       });
   </script>
   </asp:PlaceHolder>
</asp:Content>
