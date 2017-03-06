<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.Producto>>" %>


<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
 
    <br><br><br>
 
 
      <div class="row">
         <div class="col-sm-9">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        
                        <td style="background-color:#EAF0F2; text-align:center; font-weight:bold"><%: Html.DisplayNameFor(model => model.Nombre) %></td>
                        <td style="background-color:#EAF0F2; text-align:center; font-weight:bold"> <%: Html.DisplayNameFor(model => model.Precio) %></td>
                        <td style="background-color:#EAF0F2; text-align:center; font-weight:bold"> <%: Html.DisplayNameFor(model => model.Cantidad) %></td>
                        <td style="background-color:#EAF0F2; text-align:center; font-weight:bold"></td>
                    </tr>
                </thead>
                <tbody>
             <% foreach (var item in Model) { %>
                    <tr>
                        
                        <td WIDTH="45%">
                            <h5><%: Html.DisplayFor(modelItem => item.Nombre) %></h5>
                            <p></p>
                        </td>
                        <td style="text-align:center";>
                            <p>  <%: Html.DisplayFor(modelItem => item.Precio) %> €</p>
                        </td>
                        <td style="text-align:center";>
                            <p>  <%: Html.DisplayFor(modelItem => item.Cantidad) %></p>
                        </td>
                        <td>
                         
                           <%: Html.ActionLink(" ", "DeleteProductCart", new { id = item.Id },  new { @style = "background:url('../Images/carrito-eliminar.png') no-repeat center right; display:block; height: 30px; width: 50px; padding-right:80px;"}) %>
                         
                       </td>
                    </tr>

             <% } %>
                   <td style="background-color:#6DD461;  font-weight:bold">
                      <div class="btn btn-default">
                         <strong> <%: Html.ActionLink ("Seguir comprando", "Index")%> </strong>
                        </div>
                    </td>
                </tbody>

            </table>

          </div>




      
            <div class="col-sm-3">
              <table class="table table-bordered">

                 <thead>
                    <tr>
                      <td style="background-color:#EAF0F2; text-align:center; font-weight:bold">TOTAL DEL CARRITO</td>
                    </tr>
                </thead>

                <tbody>
                   <tr>
                        <td>
                           <%
                                float total = 0;
                                foreach (var item in Model)
                                {
                                    total = total + (float)item.Precio * (int)item.Cantidad;
                                }
                            %>

                            <div class="row">
                                <div class="col-sm-6 text-right">
                                 <h4><strong>TOTAL</strong></h4>
                                </div>
                                <div class="col-sm-6 ">
                                 <h4><%: total  %> €</h4>
                                </div>
                           </div>
                            <br>
                          <p class="text-right">
                           <%: Html.ActionLink("Generar pedido", "savepedido", new { total = total },new { @class = " btn btn-success btn-sm" } ) %>
                           </p>
                      </td>
                   </tr>


               </tbody>


                   
                    
              </table>
            </div>
        </div>
 
</asp:Content>