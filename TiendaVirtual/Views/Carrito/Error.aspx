<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.Producto>>" %>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <br><br>
    <div class="btn btn-danger bnt-sm">
           <%: Html.ActionLink ("Ir a Carrito ", "listaCarrito")%>
        </div>
     <br>
    <h2>Error al añadir, producto no disponible en stock</h2>

    <br><br><br><br><br><br><br><br><br><br><br><br>
</asp:Content>