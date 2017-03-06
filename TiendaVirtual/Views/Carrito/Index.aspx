<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.Producto>>" %>



<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
 
   
       <br><br><br>
   
        <div class="btn btn-default bnt-sm">
           <%: Html.ActionLink ("Ir a Carrito ", "listaCarrito")%>
        </div>
        <br><br>
    
    <table class="table table-hover">
        <tr>
             
            <th WIDTH="40%">
                <%: Html.DisplayNameFor(model => model.Nombre) %>
            </th>
             <th style="text-align:center";>
            
            </th>
            <th style="text-align:center";>
               Disponibles
            </th>
            <th style="text-align:center";>
                <%: Html.DisplayNameFor(model => model.Precio) %>
            </th>
            
            <th style="text-align:center";></th>
        </tr>
    <% int num = 1; %>
    <% foreach (var item in Model) { %>
        
        <tr> 
            <td>
                <%: Html.DisplayFor(modelItem => item.Nombre) %>
              
            </td>
            <td>
               <img src="../Images/<%: num %>.png" />
            </td>
            <td style="text-align:center";>
                <%: Html.DisplayFor(modelItem => item.Cantidad) %>
            </td>
            <td style="text-align:center";>
                <%: Html.DisplayFor(modelItem => item.Precio)  %> €
            </td>
            <% num = num + 1; %>
            <td style="text-align:center";>
                <div class="btn btn-default">
                    <%: Html.ActionLink ("Añadir", "AddProductCart", new { id = item.Id }, new { @style = "background:url('../Images/anadir.png') no-repeat center right; display:block; height: 30px; width: 50px; padding-right:80px;"})%>

               </div>
            </td>
        </tr>
    <% } %>
    
    </table>
</asp:Content>