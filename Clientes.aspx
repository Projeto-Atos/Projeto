<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Projeto.Clientes" %>

<script runat="server">

    protected void DeleteButton_Click(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="idCliente" DataSourceID="SqlDataSource1" Width="282px">
        <EditItemTemplate>
            idCliente:
            <asp:Label ID="idClienteLabel1" runat="server" Text='<%# Eval("idCliente") %>' />
            <br />
            Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
            <br />
            Endereco:
            <asp:TextBox ID="EnderecoTextBox" runat="server" Text='<%# Bind("Endereco") %>' />
            <br />
            Bairro:
            <asp:TextBox ID="BairroTextBox" runat="server" Text='<%# Bind("Bairro") %>' />
            <br />
            Cidade:
            <asp:TextBox ID="CidadeTextBox" runat="server" Text='<%# Bind("Cidade") %>' />
            <br />
            CEP:
            <asp:TextBox ID="CEPTextBox" runat="server" Text='<%# Bind("CEP") %>' />
            <br />
            UF:
            <asp:TextBox ID="UFTextBox" runat="server" Text='<%# Bind("UF") %>' />
            <br />
            CNPJ:
            <asp:TextBox ID="CNPJTextBox" runat="server" Text='<%# Bind("CNPJ") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Atualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
            <br />
            Endereco:
            <asp:TextBox ID="EnderecoTextBox" runat="server" Text='<%# Bind("Endereco") %>' />
            <br />
            Bairro:
            <asp:TextBox ID="BairroTextBox" runat="server" Text='<%# Bind("Bairro") %>' />
            <br />
            Cidade:
            <asp:TextBox ID="CidadeTextBox" runat="server" Text='<%# Bind("Cidade") %>' />
            <br />
            CEP:
            <asp:TextBox ID="CEPTextBox" runat="server" Text='<%# Bind("CEP") %>' />
            <br />
            UF:
            <asp:TextBox ID="UFTextBox" runat="server" Text='<%# Bind("UF") %>' />
            <br />
            CNPJ:
            <asp:TextBox ID="CNPJTextBox" runat="server" Text='<%# Bind("CNPJ") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserir" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            idCliente:
            <asp:Label ID="idClienteLabel" runat="server" Text='<%# Eval("idCliente") %>' />
            <br />
            Nome:
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Bind("Nome") %>' />
            <br />
            Endereco:
            <asp:Label ID="EnderecoLabel" runat="server" Text='<%# Bind("Endereco") %>' />
            <br />
            Bairro:
            <asp:Label ID="BairroLabel" runat="server" Text='<%# Bind("Bairro") %>' />
            <br />
            Cidade:
            <asp:Label ID="CidadeLabel" runat="server" Text='<%# Bind("Cidade") %>' />
            <br />
            CEP:
            <asp:Label ID="CEPLabel" runat="server" Text='<%# Bind("CEP") %>' />
            <br />
            UF:
            <asp:Label ID="UFLabel" runat="server" Text='<%# Bind("UF") %>' />
            <br />
            CNPJ:
            <asp:Label ID="CNPJLabel" runat="server" Text='<%# Bind("CNPJ") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cesumarConnectionString %>" 
        SelectCommand="SELECT * FROM [Clientes]" 
        InsertCommand="INSERT INTO [Clientes] (Nome, Endereco, Bairro, Cidade, CEP, UF, CNPJ) VALUES (@Nome, @Endereco, @Bairro, @Cidade, @CEP, @UF, @CNPJ)"
        UpdateCommand="UPDATE Clientes SET Nome = @Nome, Endereco = @Endereco, Bairro = @Bairro, Cidade = @Cidade, CEP = @CEP, UF = @UF, CNPJ = @CNPJ WHERE idCliente = @idCliente">
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="[" Width="56px" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="&lt;&lt;" Width="56px" />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="&gt;&gt;" Width="56px" />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="]" Width="56px" />
    <asp:Button ID="Editar" runat="server" OnClick="Button5_Click" Text="Editar"  Width="65px"/>
    <asp:Button ID="Cadastro" runat="server" OnClick="Button7_Click" Text="Cadastro" />
    </asp:Content>
