<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="True" Inherits="WebAppForm.GetImgAttachByWo"
    Title="Images And Attachments Detail" CodeBehind="GetImgAttachByWo.aspx.cs" %>

<%@ Register Assembly="AjaxControlToolkit" TagPrefix="ajax" Namespace="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <style type="text/css">
        .textfield {
            -moz-background-clip: border;
            -moz-background-inline-policy: continuous;
            -moz-background-origin: padding;
            background: #001119;
            padding: 0.4em;
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
            font-weight: bold;
        }

        .textvalue {
            -moz-background-clip: border;
            -moz-background-inline-policy: continuous;
            -moz-background-origin: padding;
            background: #001119;
            padding: 0.4em;
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }

        .textfieldalt {
            -moz-background-clip: border;
            -moz-background-inline-policy: continuous;
            -moz-background-origin: padding;
            background: #022130;
            padding: 0.4em;
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
            font-weight: bold;
        }

        .textvaluealt {
            -moz-background-clip: border;
            -moz-background-inline-policy: continuous;
            -moz-background-origin: padding;
            background: #022130;
            padding: 0.4em;
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }

        #ParentDIV {
            width: 50%;
            height: 100%;
            font-size: 14px;
            font-family: "Segoe UI Light",Arial;
            background-color: aqua;
            color: white;
        }



        #myImg {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

            #myImg:hover {
                opacity: 0.7;
            }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
        }

        /* Modal Content (image) */
        .modal-content {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
        }

        /* Caption of Modal Image */
        #caption {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
            text-align: center;
            color: #ccc;
            padding: 10px 0;
            height: 150px;
        }

        /* Add Animation */
        .modal-content, #caption {
            -webkit-animation-name: zoom;
            -webkit-animation-duration: 0.6s;
            animation-name: zoom;
            animation-duration: 0.6s;
        }

        @-webkit-keyframes zoom {
            from {
                -webkit-transform: scale(0)
            }

            to {
                -webkit-transform: scale(1)
            }
        }

        @keyframes zoom {
            from {
                transform: scale(0)
            }

            to {
                transform: scale(1)
            }
        }

        /* The Close Button */
        .close {
            position: absolute;
            top: 15px;
            right: 35px;
            color: #f1f1f1;
            font-size: 40px;
            font-weight: bold;
            transition: 0.3s;
        }

            .close:hover,
            .close:focus {
                color: #bbb;
                text-decoration: none;
                cursor: pointer;
            }

        img {
            cursor: pointer;
        }
    </style>





    <div id="tabs-2">

        <div id="myModal" class="modal">
            <span class="close">&times;</span>
            <img class="modal-content" id="img01">
            <div id="caption"></div>
        </div>


        <asp:DataList ID="dlImages" runat="server" RepeatColumns="3" CellPadding="5">
            <ItemTemplate>

                <asp:Image ID="Image1" ImageUrl='<%# Container.DataItem.ToString() %>' onclick="return GetSelectedRow(this.id)" runat="server" Width="112" Height="84" />

            </ItemTemplate>
            <ItemStyle BorderColor="Brown" BorderStyle="dotted" BorderWidth="3px" HorizontalAlign="Center"
                VerticalAlign="Bottom" />

        </asp:DataList>
        <br />
        <br />


        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ODWConnectionString %>"
            SelectCommand="SELECT [URLNAME] FROM [ODW].[EAMS].[Attachment] where OWNERID IN (SELECT WORKORDERID  FROM [ODW].EAMS.FactWorkOrder where WONUM= @ID) and OWNERTABLE='WorkOrder' AND not (URLNAME LIKE '%JPG' OR URLNAME LIKE '%PNG' OR URLNAME LIKE '%GIF' OR URLNAME LIKE '%JPEG')">
            <SelectParameters>
                <asp:QueryStringParameter DbType="String" DefaultValue="8626760" Name="ID" QueryStringField="ID" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="gvCustomers" Font-Size="12px" Font-Names="Segoe UI Light" runat="server" AutoGenerateColumns="false"
            CellPadding="10" CellSpacing="10" PageSize="20" AllowPaging="true"
            DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField HeaderText="Attachments Detail" DataField="URLNAME" ReadOnly="true" />
            </Columns>
            <HeaderStyle BackColor="#3a5570" />
            <RowStyle BackColor="#001119" ForeColor="white" Font-Names="Segoe UI Light" />
            <AlternatingRowStyle BackColor="#022130" ForeColor="white" Font-Names="Segoe UI Light" />
        </asp:GridView>

    </div>




    <script type="text/javascript" src="scripts/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="scripts/jquery-ui.js"></script>



    <script type="text/javascript">
        function GetSelectedRow(lnk) {
            debugger;
            // Get the modal
            var modal = document.getElementById("myModal");
            var modalImg = document.getElementById("img01");
            var captionText = document.getElementById("caption");

            // Get the image and insert it inside the modal - use its "alt" text as a caption
            var img = document.getElementById(lnk);

            img.onclick = function () {
                modal.style.display = "block";
                modalImg.src = img.src;
                captionText.innerHTML = img.src;
            }

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks on <span> (x), close the modal
            span.onclick = function () {
                modal.style.display = "none";
            }

        }

    </script>

</asp:Content>
