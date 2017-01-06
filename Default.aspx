<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width" />
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
        position:relative;
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
  
        .auto-style6 {
            width: 180px;
        }
        .auto-style7 {
            width: 160px;
        }
        .auto-style8 {
            width: 181px;
        }
  
        .auto-style9 {
            font-weight: bold;
            font-size: small;
            font-family: Arial;
            width: 140px;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: small;
            font-family: Arial;
            width: 141px;
        }
        .auto-style11 {
            width: 123px;
        }
  
        </style>
     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

  <script type="text/javascript" src="jquery.timepicker.js"></script>
  <link rel="stylesheet" type="text/css" href="jquery.timepicker.css" />

  <script type="text/javascript" src="lib/bootstrap-datepicker.js"></script>
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker.css" />

    
</head>
<body >
    <form id="form1" runat="server">
    <div align="center"  >

        <div style="margin-left:220px">
        <asp:Menu ID="navMenu" runat="server" 
                    BackColor="#BD8C8C" BorderColor="Black"
                    StaticMenuItemStyle-ForeColor="Black"
                   
                    StaticMenuItemStyle-VerticalPadding="15px"
                    StaticMenuItemStyle-HorizontalPadding="15px"
                    RenderingMode="List" Orientation="Horizontal" ForeColor="Black" Font-Names="Vani">
                    <DynamicHoverStyle BackColor="#C99292" />
                    <Items>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/astrology.php" Text="Astrology" Value="Astrology"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/contents.php?id=4" Text="Gem Consulting " Value="Gem Consulting "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/remedies.php" Text="Remedies " Value="Remedies "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/contents.php?id=17" Text="Live Astrolgy Consulting " Value="Live_Astrolgy_Consulting "></asp:MenuItem>
                        <asp:MenuItem  NavigateUrl="http://keralaastrologears.blogspot.in/" Text="Blog " Value="Blog "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/contactus.php" Text="Contact As " Value="Contact_As "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="http://astroflow.com/ccpay.php" Text="Make Pament " Value="Make_Pament "></asp:MenuItem>
                    </Items>

