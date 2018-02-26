<%@ Page Title="" Language="C#" MasterPageFile="~/kulanici.Master" AutoEventWireup="true" CodeBehind="ilandetay.aspx.cs" Inherits="siteEmlak.ilandetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <!-- Insert to your webpage before the </head> -->
    <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <script src="sliderengine/initslider-1.js"></script>
    <!-- End of head section HTML codes -->
      <style type="text/css">
          .auto-style1 {
              width: 100%;
          }
      </style>

      </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:700px; height:auto; float:left;">
          <div style="width:700px; height:auto; float:left;">
              <div style="height:auto; float:left; width:340px;">

              <div style="margin:30px auto;max-width:320px;">
    
    <!-- Insert to your webpage where you want to display the slider -->
    <div id="amazingslider-1" style="display:block;position:relative;margin:15px auto 30px;">
        <ul class="amazingslider-slides" style="display:none;">
            <asp:DataList ID="dl_slider" runat="server">
                <ItemTemplate>
      <li>
          <img src="<%#Eval("resimResim") %>" alt="<%#Eval("resimAd") %>"/>
      </li>


                </ItemTemplate>

            </asp:DataList>
        </ul>
        <div class="amazingslider-engine" style="display:none;"><a href="http://www.amazingslider.com">jQuery Slider</a></div>
    </div>
    <!-- End of body section HTML codes -->
    
</div>
</div>
             


          <div style="height:auto; float:right; width:340px; margin-top:30px;">
            <asp:DataList ID="dl_detay" runat="server" Width="330px">

                 <ItemTemplate>                  

              <table class="">
                  <tr>
                      <td style="text-align: right; color: #333333;">Oda Sayisi <br />
                          Bina Yaşı :<br />
                          Bina Katı :<br />
                          Kaçıncı Kat :<br /> Isıtma :  <br />
                          Eşyalı Mı ?<br />
                          <br />                        
                          &nbsp;</td>
                      <td style="color: #666666">
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("idOdaSayisi") %>'></asp:Label>
&nbsp;<br />
                          <asp:Label ID="Label2" runat="server" Text='<%# Eval("idBinaYasi") %>'></asp:Label>
&nbsp;<br />
                          <asp:Label ID="Label3" runat="server" Text='<%# Eval("idBinaKat") %>'></asp:Label>
                          <br />
                          <asp:Label ID="Label4" runat="server" Text='<%# Eval("idBinaKacinciKat") %>'></asp:Label>
                          <br />
                          <asp:Label ID="Label5" runat="server" Text='<%# Eval("idIsitma") %>'></asp:Label>
                          <br />
                          <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("idEsyalimi") %>' />
                          <br />
                          <br />
                          <br />
                      </td>
                  </tr>
              </table>

                      </ItemTemplate>

                  </asp:DataList>

              </div>
          </div>
        </div>


        <div style="width:700px; height:auto;float:left;">
            
          <div style="width:700px; height:auto; float:left; margin-top:30px;">
              <asp:DataList ID="dlk" runat="server" Width="700px">

                  <ItemTemplate>

              

                      <table class="auto-style1">
                          <tr>
                              <td>İÇ ÖZELLİK </td>
                          </tr>
                      </table>
                      <br />

              

                  </ItemTemplate>

              </asp:DataList>
          </div> <%-- dış özellik--%><br />
          <div style="width:700px; height:auto; float:left;margin-top:30px;">Dış Özellik</div> <%-- dış özellik--%>
          </div>



    

</asp:Content>
