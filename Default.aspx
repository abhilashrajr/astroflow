<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" runat="server" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style30
        {
            font-weight: bold;
        }
        .style31
        {
            color: #eedcdc;
            width: 100px;
            font-family: Kerala;
            font-size: medium;
            background-color: #eaddd5;
        }
        .style8
        {
            font-weight: bold;
            font-size: small;
             font-family: Arial;
        }
        .style29
        {
            color: #eed4d4;
        }
        .style27
        {
            font-size: medium;
        }
        .auto-style1 {
            width: 257px;
        }
        .auto-style2 {
            width: 250px;
        }
            body
    {
        font-family: Arial;
        font-size: 10pt;
    }
    .main_menu
    {
        width: 100px;
        background-color: #8AE0F2;
        color: #000;
        text-align: center;
        height: 30px;
        line-height: 30px;
        margin-right: 5px;
    }
    .level_menu
    {
        width: 110px;
        background-color: #000;
        color: #fff;
        text-align: center;
        height: 30px;
        line-height: 30px;
        margin-top: 5px;
    }
    .selected
    {
        background-color: #852B91;
        color: #fff;
    }
    .menuItem
 {

 background-image : url("/image/bck.png");

 }
  
        </style>
     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

  <script type="text/javascript" src="jquery.timepicker.js"></script>
  <link rel="stylesheet" type="text/css" href="jquery.timepicker.css" />

  <script type="text/javascript" src="lib/bootstrap-datepicker.js"></script>
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker.css" />

    
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" >

        <div style="margin-left:210px">
        <asp:Menu ID="navMenu" runat="server" 
                    BackColor="#FFCACA" BorderColor="Black"
                    StaticMenuItemStyle-ForeColor="Black"
                   
                    StaticMenuItemStyle-VerticalPadding="20px"
                    StaticMenuItemStyle-HorizontalPadding="40px"
                    RenderingMode="List" Orientation="Horizontal" ForeColor="Black">
                    <Items>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/astrology.php" Text="Astrology" Value="Astrology"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/contents.php?id=4" Text="Gem Consulting " Value="Gem Consulting "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/remedies.php" Text="Remedies " Value="Remedies "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/contents.php?id=17" Text="Live Astrolgy Consulting " Value="Live_Astrolgy_Consulting "></asp:MenuItem>
                        <asp:MenuItem  NavigateUrl="http://keralaastrologears.blogspot.in/" Text="Blog " Value="Blog "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/contactus.php" Text="Contact As " Value="Contact_As "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/ccpay.php" Text="Make Pament " Value="Make_Pament "></asp:MenuItem>
                    </Items>