<StaticMenuItemStyle HorizontalPadding="15px" VerticalPadding="15px" ForeColor="Black"></StaticMenuItemStyle>
                </asp:Menu></div>


        <br />
        <br />
      
   
    
      <div style="margin-right:125px">
    
        <table border="1" style="width: 450px; background-color: #e6d4d4;" align="center">
            <tr>
                <td class="auto-style9"><strong><span class="style8">
                    <asp:Label ID="Label7" runat="server" Text="Bride"></asp:Label>

                                                </span></strong></td>
               <td style="background-color: #ccccff" class="auto-style11">&nbsp;</td>
                <td class="auto-style10"><strong><span class="style8">
                    <asp:Label ID="Label8" runat="server" Text="Groom"></asp:Label>

                                                </span></strong></td>
               <td style="background-color: #ccccff" class="auto-style11">&nbsp;</td>


            </tr>
            <tr>

                <td class="auto-style9" >
                    <asp:Label ID="Label9" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style11">
                     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:TextBox ID="TextBox2" runat="server" Width="160px" TextMode="DateTime" ></asp:TextBox>&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/image/calendar.png" Width="16px" />
                  <!--  <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" >
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>-->
                     <ajaxToolkit:CalendarExtender ID="CalendarExtender1" PopupButtonID="ImageButton1" runat="server" TargetControlID="TextBox2" Format="yyyy/MM/dd"> </ajaxToolkit:CalendarExtender>
          

                     <div> 

       
       
              
                  
                     
        </div>

                    
                </td>
                <td class="auto-style10" >Date of Birth</td>
                <td style="background-color: #ccccff" class="auto-style11">
                    
                    <asp:TextBox ID="TextBox1" runat="server" Width="159px" ></asp:TextBox>&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="16px" ImageUrl="~/image/calendar.png" Width="16px" />
                 <!--  <asp:Calendar ID="Calendar2" runat="server" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>--> 
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" PopupButtonID="ImageButton2" runat="server" TargetControlID="TextBox1" Format="yyyy/MM/dd"> </ajaxToolkit:CalendarExtender>
                </td>





            </tr>
           
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label12" runat="server" Text="Zone"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style11">
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
                <td class="auto-style10">
                    <asp:Label ID="Label13" runat="server" Text="Zone"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style11">
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
                <td class="auto-style9">

                  <div>  <asp:Label ID="Label3" runat="server" Text="Birth city"></asp:Label></div>
                    <br />
                  <div>   <asp:Label ID="Label1" runat="server" Text="Latitude"></asp:Label></div>
                    <br />
                 <div>   <asp:Label ID="Label2" runat="server" Text="Longitude"></asp:Label></div> 

                </td>
                <td style="background-color: #ccccff" class="auto-style11">
                    <asp:TextBox ID="TextBox7" runat="server" AutoPostBack="true" Width="161px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label_Err" runat="server" Text="Wrong Location" Visible="False" AutoPostBack="false"></asp:Label>
                    
                        <br />
                    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    runat="server" AutoGenerateColumns="false" Visible="False" Width="111px">
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

                <td class="auto-style10">

                  <div>  <asp:Label ID="Label4" runat="server" Text="Birth city"></asp:Label></div>
                    <br />
                  <div>   <asp:Label ID="Label5" runat="server" Text="Latitude"></asp:Label></div>
                    <br />
                 <div>   <asp:Label ID="Label6" runat="server" Text="Longitude"></asp:Label></div> 

                </td>
                <td style="background-color: #ccccff" class="auto-style11">
                    <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="true" Width="160px"></asp:TextBox>
                    <br />
                    <asp:Label ID="LabelErr2" runat="server" Text="Wrong location" Visible="False"></asp:Label>
                        <br />
                    <asp:GridView ID="GridView2" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    runat="server" AutoGenerateColumns="false" Visible="False" Width="129px">
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
                <td class="auto-style9">
                    <asp:Label ID="Label10" runat="server" Text="Time of Birth"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style11">
                    <input type="text" style="width: 100px;" id="tob_a"  class="time"/>
                </td>
                <td class="auto-style10">
                <asp:Label ID="Label11" runat="server" Text="Time of Birth"></asp:Label>
                </td>
                <td style="background-color: #ccccff" class="auto-style11">
                    <input type="text" style="width: 100px;" id="tob_a1" class="time"/>
                </td>


            </tr>

            <tr>
                
                </td>
            </tr>
           
               

        </table>
        


        </div>



        <span class="style30"></span>
        <br />
        <br />
        <div style="margin-right:100px">
        <asp:Button ID="Button1" runat="server" Text="calculate" />
        </div>
          <br />
                     
                    
        <br />
            <div style="margin-right:125px">

        <table border="1" style="width: 495px; background-color: #FFCCCC; margin-left: 0px;">
            <tr>
                <td class="style29" rowspan="2" style="width: 100px; background-color: #e6d4d4; color: #000000;">
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="DateTime" Width="1px" Height="1px" BackColor="#FFE8E8"></asp:TextBox>
                    <strong><span class="style27">Papasamyam</span></strong></td>
                <td class="style29" style="width: 100px; background-color: #e6d4d4; color: #000000;"><strong>Bride</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29" style="width: 100px; background-color: #e6d4d4; color: #000000;"><strong>Groom</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29" rowspan="2"style="width: 100px; background-color: #e6d4d4; color: #000000;">
                    
                     <asp:TextBox ID="TextBox3" runat="server" Width="1px" Height="1px" BackColor="#FFE8E8"></asp:TextBox>
                    <strong><span class="style27">Chovvadosham</span></strong></td>
                
                <td class="style29" style="width: 100px; background-color: #e6d4d4; color: #000000;"><strong>Bride</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29" style="width: 100px; background-color: #e6d4d4; color: #000000;"><strong>Groom</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td class="style29" rowspan="2" style="width: 100px; background-color: #e6d4d4; color: #000000;">
                    <asp:TextBox ID="TextBox10" runat="server" Width="1px" Height="1px" BackColor="#FFE8E8"></asp:TextBox>
                    <strong><span class="style27">Shudda Jathakam</span></strong></td>
                
                <td class="style29" style="width: 100px; background-color: #e6d4d4; color: #000000;"><strong>Bride</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29" style="width: 100px; background-color: #e6d4d4; color: #000000;"><strong>Groom</strong></td>
                <td style="width: 100px; background-color: #ccccff">
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
        </table>
                </div>
        <div>
        <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Height="16px" Width="195px"></asp:Label>
            </div>
        
        <br />
        <div style="margin-right:50px">

        <table>
            <tr>
                <td>
                    <div style="width: 220px; margin-top:30px">
                    <asp:Panel ID="Panel1" runat="server" Width="188px">
                        <table>
                            <tr>
                                <td class="auto-style8">
                                    <h4 align="left">Our Terms </h4>

                                </td>

                            </tr>
                            
                            <tr>
                                <td class="auto-style8">
                                                                      
                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=1" Font-Underline="false" ForeColor="#003300">Computer Horoscope Making</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style8">
                                    
                                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=2" Font-Underline="false" ForeColor="#003300">Numerology</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style8">
                                    
                                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="http://astroflow.com/matchmaking.php" Font-Underline="false" ForeColor="#003300">Match Making</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style8">
                                    
                                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=4" Font-Underline="false" ForeColor="#003300">Gem Consulting</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style8">
                                    
                                    <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=5" Font-Underline="false" ForeColor="#003300">Hand Writted Horoscope</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style8">
                                    
                                    <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=6" Font-Underline="false" ForeColor="#003300">Subha Muhurtam Finding</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style8">
                                   
                                    <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=7" Font-Underline="false" ForeColor="#003300">Yearly Prediction</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style8">
                                  
                                    <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=8" Font-Underline="false" ForeColor="#003300">Lucky Name Finding</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style8">
                                    
                                    <asp:LinkButton ID="LinkButton9" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=9" Font-Underline="false" ForeColor="#003300">Kavady Prashnam & Pariharam</asp:LinkButton>
                                </td>
                            </tr>


                        </table>
                    </asp:Panel>
                        </div>

                </td>
                <td class="auto-style6">
                    <div style="margin-top:50px">

                    <asp:Panel ID="Panel2" runat="server" Width="200px">
                        <table>
                            
                            <tr>
                                <td>
                                    <h4 align="left">Remedies</h4>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton10" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=10" Font-Underline="false" ForeColor="#003300">Study Problems</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton11" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=11" Font-Underline="false" ForeColor="#003300">Liquor Habit Prohibition</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=12" Font-Underline="false" ForeColor="#003300">Marriage Problems</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton13" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=13" Font-Underline="false" ForeColor="#003300">Legal Problems</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton14" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=14" Font-Underline="false" ForeColor="#003300">Business Development</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton15" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=15" Font-Underline="false" ForeColor="#003300">Vastu Problems</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton16" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=16" Font-Underline="false" ForeColor="#003300">Medical Astrology</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton17" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=17" Font-Underline="false" ForeColor="#003300">Meet Astrologer</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton18" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=18" Font-Underline="false" ForeColor="#003300">Pooja For Souls</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton19" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=19" Font-Underline="false" ForeColor="#003300">Karinal</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton20" runat="server" PostBackUrl="http://astroflow.com/contents.php?id=20" Font-Underline="false" ForeColor="#003300">Grahadosham</asp:LinkButton>
                                </td>

                            </tr>

                        </table>

                    </asp:Panel>
                        </div>

                </td>
                <td class="auto-style7">
                    <div style="margin-top:-25px">

                    <asp:Panel ID="Panel3" runat="server" Width="179px" >
                        <table>
                            
                            <tr>
                                <td>
                                    <h4 align="left">Religious Services</h4>

                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton21" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Archana</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton22" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Abishaka</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton23" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Vaahama Pooja</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton24" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Satyavarayna Katha</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton25" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false" >Navagraha Pooja</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton26" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false" >Annaprasana</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton27" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Punyaha Vachana</asp:LinkButton>
                                </td>
                            </tr>
                            

                        </table>


                    </asp:Panel> 

                    </div>

                </td>
                <td>
                    <div style="margin-top:-26px">

                    <asp:Panel ID="Panel4" runat="server" Width="181px" style="margin-right: 0px">
                        <table>
                            <tr>
                                <td>
                                    <h4 align="left">
                                        Services
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton28" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Naamakarana</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton29" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Sarmundan</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton30" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Pooja</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton31" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Gruhapravesh/Bhoomi Pooja</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton32" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Office Pooja at Business</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton33" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Havans</asp:LinkButton>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton34" runat="server" PostBackUrl="http://astroflow.com/religious-services.html"  ForeColor="#003300" Font-Underline="false">Weddings/Yagnopavetham</asp:LinkButton>
                                </td>

                            </tr>

                        </table>

                    </asp:Panel>
                
                </div>
                </td>


            </tr>

        </table>

    
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
