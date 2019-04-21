using System;
using System.Web;
using System.Web.UI;

namespace GOMONO
{

    public partial class Dashboard : System.Web.UI.Page
    {
		public void userprofile_onLoad(Object sender, EventArgs args){
			userprofile.Text = "";
		}
    }
}
