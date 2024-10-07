<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppPractica._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pagina ejemplo</title>

    <link rel="stylesheet" href="style.css" />

</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:Repeater ID="Repeater1" runat="server">

                <HeaderTemplate>
                    <h1>Listado de libros</h1>
                </HeaderTemplate>

                <ItemTemplate>
                    <%# Eval("Nombre") %>
                    <br />
                    <%# Eval("Precio") %>
                    <br />
                </ItemTemplate>

                <FooterTemplate>
                    <hr />
                    Consultas a <a href="mailto:consultas@mimail.com">consultas@mimail.com</a>
                </FooterTemplate>

            </asp:Repeater>
            <hr />
        </div>

        <section>
            <h2>Controles de servidor Web</h2>

            <h3>Control label</h3>

            <asp:Label ID="lblLabel" runat="server" Text="Esta es un Label"></asp:Label>

            <h3>Control literal</h3>

            <asp:Literal ID="ltlLista" runat="server" Text="<ol><li>Elemento 1</li><li>Elemento 2</li><li>Elemento 3</li></ol>"></asp:Literal>

            <h3>Control Textbox</h3>

            <asp:TextBox ID="txtTexto" runat="server" TextMode="MultiLine"></asp:TextBox>

            <h3>Control Button</h3>

            <asp:Button ID="btnBoton" runat="server" Text="Boton" BorderColor="LightBlue" OnClick="btnBoton_Click" />

            <h3>Control hyperlink</h3>

            <asp:HyperLink ID="hypLink" runat="server" NavigateUrl="~/Ra.jpg">Abrir imagen</asp:HyperLink>

            <a href="Ra.jpg">Abrir imagen</a>

            <h3>Control linkButton</h3>

            <asp:LinkButton ID="lnkBoton" runat="server" Text="LinkBoton" OnClick="btnBoton_Click"></asp:LinkButton>

            <h3>Control ImageButton</h3>

            <asp:ImageButton ID="imgBoton" runat="server" ImageUrl="~/Ra.jpg" Width="200" OnClick="imgBoton_Click" />

            <h3>Control Dropdowdlist</h3>

            <asp:DropDownList ID="ddlControl" runat="server" Font-Bold="true">
                <asp:ListItem Text="Azul" Value="1"></asp:ListItem>
                <asp:ListItem Text="Verde" Value="2" Enabled="true"></asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="ddlPrueba" runat="server" Font-Bold="true"></asp:DropDownList>

            <h3>Control listBox</h3>

            <asp:ListBox ID="lsbList" runat="server" Width="100">

                <asp:ListItem Text="Azul" Value="1"></asp:ListItem>
                <asp:ListItem Text="Verde" Value="2" Enabled="true"></asp:ListItem>
                <asp:ListItem Text="Amarillo" Value="3"></asp:ListItem>
                <asp:ListItem Text="Rojo" Value="4"></asp:ListItem>
                <asp:ListItem Text="Negro" Value="5"></asp:ListItem>

            </asp:ListBox>

            <asp:Button ID="btnPrecio" runat="server" Text="precio" OnClick="btnPrecio_click" />

            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            <br />
            <br />
           
            <!-- Lista de productos-->
            
            <asp:ListBox ID="lsbListBox" runat="server" Width="100" AutoPostBack="true" OnSelectedIndexChanged="lsbListBox_SelectedIndexChanged"></asp:ListBox>

            <asp:Label ID="lblValor" runat="server">Valor</asp:Label>
            <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>


            <h3>Control RadioButtonList</h3>

            <asp:RadioButtonList ID="radioButtonList1" runat="server" RepeatDirection="Vertical">

                <asp:ListItem Text="Suscripcion Gratuita (No disponible aun)" Value="5" Enabled="false"></asp:ListItem>
                <asp:ListItem Text="Suscripcion Smple" Value="1"></asp:ListItem>
                <asp:ListItem Text="Suscripcion Completa" Value="2"></asp:ListItem>
                <asp:ListItem Text="Suscripcion Plus" Value="3" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Suscripcion Gold" Value="4"></asp:ListItem>

            </asp:RadioButtonList>

            <h3>Control CheckBox y checkBoxList</h3>

            <asp:CheckBox ID="cbx1" runat="server" Text="checkbox1" />

            <asp:CheckBoxList ID="Checkboxlist1" runat="server">

                <asp:ListItem Text="Suscripcion Gratuita (No disponible aun)" Value="5" Enabled="false"></asp:ListItem>
                <asp:ListItem Text="Suscripcion Smple" Value="1"></asp:ListItem>
                <asp:ListItem Text="Suscripcion Completa" Value="2"></asp:ListItem>
                <asp:ListItem Text="Suscripcion Plus" Value="3" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Suscripcion Gold" Value="4"></asp:ListItem>

            </asp:CheckBoxList>



        </section>
    </form>
</body>
</html>
