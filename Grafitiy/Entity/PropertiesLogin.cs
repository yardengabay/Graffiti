using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grafitiy.Entity
{
    public class PropertiesLogin
    {
        public bool isLogin;
        public string emailUserLogin;
        public User userLogin;

        [JsonConstructor]
        public PropertiesLogin(bool isLogin, string emailUserLogin)
        {
            this.isLogin=isLogin;
            this.emailUserLogin=emailUserLogin;
        }

        public PropertiesLogin(bool isLogin, User userLogin)
        {
            this.isLogin=isLogin;
            this.userLogin=userLogin;
        }
    }
}