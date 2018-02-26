using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace siteEmlak
{
    public class sqlbaglantisi
    {
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=.; Initial Catalog=emlakDB; Integrated Security=true;");

            baglanti.Open();
            SqlConnection.ClearAllPools();
            SqlConnection.ClearPool(baglanti);

            return (baglanti);
           baglanti.Close();
        }
    }
}