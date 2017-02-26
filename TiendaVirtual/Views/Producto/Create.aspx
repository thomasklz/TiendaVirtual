<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Producto>" %>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">

    <script src="<%: Url.Content("~/Scripts/jquery-1.7.1.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <br><br><br>
    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>Producto</legend>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Cantidad) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Cantidad) %>
                <%: Html.ValidationMessageFor(model => model.Cantidad) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Precio) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Precio) %>
                <%: Html.ValidationMessageFor(model => model.Precio) %>
            </div>
          
             <br><p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>
    <% } %>
    <br>
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
    <br><br><br><br>
</asp:Content>