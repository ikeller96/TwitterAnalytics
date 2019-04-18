<%@ Page  Title="Predictions Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Predictions.aspx.cs" Inherits="Predictions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Tweet Prediction</h1>
        <p class="lead">Enter a potential tweet into the text box below to discover how good your twitter game really is.</p>
        <div class="tweettext">
            <asp:TextBox ID="tweettext" class="tester" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:Label ID="lblResults" runat="server" Text=""></asp:Label>
            <!--<asp:TextBox ID="somethin" class="tester" runat="server"></asp:TextBox>-->
        </div>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="textBox_SelectedIndexChanged" class="btn btn-primary btn-lg" Text="Predict" />
    </div>

    <!--<div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>-->
</asp:Content>
