﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buyerpage.aspx.cs" Inherits="index" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>E-BIDDING</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="ds/css/linearicons.css">
			<link rel="stylesheet" href="ds/css/font-awesome.min.css">
			<link rel="stylesheet" href="ds/css/bootstrap.css">
			<link rel="stylesheet" href="ds/css/magnific-popup.css">
			<link rel="stylesheet" href="ds/css/jquery-ui.css">				
			<link rel="stylesheet" href="ds/css/nice-select.css">							
			<link rel="stylesheet" href="ds/css/animate.min.css">
			<link rel="stylesheet" href="ds/css/owl.carousel.css">				
			<link rel="stylesheet" href="ds/css/main.css">
		


  </head>
<body>


    	<header id="header">
				<div class="header-top">
					<div class="container">
			  		<div class="row align-items-center">
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-left">
			  						
			  			</div>
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-right">
							<div class="header-social">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-behance"></i></a>
							</div>
			  			</div>
			  		</div>			  					
					</div>
				</div>
				<div class="container main-menu">
					<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <b>E-Bidding </b>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				        <li><a href="buyerpage.aspx">Home</a></li>
                            <li><a href="BidView.aspx">Bid Product</a></li>
				           <li><a href="Seller.aspx">Approved Products</a></li> <li><a href="Feed.aspx">Feedback</a></li>
				          <li><a href="Ulogin.aspx">Logout</a></li>
				     
				        
				        </ul>
				      </nav><!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header>
    <div style="padding-top:100px;min-height:560px;background-image:url('images/21.jpg');background-position:center;background-repeat:no-repeat;background-size:cover" class="col-md-12">
        
              <form id="form1" runat="server">           
            <h3 style="color:white">Latest Products for buying !!!</h3><br />
              <asp:GridView ID="adgrid3" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." ForeColor="#ffffff" 
                    GridLines="None" Width="1100px" OnRowCommand="adgrid3_RowCommand" OnRowDeleted="RowDelete">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" CssClass="abc" HorizontalAlign="Left" />
                    <Columns>
                    
                        <asp:BoundField DataField="Pid" HeaderText="ID" 
                            SortExpression="Pid" />
                         <asp:BoundField DataField="Prdname" HeaderText="Product Name" HeaderStyle-HorizontalAlign="Center"
                            SortExpression="Prdname" />
                            <asp:BoundField DataField="Bcost" HeaderText="minimum cost" 
                            SortExpression="Bcost" />  
                        <asp:BoundField DataField="date" HeaderText="Date" 
                            SortExpression="date" />  
                            <asp:BoundField DataField="Ldate" HeaderText="Last date" 
                            SortExpression="Ldate" /> 

                        
                        <asp:BoundField DataField="desct" HeaderText="Description" 
                            SortExpression="Description" />  
                    <asp:TemplateField>
            <ItemTemplate>
                <asp:Image ID="img2" runat="server" ImageUrl='<%# String.Format("~/images/{0}",Eval("File")) %>' Width="100" Height="100" />
            </ItemTemplate>
        </asp:TemplateField>

                            
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
             <!-- <table class="container" style="">
              <tr>
                      <td>
                          &nbsp;</td>
                      <td align="right">Select Document :
                          &nbsp;</td>
                      <td align="left" colspan="2">-->
                          
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                              
                  ConnectionString="<%$ ConnectionStrings:KACDbConnectionString %>" SelectCommand=""></asp:SqlDataSource>
                     <!--     &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          &nbsp;</td>
                      <td align="right">
                          &nbsp;</td>
                      <td align="left" colspan="2">
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          &nbsp;</td>
                      <td align="right">
                          &nbsp;</td>
                      <td align="left" colspan="2">
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          &nbsp;</td>
                      <td align="right">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          <td align="left">
                          &nbsp;&nbsp;&nbsp;&nbsp;
                         <td align="center">
                          &nbsp;</td>
                      <td align="left">&nbsp;&nbsp;</td>
                  </tr>
                 
              </table>-->
            </form>
    </div>
<div id="templatemo_footer">
    <div>
        <p id="footer">Copyright &copy; <script>document.write(new Date().getFullYear());</script>  Online Bidding</p>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.singlePageNav.min.js"></script>
<script src="js/unslider.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
<script src="js/templatemo_script.js"></script>
</body>
</html>