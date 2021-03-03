using AspDotNet_Arif.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspDotNet_Arif.BL
{
    public class AccountHolderAdd
    {
        private string _AccountName;
        private string _Address;
        private string _Gender;
        private string _DOB;
        private string _MobileNo;
        private int _BranchID;


        public string AccountName
        {
            get { return _AccountName; }
            set { _AccountName = value; }
        }

        public string Address
        {
            get { return _Address; }
            set { _Address = value; }
        }
        public string Gender
        {
            get { return _Gender; }
            set { _Gender = value; }
        }

        public string DOB
        {
            get { return _DOB; }
            set { _DOB = value; }
        }

        public string MobileNo
        {
            get { return _MobileNo; }
            set { _MobileNo = value; }
        }

        public int BranchID
        {
            get { return _BranchID; }
            set { _BranchID = value; }
        }


        public bool Save()
        {
            try
            {
                AccountHolder accountholder = new AccountHolder();
                accountholder.AccountHolderData(_AccountName, _Address, _Gender, _DOB, _MobileNo, _BranchID);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Not Executed");
            }
        }
    }
}