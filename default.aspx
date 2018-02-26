<%@ Page Title="" Language="C#" MasterPageFile="~/kulanici.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="siteEmlak._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     
   <!-- Insert to your webpage before the </head> -->
    <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <script src="sliderengine/initslider-1.js"></script>
    <!-- End of head section HTML codes -->

    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 480px;
            left: -3px;
            top: -27px;

        }
        .auto-style2 {
            width: 190px;
            height: 150px;
        }
        </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:700px; float:left; height:auto;">
        <div style="width:690px; margin:0 auto;">

<%--  <asp:DataList ID="dl_vitrin" runat="server" CssClass="auto-style2" style="margin-left: 7">
                <ItemTemplate>
                    <div style="width: 200px; height: 220px; background-color: #f5f5f5;">
                 <div style="width:190px; height:150px; margin:0 auto;">
                     <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("ilanVresim") %>' />
                        </div>
                     <div style="width:190px; height:30px; margin:0 auto; color:#3d3939;">
                        </div>
                         <div style="height:30px; width:190px; margin:0 auto; color:#3d3939; font-weight:bold"></div>

                        </div>
                </ItemTemplate>
            </asp:DataList>--%>

            <div style="margin:30px auto;max-width:620px;">
    
    <!-- Insert to your webpage where you want to display the slider -->
    <div id="amazingslider-1" style="display:block;margin:16px auto 62px;" class="auto-style1">
        <ul class="amazingslider-slides" style="display:none;">
            <asp:DataList ID="dl_slider" runat="server">

                <ItemTemplate>
            <li><img src="<%#Eval("ilanVResim") %>" alt="<%#Eval("ilanBaslik") %>   </br> <%#Eval("ilanFiyat") %> "  data-description="" /></li>


                </ItemTemplate>

            </asp:DataList>


        </ul>
        <ul class="amazingslider-thumbnails" style="display:none;">
            <li><img src="images/thumbnails/apart.jpg" /></li>
            <li><img src="images/thumbnails/indir.jpg" /></li>
        </ul>
        <div class="amazingslider-engine" style="display:none;"><a href="http://www.amazingslider.com">jQuery Slider</a></div>
    </div>
    <!-- End of body section HTML codes -->
    
</div>




        </div>
    </div> 

    <div style="float:left; height:auto; width:700px;"> &nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İLAN VİTRİN</div>
   
    <div style="height:auto; width:700px; float:left;"> 
        <div style="width:680px; height:auto; margin:0 auto;">
           
            <asp:DataList ID="dl_vitrin" runat="server" Width="680px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div style="width: 200px; height: 220px; background-color: #f5f5f5; float:left; margin:13px;">
                        <div style="margin:0 auto;" class="auto-style2"> 
                           <a href="ilandetay.aspx?ilanID=<%#Eval("ilanID") %>">  <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ilanVResim") %>' Width="190px" Height="150px" /> </a>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; color:#3d3939;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ilanBaslik") %>'></asp:Label>
                        </div>
                        <div style="height:30px; width:190px; margin:0 auto; color:#3d3939; font-weight:bold;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("ilanFiyat") %>'></asp:Label>
                        </div>

                        </div>
                </ItemTemplate>
            </asp:DataList>
     
        </div>

    </div>

</asp:Content>
