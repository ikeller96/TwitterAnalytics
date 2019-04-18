using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Predictions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void textBox_SelectedIndexChanged(object sender, EventArgs e)
    {
        var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/27172ca6900f4ef592cd566cb3149309/services/8bb832e4e53747b881d74f9df54701f0/execute?api-version=2.0&details=true%0A%0A");
        var request = new RestRequest(Method.POST);
        request.AddHeader("Postman-Token", "fd39de8b-feee-4e80-83a4-c7d96eb91058");
        request.AddHeader("cache-control", "no-cache");
        request.AddHeader("Content-Type", "application/json");
        request.AddHeader("Authorization", "Bearer aupkgojWfwI8erBjChunc2fjxOyhDuBtCfEnIQuvi9oGBubK4aocKvvXspFxVlsAFWR1a7Uli2EWyWQOaoYJQw==");
        request.AddParameter("undefined", "{\r\n  \"Inputs\": {\r\n    \"input1\": {\r\n      \"ColumnNames\": [\r\n        \"Weekday\",\r\n        \"Hour\",\r\n        \"text\"\r\n      ],\r\n      \"Values\": [\r\n        [\r\n          \"Wednesday\",\r\n          \"9\",\r\n          \"" + tweettext.Text.ToString() + "\"\r\n        ]\r\n      ]\r\n    }\r\n  },\r\n  \"GlobalParameters\": {}\r\n}", ParameterType.RequestBody);
        IRestResponse response = client.Execute(request);
        var results = JObject.Parse(response.Content);
        string prediction = results["Results"]["output1"]["value"]["Values"].ToString();
        prediction = prediction.Replace("[", "").Replace("\"", "<br />").Replace(",", "").Replace("]", "");

        lblResults.Text = prediction;

    }
}