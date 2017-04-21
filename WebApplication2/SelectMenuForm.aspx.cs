using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class SelectMenuForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            repeaterCountries.DataSource = GetSelectMenuData();
            repeaterCountries.DataBind();
        }

        private List<Country> GetSelectMenuData() {
            string cs = ConfigurationManager.ConnectionStrings["DBCS2"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("spGetSelectMenuData", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds);

            List<Country> listCountries = new List<Country>();
            
            foreach(DataRow countryRow in ds.Tables[0].Rows)
            {
                Country country = new Country();
                country.Id = Convert.ToInt32(countryRow["Id"]);
                country.Name = countryRow["Name"].ToString();

                
                DataRow[] cities = ds.Tables[1].Select("CountryId= " + country.Id.ToString());
                List<City> listCities = new List<City>();
                foreach (DataRow cityRow in cities) {
                    City city = new City();
                    city.Id = Convert.ToInt32(cityRow["Id"]);
                    city.Name = cityRow["Name"].ToString();
                    city.CountryId = Convert.ToInt32(cityRow["CountryId"]);
                    listCities.Add(city);
                }
                country.Cities = listCities;
                listCountries.Add(country);
            }
            return listCountries;
        }
    }
}