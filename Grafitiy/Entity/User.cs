using Grafitiy.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grafitiy
{
    public class User
    {
       public  string email;
        public string password;
        public string firstName;
        public string lastName;
        public string userType;
        public bool isActive;

        public User(string email,string password, string firstName, string lastName, string userType, bool isActive)
        {
            this.email=email;
            this.password=password;
            this.firstName=firstName;
            this.lastName=lastName;
         
            this.userType=userType;
            this.isActive=isActive;

        }



    }
}