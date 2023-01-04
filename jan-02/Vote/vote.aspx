<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vote.aspx.cs" Inherits="jan_02.Vote.WebForm1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <div>
           
            <div id="radio" runat="server">

       
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="ex">ممتاز</asp:ListItem>
                    <asp:ListItem Value="verygood">جيدجدا</asp:ListItem>
                    <asp:ListItem Value="good">جيد</asp:ListItem>
                    <asp:ListItem Value="poor">ضعيف</asp:ListItem>
                    <asp:ListItem Value="sat">مقبول</asp:ListItem>

                </asp:RadioButtonList>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                     </div>
       
            <div id="chart" runat="server">

            <asp:Chart ID="Chart1" runat="server" DataMember="DefaultView" DataSourceID="SqlDataSource1" BorderlineWidth="0" Width="675px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Bar" XValueMember="ex" YValueMembers="ex" MarkerBorderWidth="19" IsValueShownAsLabel = "true"></asp:Series>
                    <asp:Series ChartArea="ChartArea1" ChartType="Bar" IsValueShownAsLabel="True" Label="جيد جدا" Name="Series2" XValueMember="verygood" YValueMembers="verygood">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" ChartType="Bar" Label="جيد" Name="Series3" XValueMember="good" YValueMembers="good" IsValueShownAsLabel="True">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" ChartType="Bar" Label="ضعيف" Name="Series4" XValueMember="poor" YValueMembers="poor">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" ChartType="Bar" Label="مقبول" Name="Series5" XValueMember="sat" YValueMembers="sat">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1" IsSameFontSizeForAllAxes="True">
                       <axisy Enabled = "False" IsMarginVisible="False">
                                    <MajorGrid Enabled ="False" />
                                </axisy>
                                <axisx Enabled = "False" IsMarginVisible="False">
                                    <MajorGrid Enabled="false"/>
                                    <ScaleBreakStyle Spacing="0" />
                                </axisx>
                        <AxisX2 IsMarginVisible="False">
                        </AxisX2>
                        <AxisY2 IsMarginVisible="False">
                        </AxisY2>
                        <Position Height="77.69482" Width="94" X="3" Y="19.3051834" />
                        <InnerPlotPosition Height="100" Width="100" />
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Name="Title1" BackColor="128, 128, 255" Text="رأيك بهمنا">
                    </asp:Title>
                    <asp:Title Name="Title2" Text="ما هو مدى رضاك عن الحدمات الالكترونية الخاصة بتخمين؟">
                    </asp:Title>
                </Titles>
            </asp:Chart>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [vote]"></asp:SqlDataSource>
        </div>
             </div>
    </form>
</body>
</html>
