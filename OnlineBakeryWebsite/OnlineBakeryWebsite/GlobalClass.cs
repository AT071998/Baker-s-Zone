using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OnlineBakeryWebsite
{
    public class GlobalClass
    {
        public static int autoId;
        public static SqlDataAdapter adap;
        public static DataTable dt;
        public static string imgEditPath;
    }
}