<StaticMenuItemStyle HorizontalPadding="40px" VerticalPadding="20px" ForeColor="Black"></StaticMenuItemStyle>
                </asp:Menu></div>


        <br />
        <br />
      
   
    
      
    
        <table border="1" style="width: 924px; background-color: #e6d4d4;" align="center">
            <tr>
                <td class="style8"><strong><span class="style8">
                    <asp:Label ID="Label7" runat="server" Text="Bride"></asp:Label>

                                                </span></strong></td>
               <td style="background-color: #ccccff" class="auto-style2">&nbsp;</td>
                <td class="style8"><strong><span class="style8">
                    <asp:Label ID="Label8" runat="server" Text="Groom"></asp:Label>

                                                </span></strong></td>
               <td style="background-color: #ccccff" class="auto-style1">&nbsp;</td>


            </tr>
            <tr>

                <td class="style8" >
                    <asp:Label ID="Label9" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style2">
                    
                    <asp:TextBox ID="TextBox2" runat="server" Width="160px" TextMode="DateTime" ></asp:TextBox>&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/image/calendar.png" Width="16px" />
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Width="201px" ></asp:Calendar>
                    
                </td>
                <td class="style8" >Date of Birth</td>
                <td style="background-color: #ccccff" class="auto-style1">
                    
                    <asp:TextBox ID="TextBox1" runat="server" Width="159px" ></asp:TextBox>&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="16px" ImageUrl="~/image/calendar.png" Width="16px" />
                    <asp:Calendar ID="Calendar2" runat="server" Width="201px"></asp:Calendar>
                </td>





            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label10" runat="server" Text="Time of Birth"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style2">
                    <input type="text" style="width: 100px;" id="tob_a" class="time"/>
                </td>
                <td class="style8">
                <asp:Label ID="Label11" runat="server" Text="Time of Birth"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style1">
                    <input type="text" style="width: 100px;" id="tob_a1" class="time"/>
                </td>


            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label12" runat="server" Text="Zone"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="211px" >
                        <asp:ListItem Value="-12:00">Dateline Standard Time</asp:ListItem>
                        <asp:ListItem Value="-11:00">Samoa Standard Time</asp:ListItem>
                        <asp:ListItem Value="-10:00">Hawaiian Standard Time</asp:ListItem>
                        <asp:ListItem Value="-09:00">Alaskan Standard Time</asp:ListItem>
                        <asp:ListItem Value="-08:00">Pacific Standard Time</asp:ListItem>
                        <asp:ListItem Value="-07:00">Mountain Standard Time</asp:ListItem>
                        <asp:ListItem Value="-07:00">Mexico Standard Time 2</asp:ListItem>
                        <asp:ListItem Value="-07:00">U.S.Mountain Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Central Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Canada Central Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Mexico Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Mexico Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Central America Standard Time</asp:ListItem>
                        <asp:ListItem Value="-05:00">Eastern Standard Time</asp:ListItem>
                        <asp:ListItem Value="-05:00">U.S. Eastern Standard Time</asp:ListItem>
                        <asp:ListItem Value="-05:00">S.A. Pacific Standard Time</asp:ListItem>
                        <asp:ListItem Value="-04:00">Atlantic Standard Time</asp:ListItem>
                        <asp:ListItem Value="-04:00">S.A. Western Standard Time</asp:ListItem>
                        <asp:ListItem Value="-04:00">Pacific S.A. Standard Time</asp:ListItem>
                        <asp:ListItem Value="-03:30">Newfoundland and Labrador Standard Time</asp:ListItem>
                        <asp:ListItem Value="-03:00">E. South America Standard Time</asp:ListItem>
                        <asp:ListItem Value="-03:00">S.A. Eastern Standard Time</asp:ListItem>
                        <asp:ListItem Value="-03:00">Greenland Standard Time</asp:ListItem>
                        <asp:ListItem Value="-02:00">Mid-Atlantic Standard Time</asp:ListItem>
                        <asp:ListItem Value="-01:00">Azores Standard Time</asp:ListItem>
                        <asp:ListItem Value="-01:00">Cape Verde Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">Central Europe Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">Central European Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">Romance Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">W. Europe Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">W. Central Africa Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">E. Europe Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">Egypt Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">FLE Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">GTB Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">Israel Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">South Africa Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:00">Russian Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:00">Arab Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:00">E. Africa Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:00">Arabic Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:30">Iran Standard Time</asp:ListItem>
                        <asp:ListItem Value="+04:00">Arabian Standard Time</asp:ListItem>
                        <asp:ListItem Value="+04:00">Caucasus Standard Time</asp:ListItem>
                        <asp:ListItem Value="+04:30">Transitional Islamic State of Afghanistan Standard Time</asp:ListItem>
                        <asp:ListItem Value="+05:00">Ekaterinburg Standard Time</asp:ListItem>
                        <asp:ListItem Value="+05:00">West Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+05:30">India Standard Time</asp:ListItem>
                        <asp:ListItem Value="+05:45">Nepal Standard Time</asp:ListItem>
                        <asp:ListItem Value="+06:00">Central Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+06:00">Sri Lanka Standard Time</asp:ListItem>
                        <asp:ListItem Value="+06:00">N. Central Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+06:30">Myanmar Standard Time</asp:ListItem>
                        <asp:ListItem Value="+07:00">S.E. Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+07:00">North Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">China Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">Singapore Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">Taipei Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">W. Australia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">North Asia East Standard Time</asp:ListItem>
                        <asp:ListItem Value="+09:00">Korea Standard Time</asp:ListItem>
                        <asp:ListItem Value="+12:00">New Zealand Standard Time</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style8">
                    <asp:Label ID="Label13" runat="server" Text="Zone"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style1">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="214px">
                        <asp:ListItem Value="-12:00">Dateline Standard Time</asp:ListItem>
                        <asp:ListItem Value="-11:00">Samoa Standard Time</asp:ListItem>
                        <asp:ListItem Value="-10:00">Hawaiian Standard Time</asp:ListItem>
                        <asp:ListItem Value="-09:00">Alaskan Standard Time</asp:ListItem>
                        <asp:ListItem Value="-08:00">Pacific Standard Time</asp:ListItem>
                        <asp:ListItem Value="-07:00">Mountain Standard Time</asp:ListItem>
                        <asp:ListItem Value="-07:00">Mexico Standard Time 2</asp:ListItem>
                        <asp:ListItem Value="-07:00">U.S.Mountain Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Central Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Canada Central Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Mexico Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Mexico Standard Time</asp:ListItem>
                        <asp:ListItem Value="-06:00">Central America Standard Time</asp:ListItem>
                        <asp:ListItem Value="-05:00">Eastern Standard Time</asp:ListItem>
                        <asp:ListItem Value="-05:00">U.S. Eastern Standard Time</asp:ListItem>
                        <asp:ListItem Value="-05:00">S.A. Pacific Standard Time</asp:ListItem>
                        <asp:ListItem Value="-04:00">Atlantic Standard Time</asp:ListItem>
                        <asp:ListItem Value="-04:00">S.A. Western Standard Time</asp:ListItem>
                        <asp:ListItem Value="-04:00">Pacific S.A. Standard Time</asp:ListItem>
                        <asp:ListItem Value="-03:30">Newfoundland and Labrador Standard Time</asp:ListItem>
                        <asp:ListItem Value="-03:00">E. South America Standard Time</asp:ListItem>
                        <asp:ListItem Value="-03:00">S.A. Eastern Standard Time</asp:ListItem>
                        <asp:ListItem Value="-03:00">Greenland Standard Time</asp:ListItem>
                        <asp:ListItem Value="-02:00">Mid-Atlantic Standard Time</asp:ListItem>
                        <asp:ListItem Value="-01:00">Azores Standard Time</asp:ListItem>
                        <asp:ListItem Value="-01:00">Cape Verde Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">Central Europe Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">Central European Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">Romance Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">W. Europe Standard Time</asp:ListItem>
                        <asp:ListItem Value="+01:00">W. Central Africa Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">E. Europe Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">Egypt Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">FLE Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">GTB Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">Israel Standard Time</asp:ListItem>
                        <asp:ListItem Value="+02:00">South Africa Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:00">Russian Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:00">Arab Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:00">E. Africa Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:00">Arabic Standard Time</asp:ListItem>
                        <asp:ListItem Value="+03:30">Iran Standard Time</asp:ListItem>
                        <asp:ListItem Value="+04:00">Arabian Standard Time</asp:ListItem>
                        <asp:ListItem Value="+04:00">Caucasus Standard Time</asp:ListItem>
                        <asp:ListItem Value="+04:30">Transitional Islamic State of Afghanistan Standard Time</asp:ListItem>
                        <asp:ListItem Value="+05:00">Ekaterinburg Standard Time</asp:ListItem>
                        <asp:ListItem Value="+05:00">West Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+05:30">India Standard Time</asp:ListItem>
                        <asp:ListItem Value="+05:45">Nepal Standard Time</asp:ListItem>
                        <asp:ListItem Value="+06:00">Central Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+06:00">Sri Lanka Standard Time</asp:ListItem>
                        <asp:ListItem Value="+06:00">N. Central Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+06:30">Myanmar Standard Time</asp:ListItem>
                        <asp:ListItem Value="+07:00">S.E. Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+07:00">North Asia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">China Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">Singapore Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">Taipei Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">W. Australia Standard Time</asp:ListItem>
                        <asp:ListItem Value="+08:00">North Asia East Standard Time</asp:ListItem>
                        <asp:ListItem Value="+09:00">Korea Standard Time</asp:ListItem>
                        <asp:ListItem Value="+12:00">New Zealand Standard Time</asp:ListItem>
                    </asp:DropDownList>
                </td>


            </tr>
           
            <tr>
                <td class="style8">

                  <div>  <asp:Label ID="Label3" runat="server" Text="Birth city"></asp:Label></div>
                    <br />
                  <div>   <asp:Label ID="Label1" runat="server" Text="Latitude"></asp:Label></div>
                    <br />
                 <div>   <asp:Label ID="Label2" runat="server" Text="Longitude"></asp:Label></div> 

                </td>
                <td style="background-color: #ccccff" class="auto-style2">
                    <asp:TextBox ID="TextBox7" runat="server" AutoPostBack="true" Width="161px"></asp:TextBox>
                    <br />
                        <br />
                    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    runat="server" AutoGenerateColumns="false" Visible="False">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" />
        <asp:BoundField DataField="Address" HeaderText="Address" />
        <asp:BoundField DataField="Latitude" HeaderText="Latitude" />
        <asp:BoundField DataField="Longitude" HeaderText="Longitude" />
    </Columns>
