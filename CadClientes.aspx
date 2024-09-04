﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadClientes.aspx.cs" Inherits="Projeto.CadClientes" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <br />
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="idCliente" DataSourceID="SqlDataSource1" Width="378px">
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
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" OnClick="UpdateButton_Click" Text="Atualizar" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cesumarConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
                <br />
                </asp:Content>

