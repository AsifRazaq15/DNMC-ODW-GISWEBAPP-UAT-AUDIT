<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HotspotUpdateList.aspx.cs" Inherits="WebAppForm.HotspotUpdateList" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assets Failure List</title>
    <style type="text/css">
        .Grid {
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
            font-family: Calibri;
            color: #474747;
        }

            .Grid td {
                padding: 5px;
                border: solid 1px #c1c1c1;
            }

            .Grid th {
                padding: 5px 2px;
                color: #fff;
                background: #363670 url(Images/grid-header.png) repeat-x top;
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

        a:link {
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }

        /* visited link */
        a:visited {
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }

        /* mouse over link */
        a:hover {
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }

        /* selected link */
        a:active {
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }
    </style>
</head>
<body style="background-color: #022130; font-family: Segoe UI Light; color: white;">

    <form id="form1" runat="server" style="text-align: center;">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ODWConnectionString %>"
                SelectCommand="SELECT * FROM [ODW].[GIS].[vwHotSpot_update_Mapping] order by modified_date desc"></asp:SqlDataSource>

            <asp:GridView ID="gvCustomers" Font-Size="12px" Font-Names="Segoe UI Light" runat="server" AutoGenerateColumns="false" 
                CellPadding="10" CellSpacing="10" PageSize="10" AllowPaging="true" OnPageIndexChanging="gvCustomers_PageIndexChanging"
                DataSourceID="SqlDataSource1">
                <Columns>
                  <asp:BoundField HeaderStyle-HorizontalAlign="Left" DataField="refno" HeaderText="Reference No" />
                    <asp:BoundField HeaderStyle-HorizontalAlign="Left" DataField="Text1" HeaderText="Description" />
                    <asp:BoundField HeaderStyle-HorizontalAlign="Left" DataField="Zone" HeaderText="Zone" />
                    <asp:BoundField HeaderStyle-HorizontalAlign="Left" DataField="StreetName" HeaderText="Street Name" />
                    <asp:BoundField HeaderStyle-HorizontalAlign="Left" DataField="FM19eccstatus" HeaderText="STATUS" />
          
                <%--    <asp:BoundField HeaderStyle-HorizontalAlign="Left" DataField="loggedinUser" HeaderText="User Name" />--%>
                    <asp:BoundField HeaderStyle-HorizontalAlign="Left" DataField="Modified_Date" HeaderText="Modified Date" />

                </Columns>
                <HeaderStyle BackColor="#3a5570" />
                <RowStyle HorizontalAlign="Left" BackColor="#001119" ForeColor="white" Font-Names="Segoe UI Light" />
                <AlternatingRowStyle HorizontalAlign="Left" BackColor="#022130" ForeColor="white" Font-Names="Segoe UI Light" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
