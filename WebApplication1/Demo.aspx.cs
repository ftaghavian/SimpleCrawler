using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
using System.Net.Http;
using System.Threading.Tasks;
using System.Net;
using System.Text;
using System.IO;
using ScrapySharp.Network;
using ScrapySharp.Html.Forms;

namespace WebApplication1
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (WebClient client = new WebClient())
                {
                    string html = client.DownloadString("https://twitter.com/realDonaldTrump");
                    HtmlDocument htmlDocument = new HtmlDocument();
                    htmlDocument.LoadHtml(html);
                    var divs = htmlDocument.DocumentNode.Descendants("ol")
                        .Where(node => node.GetAttributeValue("class", "").Equals("stream-items js-navigable-stream")).ToList();
                    var li = divs[0].Descendants("li");
                    int TweetCounter = 0;
                    foreach (var S in li)
                    {
                        var Model = S.Descendants("div").FirstOrDefault();
                        if (Model != null)
                        {
                            var Content = Model.Descendants("div").Where(node => node.GetAttributeValue("class", "").Equals("content")).ToList();
                            var text = Content[0].ChildNodes[3].InnerText;
                            TweetCounter++;
                            Tweetstbl.Rows[TweetCounter].Cells[0].Text = text;                            
                            if (TweetCounter == 25)
                            {
                                break;
                            }
                        }
                    }
                }
            }
            catch (Exception)
            {
            }           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {          
            using (WebClient client = new WebClient())
            {
                client.Headers[HttpRequestHeader.UserAgent] = "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36";
                string html = client.DownloadString("http://api.scraperapi.com/?key=6cd47bfff9e227a0ff51564f016f9dc9&url=http://rss.cnn.com/rss/edition_us.rss");
                html=html.Replace("![CDATA", "");
                HtmlDocument htmlDocument = new HtmlDocument();
                htmlDocument.LoadHtml(html);
                var titles = htmlDocument.DocumentNode.Descendants("title").ToList();
                var links = htmlDocument.DocumentNode.Descendants("link").ToList();
                int ArticleCounter = 0;
                int ArticleIndex = 0;
                foreach (var S in titles)
                {
                    var ArticleHeadline = S.InnerHtml;
                    if (ArticleHeadline != null && !ArticleHeadline.Contains("RSS") && !ArticleHeadline.Contains("CNN") && (ArticleHeadline.Contains("trump") || ArticleHeadline.Contains("Trump")))
                    {
                        ArticleCounter++;
                        Articlestbl.Rows[ArticleCounter].Cells[0].Text = S.InnerHtml.Substring(2, S.InnerHtml.Length-5) + " <br /> <br />" + "<a href = "+ links[ArticleIndex].NextSibling.InnerText+"\">link to article </a>";

                        if (ArticleCounter == 25)
                        {
                            break;
                        }
                    }
                    ArticleIndex++;
                }
            }
        }       
    }
}