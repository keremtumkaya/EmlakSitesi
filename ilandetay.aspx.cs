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
    public partial class ilandetay : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        String ilanID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ilanID = Request.QueryString["ilanID"];

            SqlCommand cmds = new SqlCommand("select * from Resim where ilanID='"+ilanID+"'",baglan.baglan());
            SqlDataReader drs = cmds.ExecuteReader();

            dl_slider.DataSource = drs;
            dl_slider.DataBind();


            SqlCommand cmdd = new SqlCommand("select * from IlanDetay where ilanID='"+ilanID+"'",baglan.baglan());
            SqlDataReader drd = cmdd.ExecuteReader();

            dl_detay.DataSource = drd;
            dl_detay.DataBind();
        }
    }
}