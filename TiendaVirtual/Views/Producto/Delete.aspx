
<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Producto>" %>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <br><br>
    <h3>Está seguro que desea eliminar este producto?</h3>
    <fieldset>
        <legend>Producto</legend>
    <br><br>
        <div class="display-label">
          <strong> <%: Html.DisplayNameFor(model => model.Nombre) %></strong> 
        </div>
        <div class="display-field">
          <span style="padding-left:60px;">    <%: Html.DisplayFor(model => model.Nombre) %></span>
        </div>
    
        <div class="display-label">
             <strong>  <%: Html.DisplayNameFor(model => model.Cantidad) %></strong> 
        </div>
        <div class="display-field">
            <span style="padding-left:60px;">  <%: Html.DisplayFor(model => model.Cantidad) %></span>
        </div>
    
        <div class="display-label">
            <strong>   <%: Html.DisplayNameFor(model => model.Precio) %></strong> 
        </div>
        <div class="display-field">
            <span style="padding-left:60px;">  <%: Html.DisplayFor(model => model.Precio) %></span>
        </div>
    </fieldset>
    <br><br>
    <% using (Html.BeginForm()) { %>
        <p>
            <input type="submit" value="Delete" /> |
            <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>
    
    <br><br><br><br>
</asp:Content>