using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grafitiy.Entity
{
    public class Geometry
    {
        public string type;
        public List<Double> coordinates;

        public Geometry(List<Double> coordinates, string type = "Point")
        {
            this.type=type;

            this.coordinates=coordinates;



        }
    }
}