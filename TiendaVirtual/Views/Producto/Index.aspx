﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.Producto>>" %>



<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
 
   
       <br><br><br>
   
        <div class="btn btn-primary">
            <i class="icon-white icon-list-alt"></i>  <%: Html.ActionLink("Agregar Nuevo", "Create") %>

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
                <%: Html.DisplayNameFor(model => model.Cantidad) %>
            </th>
              <th style="text-align:center";>
                <%: Html.DisplayNameFor(model => model.Precio) %>
            </th>
               <th >
                Acciones
            </th>
            <th></th>
        </tr>
     <% int num = 1; %>
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.Nombre) %>
            </td>
            <td style="text-align:center";>
               <img src="../Images/<%: num %>.png" />
            </td>
            <td style="text-align:center";>
                <%: Html.DisplayFor(modelItem => item.Cantidad) %>
            </td>
          <td style="text-align:center";>
                <%: Html.DisplayFor(modelItem => item.Precio) %>
            </td>
              <% num = num + 1; %>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { id=item.Id }) %> |
                <%: Html.ActionLink("Detalle", "Details", new { id=item.Id }) %> |
                <%: Html.ActionLink("Borrar", "Delete", new { id=item.Id }) %>
            </td>
        </tr>
    <% } %>
    
    </table>
</asp:Content>