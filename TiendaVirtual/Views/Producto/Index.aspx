<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.Producto>>" %>



<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
 
   
       <br><br><br>
   
        <div class="btn btn-primary">
            <i class="icon-white icon-list-alt"></i>  <%: Html.ActionLink("Agregar Nuevo", "Create") %>

        </div>
        <br><br>
    
    <table class="table table-hover">
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.Nombre) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Cantidad) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Precio) %>
            </th>
             <th>
                Acciones
            </th>
            <th></th>
        </tr>
    
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.Nombre) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Cantidad) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Precio) %>
            </td>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { id=item.Id }) %> |
                <%: Html.ActionLink("Detalle", "Details", new { id=item.Id }) %> |
                <%: Html.ActionLink("Borrar", "Delete", new { id=item.Id }) %>
            </td>
        </tr>
    <% } %>
    
    </table>
</asp:Content>