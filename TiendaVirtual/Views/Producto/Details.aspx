<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Producto>" %>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <br><br>
    <fieldset>
        <legend>Producto</legend>
    
        <div class="display-label">
           <b> <%: Html.DisplayNameFor(model => model.Nombre) %></b>
        </div>
        <div class="display-field">
          <span style="padding-left:60px;">  <%: Html.DisplayFor(model => model.Nombre) %></span>
        </div>
    
        <div class="display-label">
            <b> <%: Html.DisplayNameFor(model => model.Cantidad) %></b>
        </div>
        <div class="display-field">
            <span style="padding-left:60px;"> <%: Html.DisplayFor(model => model.Cantidad) %></span>
        </div>
    
        <div class="display-label">
            <b> <%: Html.DisplayNameFor(model => model.Precio) %></b>
        </div>
        <div class="display-field">
            <span style="padding-left:60px;"> <%: Html.DisplayFor(model => model.Precio) %></span>
        </div>
    </fieldset>
    <br>

      
       <%: Html.ActionLink("Edit", "Edit", new { id=Model.Id }) %>
      
     
       <%: Html.ActionLink("Back to List", "Index") %>
        
   
    <br><br><br><br>
</asp:Content>