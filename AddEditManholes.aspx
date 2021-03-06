<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="True" Inherits="WebAppForm.AddEditManholes"
    Title="Add Manholes" CodeBehind="AddEditManholes.aspx.cs" %>

<%@ Register Assembly="AjaxControlToolkit" TagPrefix="ajax" Namespace="AjaxControlToolkit" %>
<%@ Register Assembly="skmValidators" Namespace="skmValidators" TagPrefix="skm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link type="text/css" rel="stylesheet" href="Styles/bootstrap.min.css" />

    <style type="text/css">
        .fieldlabel {
            text-align: right;
            width: 50%;
        }

        .fieldvalue {
            text-align: left;
        }

        * {
            margin: 0;
            padding: 0;
        }

        h1, h2, h3, h4, h5, h6, pre, code, td {
            font-size: 1em;
            font-weight: normal;
        }

        ul, ol {
            list-style: none;
        }

        a img, :link img, :visited img, fieldset {
            border: 0;
        }

        a {
            text-decoration: none;
        }

            a:hover {
                text-decoration: underline;
            }

        td {
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }

        h2, .h2 {
            font-family: "Segoe UI Light",Arial;
            font-size: 15px;
        }

        h3 {
            font-family: "Segoe UI Light",Arial;
            font-size: 15px;
            color: #154670;
        }

        h1 {
            font-family: "Segoe UI Light",Arial;
            font-size: 19px;
            color: #154670;
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

            .textfield:hover {
                border: 1px solid #4c636f;
            }



        .CustomValidatorCalloutStyle div, .CustomValidatorCalloutStyle td {
            border: solid 1px blue;
            background-color: Black;
        }

        .heading {
            color: white;
            font-family: "Segoe UI Light",Arial;
            font-size: 15px;
            font-size-adjust: none;
            font-stretch: normal;
            font-style: normal;
            font-variant: normal;
            font-weight: bold;
            line-height: normal;
            margin: 0;
            padding: 3px 5px 3px 0;
            text-align: left;
        }

        .required {
            font-weight: bold;
            padding: 10px 0 10px 5px;
            text-align: right;
            vertical-align: middle;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }

        .requiredvalue {
            padding: 10px 10px 5px;
            text-align: left;
        }

        .chkrequired {
            font-weight: bold;
            padding: 10px 0 3px 5px;
            text-align: left;
            vertical-align: middle;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
        }

        .text_padding {
            padding-top: 20px;
        }

        .normal {
            font-size: 12px;
            font-family: "Segoe UI Light",Arial;
            vertical-align: middle;
        }

        .chknormal {
            line-height: 23px;
        }

        .all_required {
            color: Red;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
            font-weight: normal;
            line-height: 30px;
        }

        .style3 {
            font-weight: bold;
            padding: 10px 0 3px 5px;
            text-align: left;
            vertical-align: middle;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
            width: 205px;
        }

        ul li {
            list-style-type: square;
            margin-left: 40px;
        }

        .validationsummary {
            border: 1px solid #fff;
            background-color: #001119;
            padding: 0px 0px 13px 0px;
            font-size: 12px;
            width: 99%;
            color: white;
        }

            .validationsummary ul {
                padding-top: 5px;
                padding-left: 45px;
            }

                .validationsummary ul li {
                    padding: 2px 0px 0px 15px;
                }

        .wo {
            color: white;
            padding: 1em 1.5em;
            text-decoration: none;
            text-transform: uppercase;
        }

            .wo a:hover {
                background-color: #555;
            }

            .wo a:active {
                background-color: black;
            }

            .wo a:visited {
                background-color: #ccc;
            }

        .simplebutton1 {
            color: #fff;
            background-color: #154670;
            height: 35px;
            width: 140px;
            border: solid 1px #fff;
            font-size: 15px;
            font-weight: bold;
            webkit-border-radius: 2px 2px 2px 2px;
            -moz-border-radius: 2px 2px 2x 2px;
            border-radius: 2px 2px 2px 2px;
        }
        .btnDisabled{
            color: grey;
            background-color: #154670;
            height: 35px;
            width: 140px;
            border: solid 1px #fff;
            font-size: 15px;
            font-weight: bold;
            webkit-border-radius: 2px 2px 2px 2px;
            -moz-border-radius: 2px 2px 2x 2px;
            border-radius: 2px 2px 2px 2px;
            cursor: not-allowed;
        }
            .simplebutton1:hover {
                background-color: #3498db;
                border: solid 1px #fff;
            }

        .popupbtn {
            color: #fff;
            background-color: #154670;
            height: 23px;
            width: 62px;
            border: solid 1px #fff;
            font-family: "Segoe UI Light",Arial;
            font-size: 12px;
            border: 1px solid #4c636f;
            -moz-border-radius: 2px 2px 2x 2px;
            border-radius: 2px 2px 2px 2px;
            cursor: pointer;
        }


            .popupbtn:hover {
                background-color: #3498db;
                border: solid 1px #4c636f;
            }


        .ui-autocomplete {
            cursor: pointer;
            height: 200px;
            overflow-y: scroll;
            -moz-background-clip: border !important;
            -moz-background-inline-policy: continuous !important;
            -moz-background-origin: padding !important;
            background: #001119 !important;
            border: 1px solid #4c636f !important;
            padding: 0.4em !important;
            color: white !important;
            font-family: "Segoe UI Light",Arial !important;
            font-size: 12px !important;
        }

            .ui-autocomplete:hover {
                border: 1px solid #4c636f !important;
            }
        input:read-only {
            border:none;
        }
    </style>



    <script type="text/javascript" src="Scripts/1.12.4_jquery.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>



    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-sm">
            <div style="background-color: #022130; font-family: Segoe UI Light; color: white; width: 300px; margin: 0 auto;" class="modal-content">
                <div class="modal-header" style="padding: 6px; border-bottom: 1px solid #4c636f;">
                    <button type="button" class="close" style="opacity: 1; color: white;" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="font-weight: bold; font-size: 14px;">Add Manholes: MessageBox</h4>
                </div>
                <div class="modal-body">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </div>
                <div class="modal-footer" style="border-top: 1px solid #4c636f; padding: 10px;">
                    <asp:Button ID="Button1" CssClass="popupbtn" runat="server" Text="OK" OnClientClick="return;" />
                </div>
            </div>
        </div>
    </div>



    <table id="table1" style="border-collapse: collapse;" width="100%" border="0">
                

        <tr>
            <td>
                <p align="center" style="font-weight: bold; font-size: 20px; font-family: 'Segoe UI Light', Arial;">
                    <asp:Label ID="Label2" runat="server" Text="Add Manhole"></asp:Label>                    
                </p>
                <asp:ValidationSummary
                    ID="valSum"
                    DisplayMode="BulletList"
                    runat="server" CssClass="validationsummary"
                    ValidationGroup="test"
                    EnableClientScript="true"
                    HeaderText="&nbsp;Please correct the below errors:" ForeColor="white" ShowSummary="true" />
                <div id="divone">
                    <table width="100%">
                        <tr>
                            <td class="required" align="right" style="text-align: right;">
                                <asp:Label ID="lblFrmwrk" runat="server" Visible="false" Text="Framework Zone"></asp:Label>
                            </td>
                            <td class="requiredvalue" style="text-align: left;">
                                <asp:TextBox ID="txtFramework" ReadOnly="true" runat="server" Visible="false" class="textfield" Width="185" MaxLength="18"></asp:TextBox>

                            </td>
                             <td class="required"><asp:Label ID="lblManholeStatus" Visible="false" runat="server"  Text="Manhole Status"></asp:Label></td>
                            <td style="padding-left: 10px;">
                                <asp:TextBox ID="txtManholeStatus" ReadOnly="true" runat="server" Visible="false" class="textfield" Width="185" MaxLength="18"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="required" align="right" style="text-align: right;">
                                <span style="color: red;">* </span><span class="normal">Manhole Name:</span>
                            </td>
                            <td class="requiredvalue" style="text-align: left;">
                                <asp:TextBox ID="txtSiteName" runat="server" class="textfield" Width="185" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSiteName" Display="None"
                                    ValidationGroup="test" Text="*" ErrorMessage="Hierarchical Site Name is Required" ForeColor="white" />
                            </td>

                            <td class="required" align="left" style="text-align: right;">
                                <%--<span style="color: red;">* </span>--%><span class="normal">Site Name:</span>
                                
                            </td>
                            <td class="requiredvalue">
                                <asp:TextBox ID="lblSiteName" runat="server" class="textfield" Width="185" ></asp:TextBox>
                                <%--<asp:Label ID="lblSiteName" runat="server" class="textfield" Width="186" Text="&nbsp;" BorderWidth="0" />--%>
                            </td>
                        </tr>
                        <tr>
                            <td class="required" align="left" style="text-align: right;">
                                <span style="color: red;">* </span><span class="normal">Facility Name:</span>
                            </td>
                            <td class="requiredvalue">
                                <asp:DropDownList ID="ddFacility" runat="server" CssClass="textfield" Width="186px" AppendDataBoundItems="true">
                                    <asp:ListItem Value="-1" Selected="True">- Select Facility -</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                           
                            <td class="required" align="right" style="text-align: right;">
                                <span class="normal">Asset Id:</span>
                            </td>
                            <td class="requiredvalue" style="text-align: left;">
                                <asp:TextBox ID="txtAssetId" runat="server" class="textfield" Width="185" ></asp:TextBox>
                                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                                    FilterType="Numbers, Custom" ValidChars="."
                                    TargetControlID="txtAssetId">
                                </ajax:FilteredTextBoxExtender>
                            </td>
                            
                        </tr>
                        
                        
                        
                        <tr>
                            <td class="required" align="left" style="text-align: right;">
                                <span style="color: red;">* </span><span class="normal">Area Name :</span>
                            </td>
                            <td class="requiredvalue">
                                <asp:TextBox ID="txtArea" runat="server" class="textfield"  Width="186" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtArea" Display="None"
                                    ValidationGroup="test" Text="*" ErrorMessage="Area Name is Required" ForeColor="white" />
                            </td>
                            <td class="required" align="right" style="text-align: right;">
                                <span style="color: red;">* </span><span class="normal">Catchment Zone :</span>
                            </td>
                            <td class="requiredvalue" style="text-align: left;">
                                <asp:TextBox ID="txtCatchment" runat="server" class="textfield" Width="185" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCatchment" Display="None"
                                    ValidationGroup="test" Text="*" ErrorMessage="Catchment Zone is Required" ForeColor="white" />

                            </td>

                           
                        </tr>
                        <tr>
                             <td class="required" align="left" style="text-align: right;">
                                <span class="normal">PS Name :</span>
                            </td>
                            <td class="requiredvalue">
                                <asp:DropDownList ID="ddPSName" runat="server" CssClass="textfield" Width="186px" AppendDataBoundItems="true">
                                    <asp:ListItem Value="-1" Selected="True">- Select PS Name -</asp:ListItem>
                                    <asp:ListItem Value="Not Available">Not Available</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                           <tr>
                            <td class="required" align="right" style="text-align: right;">
                                <span style="color: red;">* </span><span class="normal">Longitude (X):</span>
                            </td>
                            <td class="requiredvalue" style="text-align: left;">
                                <asp:TextBox ID="txtLong" runat="server" class="textfield" Width="185" MaxLength="18"></asp:TextBox>
                                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" runat="server"
                                    FilterType="Numbers, Custom" ValidChars="."
                                    TargetControlID="txtLong">
                                </ajax:FilteredTextBoxExtender>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtLong" Display="None"
                                    ValidationGroup="test" Text="*" ErrorMessage="Longitude(X) is Required" ForeColor="white" />

                            </td>

                            <td class="required" align="left" style="text-align: right;">
                                <span style="color: red;">* </span><span class="normal">Latitude (Y):</span>
                            </td>
                            <td class="requiredvalue">
                                <asp:TextBox ID="txtLat" runat="server" class="textfield" MaxLength="18" Width="186" />
                                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server"
                                    FilterType="Numbers, Custom" ValidChars="."
                                    TargetControlID="txtLat">
                                </ajax:FilteredTextBoxExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtLat" Display="None"
                                    ValidationGroup="test" Text="*" ErrorMessage="Latitude(Y) is Required" ForeColor="white" />
                            </td>
                        </tr>
                        <tr>
                            <td class="required" align="right" style="text-align: right;">
                                <span class="normal">Cover Level:</span>
                            </td>
                            <td class="requiredvalue" style="text-align: left;">
                                <asp:TextBox ID="txtCoverLvl" runat="server" class="textfield" Width="185" MaxLength="18"></asp:TextBox>
                                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                                    FilterType="Numbers, Custom" ValidChars="."
                                    TargetControlID="txtCoverLvl">
                                </ajax:FilteredTextBoxExtender>

                            </td>
                            <td class="required" align="right" style="text-align: right;">
                                <span class="normal">Invert Level:</span>
                            </td>
                            <td class="requiredvalue" style="text-align: left;">
                                <asp:TextBox ID="txtInverLvl" runat="server" class="textfield" Width="185" MaxLength="18"></asp:TextBox>
                                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server"
                                    FilterType="Numbers, Custom" ValidChars="."
                                    TargetControlID="txtInverLvl">
                                </ajax:FilteredTextBoxExtender>

                            </td>
                        </tr>
                        <tr>
                            <td class="required" align="left" style="text-align: right;">
                                <span class="normal">Channel Width :</span>
                            </td>
                            <td class="requiredvalue">
                                <asp:TextBox ID="txtChannelWdt" runat="server" class="textfield" MaxLength="18" Width="186" />
                                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server"
                                    FilterType="Numbers, Custom" ValidChars="."
                                    TargetControlID="txtChannelWdt">
                                </ajax:FilteredTextBoxExtender>
                            </td>
                             <td class="required" align="right" style="text-align: right;">
                                <%--<span style="color: red;">* </span>--%><span class="normal">Service Type:</span>
                            </td>
                            <td class="requiredvalue" style="text-align: left;">
                                <asp:DropDownList ID="ddServiceType" runat="server" CssClass="textfield" Width="186px" AppendDataBoundItems="true">
                                    <asp:ListItem Value="-1" Selected="True">- Select Service Type -</asp:ListItem>
                                </asp:DropDownList>

                            </td>

                        </tr>
                        <tr>
                            <td class="required" align="right" style="text-align: right;">
                                <span class="normal">Hi Set Point:</span>
                            </td>
                            <td class="requiredvalue" style="text-align: left;">
                                <asp:TextBox ID="txtHiSP" runat="server" class="textfield" Width="185" MaxLength="18"></asp:TextBox>
                                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server"
                                    FilterType="Numbers, Custom" ValidChars="."
                                    TargetControlID="txtHiSP">
                                </ajax:FilteredTextBoxExtender>

                            </td>

                            <td class="required" align="left" style="text-align: right;">
                               <span class="normal">HiHi Set Point :</span>
                            </td>
                            <td class="requiredvalue">
                                <asp:TextBox ID="txtHiHiSP" runat="server" class="textfield" MaxLength="18" Width="186" />
                                <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server"
                                    FilterType="Numbers, Custom" ValidChars="."
                                    TargetControlID="txtHiHiSP">
                                </ajax:FilteredTextBoxExtender>

                            </td>
                        </tr>

                        <tr>
                           
                            <td class="required" align="left" style="text-align: right;">
                                <%--<span style="color: red;">* </span>--%><span class="normal">Picture Path:</span>
                            </td>
                            <td class="requiredvalue">
                                <asp:TextBox ID="txtPicPAth" runat="server" class="textfield"  Width="186" />
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="required">&nbsp;</td>
                            <td style="padding-left: 10px;">&nbsp;
                            </td>
                            <td class="required" align="left" style="text-align: right; width: 18%; vertical-align: middle;">&nbsp;
                            </td>
                            <td style="padding-top: 20px; padding-left: 7px;">
                                <asp:HiddenField ID="CompanyKey" runat="server" />
                                <asp:Button ID="btnSubmit" runat="server" ValidationGroup="test" OnClick="btnSubmit_Click" CssClass="simplebutton1" Enabled="true" Text="Add Manhole" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>


        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>

    </table>
    <script type="text/javascript">

        function showModal() {
            $("#myModal").modal('show');

        }


        function SetButton(btn) {

            btn.value = "Wait...";

        }


        function hideModal() {
            $("#myModal").modal('hide');
            //document.getElementById("ContentPlaceHolder1_txtWODes").value = "";

            document.getElementById("ContentPlaceHolder1_txtCrew").value = "";
            document.getElementById("ContentPlaceHolder1_txtScheduler").value = "";
            document.getElementById("ContentPlaceHolder1_txtInspector").value = "";
            document.getElementById("ContentPlaceHolder1_txtContractId").value = "";
            document.getElementById("ContentPlaceHolder1_txtEngineer").value = "";

            document.getElementById("ContentPlaceHolder1_ddlPriority").value = "";
            document.getElementById("ContentPlaceHolder1_ddlOwnership").value = "";
            document.getElementById("ContentPlaceHolder1_txtLat").value = "";
            document.getElementById("ContentPlaceHolder1_txtlong").value = "";
            //document.getElementById("ContentPlaceHolder1_lblReportedBy").value = "";
            document.getElementById("ContentPlaceHolder1_drpdwnWorkType").value = "";
            document.getElementById("ContentPlaceHolder1_txtAsset").value = "";
            document.getElementById("ContentPlaceHolder1_txtLocation").value = "";
            document.getElementById("ContentPlaceHolder1_txtVendorName").value = "";
            document.getElementById("ContentPlaceHolder1_txtVendor").value = "";

        }

        var popup;
        function SelectDetails() {
            popup = window.open("Location.aspx", "Popup", "width=800,height=720");
            popup.focus();
            return false
        }

        function SelectAsset() {
            var name = document.getElementById("ContentPlaceHolder1_txtLocation").value;
            popup = window.open("Asset.aspx?LocationId=&IsLocation=0", "Popup", "width=800,height=720");
            popup.focus();
            return false
        }


        function SelectContract() {

            popup = window.open("Contract.aspx", "Popup", "width=800,height=720");
            popup.focus();
            return false
        }

        function SelectCrew() {

            var txtContractId = document.getElementById("ContentPlaceHolder1_txtContractId").value;
            if (txtContractId != "") {
                var VandorID = document.getElementById("ContentPlaceHolder1_VandorID").value;
                popup = window.open("Crew.aspx?VandorID=" + VandorID, "Popup", "width=800,height=720");
                popup.focus();
            } else {
                popup = window.open("Crew.aspx", "Popup", "width=800,height=720");
                popup.focus();
            }
            return false
        }

        function SelectScheduler() {

            var companyKey = document.getElementById("ContentPlaceHolder1_txtVendor").value;
            if (companyKey != "") {
                popup = window.open("Scheduler.aspx?Company=" + companyKey, "Popup", "width=800,height=720");
                popup.focus();
            } else {
                popup = window.open("Scheduler.aspx", "Popup", "width=800,height=720");
                popup.focus();
            }
            return false
        }


        function SelectEngineer() {
            popup = window.open("Engineer.aspx", "Popup", "width=800,height=720");
            popup.focus();
            return false
        }

        function SelectInspector() {
            popup = window.open("Inspector.aspx", "Popup", "width=800,height=720");
            popup.focus();
            return false
        }


        function SelectReportedBy() {
            popup = window.open("ReportedBy.aspx", "Popup", "width=800,height=720");
            popup.focus();
            return false
        }



    </script>

    <link rel="stylesheet" href="Styles/1.12.1-jquery-ui.css">
    <script type="text/javascript" src="Scripts/1.12.1-jquery-ui.min.js"></script>
    <script src="Scripts/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
    <link href="Styles/jquery-ui-timepicker-addon.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        
        $('#ContentPlaceHolder1_txtTargetStart').datetimepicker({
            timeFormat: "hh:mm tt"
        });
        $('#ContentPlaceHolder1_txtTargetFinish').datetimepicker({
            timeFormat: "hh:mm tt"
        });
        $('#ContentPlaceHolder1_txtScheduleStart').datetimepicker({
            timeFormat: "hh:mm tt"
        });
        $('#ContentPlaceHolder1_txtScheduleFinish').datetimepicker({
            timeFormat: "hh:mm tt"
        });

        $('#<%=txtSiteName.ClientID %>').blur(function () {
            var sitename = $('#<%=txtSiteName.ClientID %>').val();
            if (sitename != '') {
                sitename = sitename.replace(/\s+/g, '');
                sitename = sitename.replace(/_/g, "/");
                $('#<%=lblSiteName.ClientID %>').val(sitename);
            } else {
                $('#<%=lblSiteName.ClientID %>').val("");
            }
            
        });

    </script>    
</asp:Content>