using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grafitiy.Entity
{
    public class Crs
    {
        public string type;
        public PropertiesCrs properties;

        public Crs(string type, PropertiesCrs properties)
        {
            this.type=type;
            this.properties=properties;


        }
    }

    public class PropertiesCrs
    {
        public string name;

        public PropertiesCrs(string name)
        {
            this.name=name;



        }
    }
}