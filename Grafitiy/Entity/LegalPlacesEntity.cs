using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grafitiy.Entity
{
    public class LegalPlacesEntity
    {
        public string type;
        public string name;
        public Crs crs;
        public List<FeaturesLegal> features;

        public LegalPlacesEntity(string type, string name, Crs crs, List<FeaturesLegal> features)
        {
            this.type=type;
            this.name=name;
            this.crs=crs;
            this.features=features;
        }
    }

    public class FeaturesLegal
    {
        public string type;
        public PropertiesFeaturesLegal properties;
        public Geometry geometry;

        public FeaturesLegal(PropertiesFeaturesLegal properties, Geometry geometry, string type = "Feature")
        {
            this.type=type;
            this.properties=properties;
            this.geometry=geometry;
        }
    }

    public class PropertiesFeaturesLegal
    {
        public Double id;
        public string address;
        public string l_Name;
        public string l_Descript;
        public string is_Legal;
        public Double xcoord;
        public Double ycoord;

        public PropertiesFeaturesLegal(Double id,
         string address,
         string l_Name,
         string l_Descript,
         string is_Legal,
         Double xcoord,
         Double ycoord)
        {
            this.id=id;
            this.address=address;
            this.l_Name=l_Name;
            this.l_Descript=l_Descript;
            this.is_Legal=is_Legal;
            this.address=address;
            this.xcoord=xcoord;
            this.ycoord=ycoord;

        }
    }

}