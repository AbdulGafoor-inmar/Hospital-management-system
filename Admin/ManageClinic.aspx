﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageClinic.aspx.cs" Inherits="DBProject.ManageClinic" %>

<script runat="server">

    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<style type = "text/css">

    .outer {
       margin-left:20%;
       display:inline-block;
  
     

    }
    .mydiv
    {
        display:inline-block;
    }

</style>


</asp:Content>









<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" style="background-image: url('../Hospital.pink.jpg')">


        
        <div class="outer">



    <div>

        <h4 style="font:bold">Select Catagory :</h4>
        <br />

           <asp:RadioButton name="Gender" OnCheckedChanged="RadioButton_CheckedChanged"
             AutoPostBack="true" id="Doctor" GroupName="Catagory" runat="server" Text="Doctor" checked="true" value ="D" />
                                                            
           <asp:RadioButton name="Gender" OnCheckedChanged="RadioButton_CheckedChanged"
             AutoPostBack="true" id="Patient" GroupName="Catagory" runat="server" Text="Patient" value ="P" />

           <asp:RadioButton name="Gender"  OnCheckedChanged="RadioButton_CheckedChanged"
             AutoPostBack="true" id="OtherStaff" GroupName="Catagory" runat="server" Text="Other Staff" value ="O" />

    </div>



        <div>
            
           

        </div>

        <div>
            <div>
        <asp:TextBox ID="txtSearch" runat="server" />
        <asp:button Text ="Search"  runat="server" type="submit" class="btn btn-primary"  OnClick="Search_btn" ></asp:button>
        <br />
        <asp:Label ID="Msg" runat="server" Font-Bold="True"></asp:Label>
        

            <asp:GridView 
            
            ID="Manage"
            AutoGenerateDeleteButton ="True"
            EnableViewState="False"
            OnRowDeleting="DeleteDoctor_Click"
                OnRowCommand="SelectCommand"
            runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="2px" CellPadding="8" Caption="Doctors Table" CaptionAlign="Top" HorizontalAlign="Center" Width="380px"  GridLines="Horizontal" CellSpacing="3" AutoGenerateSelectButton="True">

                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle ForeColor="#333333" BorderStyle="solid" BorderWidth="4px" BackColor="White" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />

            </asp:GridView>
          
                
            


            </div>
            
            
            
            
            </div>


            
          </div>

             <div style="display:inline-block; float:right;margin-right:10%" runat="server" id="mydiv"></div>

          

                     
           

        </form>
</asp:Content>
