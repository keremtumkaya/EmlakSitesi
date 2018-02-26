using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace siteEmlak
{
    public partial class _default : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdslider = new SqlCommand("Select TOP 5 * from Ilan where ilanVitrin=1 order by ilanID desc", baglan.baglan());
            SqlDataReader drslider = cmdslider.ExecuteReader();

           dl_slider.DataSource = drslider;
           dl_slider.DataBind();

            SqlCommand cmdv = new SqlCommand("select TOP 12 * from Ilan where ilanVitrin=1 order by ilanID",baglan.baglan());
            SqlDataReader drv = cmdv.ExecuteReader();

            dl_vitrin.DataSource = drv;
            dl_vitrin.DataBind();
        }
    }
}