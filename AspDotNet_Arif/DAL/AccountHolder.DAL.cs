using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace AspDotNet_Arif.DAL
{
    public class AccountHolder
    {
        public bool AccountHolderData(string AccountName, string Address, string Gender, string DOB, string MobileNo, int BranchID)
        {
            conString.con.Open();
            try
            {
                string query = "Insert Into Accounts_Holder Values('" + AccountName + "','" + Address + "','" + Gender + "','" + DOB + "','" + MobileNo + "','" + BranchID + "')";
                SqlCommand cmd = new SqlCommand(query, conString.con);
                cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                conString.con.Close();
               
            }
        }
    }
}