</asp:GridView>

                    <div>

                        
                    <asp:TextBox ID="tbllat1" runat="server" Width="161px"></asp:TextBox>
                        <br />
                        <br />

                        <asp:TextBox ID="tbllong1" runat="server" Width="162px"></asp:TextBox>
                    </div>


                </td>

                <td class="style8">

                  <div>  <asp:Label ID="Label4" runat="server" Text="Birth city"></asp:Label></div>
                    <br />
                  <div>   <asp:Label ID="Label5" runat="server" Text="Latitude"></asp:Label></div>
                    <br />
                 <div>   <asp:Label ID="Label6" runat="server" Text="Longitude"></asp:Label></div> 

                </td>
                <td style="background-color: #ccccff" class="auto-style1">
                    <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="true" Width="160px"></asp:TextBox>
                    <br />
                        <br />
                    <asp:GridView ID="GridView2" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    runat="server" AutoGenerateColumns="false" Visible="False">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" />
        <asp:BoundField DataField="Address" HeaderText="Address" />
        <asp:BoundField DataField="Latitude" HeaderText="Latitude" />
        <asp:BoundField DataField="Longitude" HeaderText="Longitude" />
    </Columns>
</asp:GridView>

                    <div>

                        
                    <asp:TextBox ID="TextBox6" runat="server" Width="160px"></asp:TextBox>
                        <br />
                        <br />

                        <asp:TextBox ID="TextBox8" runat="server" Width="161px"></asp:TextBox>
                    </div>


                </td>





            </tr>
            <tr>
                
                </td>
            </tr>
           
               

        </table>
        <div>

            

        </div>



        <span class="style30">
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="calculate" />
        <asp:TextBox ID="TextBox9" runat="server" TextMode="DateTime"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" Width="1px"></asp:TextBox>
                    <asp:TextBox ID="TextBox10" runat="server" Width="1px"></asp:TextBox>
        <br />
        <table border="1" style="width: 495px; background-color: #FFCCCC;">
            <tr>
                <td class="style29" rowspan="2" style="width: 100px; background-color: #FF6600"><strong>Papasamyam<span class="style27"></span></strong></td>
                <td class="style29" style="width: 100px; background-color: #FF6600"><strong>Bride</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29" style="width: 100px; background-color: #FF6600"><strong>Groom</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29" rowspan="2"style="width: 100px; background-color: #FF6600"><strong>Chovvadosham</strong><span class="style27"></span></td>
                
                <td class="style29" style="width: 100px; background-color: #FF6600"><strong>Bride</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29" style="width: 100px; background-color: #FF6600"><strong>Groom</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            </span><span class="style30">
            <tr>
                <td class="style29" rowspan="2" style="width: 100px; background-color: #FF6600"><strong><span class="style27">Shudda Jathakam</span></strong></td>
                </span><span class="style8">
                <td class="style29" style="width: 100px; background-color: #FF6600"><strong>Bride</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29" style="width: 100px; background-color: #FF6600"><strong>Groom</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Height="16px" Width="195px"></asp:Label>
        </span>
        <br />
    
    </div>

        <div>

           

        </div>



    </form>

    <script type="text/javascript">


        $(function () {
            $('#tob_a').timepicker({ 'timeFormat': 'G:ia' });
        });

        $('#tob_a').on("change", function () {
            var stri = $('#tob_a').val();

            $('#TextBox3').val(stri);
        });

        $(function () {
            $('#tob_a1').timepicker({ 'timeFormat': 'G:ia' });
        });

        $('#tob_a1').on("change", function () {
            var stri = $('#tob_a1').val();

            $('#TextBox10').val(stri);
        });



    </script>
</body>
</html>
