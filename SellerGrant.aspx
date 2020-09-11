<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellerGrant.aspx.cs" Inherits="SellerGrant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
				        <li><a href="SelPage.aspx">Home</a></li>
                            <li><a href="ViewPrd.aspx">View Product</a></li>
				           <li><a href="SellerGrant.aspx">Approved Products</a></li>
				          <li><a href="Ulogin.aspx">Logout</a></li>
				     
				        
				        </ul>
				      </nav><!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header>

    <div style="padding-top:100px;min-height:560px;background-image:url('images/ap.jpg');background-position:center;background-repeat:no-repeat;background-size:cover" class="col-md-12">
        
              <form id="form1" runat="server">           
            <h3 style="color:gold;margin-top:10%">Approve Products page !!!</h3><br />
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4"  
                    EmptyDataText="There are no data records to display." ForeColor="#333333" 
                    GridLines="None" Width="1100px" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" CssClass="abc" HorizontalAlign="Left" />
                    <Columns>
                         <asp:BoundField DataField="Rid" HeaderText="Rid" 
                            SortExpression="ProdType" /> 
                     <asp:BoundField DataField="SellerName" HeaderText="Seller Name" 
                            SortExpression="ProdType" />  
                        <asp:BoundField DataField="BuyName" HeaderText="BuyName" 
                            SortExpression="ProdId" />

                         <asp:BoundField DataField="Amount" HeaderText="Amount" HeaderStyle-HorizontalAlign="Center"
                            SortExpression="ProdName" />
                         <asp:BoundField DataField="Status" HeaderText="Status" HeaderStyle-HorizontalAlign="Center"
                            SortExpression="ProdName" />
                             
                              <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="" ShowHeader="True" Text="Aprrove" ControlStyle-Width="150px" ControlStyle-CssClass="btn btn-danger" />
                                                       
                       <asp:ButtonField ButtonType="Button" CommandName="Reject" HeaderText="" ShowHeader="True" Text="Reject" ControlStyle-Width="150px" ControlStyle-CssClass="btn btn-danger" />
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
                    

                  <hr />
                

             
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