<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PABoundaryByWO.aspx.cs" Inherits="WebAppForm.PABoundaryByWO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Find PA Boundary for A WO</title>
    <style type="text/css">
        .Grid {
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
            font-family: Calibri;
            color: #474747;
        }
        
             a:link {
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }
            .Grid td {
                padding: 5px;
                border: solid 1px #c1c1c1;
            }

            .Grid th {
                padding: 5px 2px;
                color: #fff;
                background: #1773D8 url(Images/grid-header.png) repeat-x top;
                border-left: solid 1px #525252;
                font-size: 0.9em;
            }

            .Grid .alt {
                background: #fcfcfc url(Images/grid-alt.png) repeat-x top;
            }

            .Grid .pgr {
                background: #363670 url(Images/grid-pgr.png) repeat-x top;
            }

                .Grid .pgr table {
                    margin: 3px 0;
                }

                .Grid .pgr td {
                    border-width: 0;
                    padding: 0 6px;
                    border-left: solid 1px #666;
                    font-weight: bold;
                    color: #fff;
                    line-height: 12px;
                }

                .Grid .pgr a {
                    color: Gray;
                    text-decoration: none;
                }

                    .Grid .pgr a:hover {
                        color: #000;
                        text-decoration: none;
                    }

        .search {
            background-color: #0090CB;
            border-color: #0090CB;
            color: #fff;
        }

            .search:hover {
                background-color: #3498db;
                border: solid 1px #fff;
            }

        .searchtxt {
            display: inline-block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.428571429;
            color: #555;
            vertical-align: middle;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc
        }
          .textfield {
            -moz-background-clip: border;
            -moz-background-inline-policy: continuous;
            -moz-background-origin: padding;
            background: #001119;
            border: 1px solid #4c636f;
            padding: 0.4em;
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }
              .required {
            font-weight: bold;
            padding: 10px 0 10px 5px;
            text-align: right;
            vertical-align: middle;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }
         .simplebutton1 {
            color: #fff;
            background-color: #154670;
            height: 27px;
            width: 90px;
            border: solid 1px #fff;
            font-size: 15px;
            font-weight: bold;
            webkit-border-radius: 2px 2px 2px 2px;
            -moz-border-radius: 2px 2px 2x 2px;
            border-radius: 2px 2px 2px 2px;
        }

            .simplebutton1:hover {
                background-color: #3498db;
                border: solid 1px #fff;
            }
    </style>
</head>
<body style="background-color: #022130; font-family: Segoe UI Light; color: white;">
    <form id="form1" runat="server" style="text-align: center;">
        <div>

            <table>

                         <%--<tr>
                            <td class="required" style="text-align: right;">
                                <span class="normal">Select PA Boundary:</span>
                            </td>
                           <td><asp:DropDownList ID="ddlPABoundary" runat="server" CssClass="textfield" Width="150" AutoPostBack="true" OnSelectedIndexChanged="ddlPABoundary_SelectedIndexChanged">
                                    <asp:ListItem Value="[sde].[PROJBOUND_BC]">BC</asp:ListItem>
                                    <asp:ListItem Value="[sde].[PROJBOUND_DNPD]">DNPD</asp:ListItem>
                                    <asp:ListItem Value="[sde].[PROJBOUND_FPS]">FPS</asp:ListItem>
                                    <asp:ListItem Value="[sde].[PROJBOUND_FRP]">FRP</asp:ListItem>
                                    <asp:ListItem Value="[sde].[PROJBOUND_HPD]">HPD</asp:ListItem>
                                    <asp:ListItem Value="[sde].[PROJBOUND_RPD]">RPD</asp:ListItem>
                                </asp:DropDownList></td>
                             <td>
                                <%--<asp:Button ID="btnSearch" runat="server" CssClass="simplebutton1" Text="Search" OnClick="btnSearch_Click" />
                            </td>
                        </tr>--%>
                <tr>
                    <td colspan="8">&nbsp;</td>
                </tr></table>
        
            <asp:GridView ID="gvHotspot" runat="server" AutoGenerateColumns="false" Font-Size="12px" Font-Names="Segoe UI Light"
                CellPadding="10" CellSpacing="10" AllowPaging="true" OnPageIndexChanging="gvHotspot_PageIndexChanging">
                <Columns>
                    
                    <%--<asp:BoundField DataField="Distance" HeaderText="Distance (Meter)" DataFormatString="{0:0.00}" />
                    <asp:BoundField DataField="Project_Code" HeaderText="Project Code" ItemStyle-Width="30" />
                    <asp:BoundField DataField="Project_Name" HeaderText="Project Name" ItemStyle-Width="70" />
                    <asp:BoundField DataField="ECC" HeaderText="ECC" ItemStyle-Width="30" />--%>
                    <asp:BoundField DataField="OBJECTID" HeaderText="Object ID" ItemStyle-Width="70" Visible="false" />
                    <asp:BoundField DataField="Table_Name" HeaderText="Project Boundary" ItemStyle-Width="100" />
                    <asp:BoundField DataField="Project_Code" HeaderText="Project Code"  ItemStyle-Width="100" />
                     <asp:TemplateField HeaderText="Project Name" ItemStyle-Width="200">
                        <ItemTemplate>
                          <%#Eval("Project_Name").ToString().Length>50?Eval("Project_Name").ToString().Substring(0,50):Eval("Project_Name").ToString() %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ECC" HeaderText="ECC" ItemStyle-Width="30" />   
                    <asp:BoundField DataField="ECC_Status" HeaderText="Status" ItemStyle-Width="100" />
                    <asp:TemplateField HeaderText="SELECT">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkSelect" runat="server" Text="SELECT" CommandName="Select"
                                OnClientClick="return GetSelectedRow(this)" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <HeaderStyle BackColor="#3a5570" />
                <RowStyle BackColor="#001119" ForeColor="white" Font-Names="Segoe UI Light" />
                <AlternatingRowStyle BackColor="#022130" ForeColor="white" Font-Names="Segoe UI Light" />
            </asp:GridView>
            <table>
            <tr>
                <td style="text-align:left;">
                    Total Records: 
                    <asp:Label runat="server" ID="lblRecordCount" ForeColor="White" Font-Bold="true" />
                </td>
            </tr>
                </table>     

            <script type="text/javascript">
                function GetSelectedRow(lnk) {


                    if (window.opener != null && !window.opener.closed) {

                        var row = lnk.parentNode.parentNode;
                        var rowIndex = row.rowIndex - 1;
                        var name = row.cells[1].innerHTML;
                        var displayName = row.cells[1].innerHTML;
                        
                        window.close();
                        
                        window.opener.document.getElementById("ContentPlaceHolder1_txtProject").value = name;
                        window.opener.document.getElementById("ContentPlaceHolder1_txtProject").title = displayName;
                        return false;
                    }
                    window.close();
                }
            </script>
        </div>
    </form>
</body>

</html>
