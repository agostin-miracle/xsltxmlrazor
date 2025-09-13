using Microsoft.AspNetCore.Html;
using System.Text;
using System.Xml.Xsl;
using System.Xml;

namespace xslt1
{
    public class PageHelper
    {
        public static HtmlString Transform(string xmlFile, string xslFile)
        {
            StringBuilder sb = new StringBuilder();
            try
            {
                XslCompiledTransform xslDoc = new XslCompiledTransform();
                XsltArgumentList Args = new XsltArgumentList();
                XsltSettings settings = new XsltSettings(false, true);
                settings.EnableDocumentFunction = true;
                xslDoc.Load(xslFile, settings, new XmlUrlResolver());
                StringWriter stringWriter = new StringWriter(sb);
   
              
                xslDoc.Transform(xmlFile, Args, stringWriter);
                stringWriter.Close();
                HtmlString htmlstring = new HtmlString(sb.ToString());
                return htmlstring;
            }

            catch
            {

            }
            return new HtmlString("");
        }
    }
}
