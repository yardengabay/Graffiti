using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grafitiy.Entity
{
    public class Result
    {
        public bool isSuccess;
        public string message;
        public User user;

        public Result(bool isSuccess, string message)
        {
            this.isSuccess=isSuccess;
            this.message=message;
        }
        public Result(bool isSuccess, string message, User user)
        {
            this.isSuccess=isSuccess;
            this.message=message;
            this.user=user;
        }
    }
}