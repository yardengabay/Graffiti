using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grafitiy
{
    public class LikesEntity
    {
        public int Id { get; set; }
        public int likes { get; set; }
        public int unlikes { get; set; }

        public LikesEntity(int Id, int likes, int unlikes)
        {
            this.Id=Id;
            this.likes=likes;
            this.unlikes=unlikes;
        }
    }
}