using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grafitiy.Entity
{
    public class GrafitiesJsonEntity
    {
        public string type;
        public string name;
        public Crs crs;
        public List<FeaturesGraffiti> features;

        [Newtonsoft.Json.JsonConstructor]
        public GrafitiesJsonEntity(string type, string name, Crs crs, List<FeaturesGraffiti> features)
        {
            this.type=type;
            this.name=name;
            this.crs=crs;
            this.features=features;

        }
    }

    public class FeaturesGraffiti
    {
        public string type;
        public PropertiesFeaturesGraffiti properties;
        public Geometry geometry;

        public FeaturesGraffiti( PropertiesFeaturesGraffiti properties, Geometry geometry, string type = "Feature")
        {
            this.type=type;

            this.properties=properties;
            this.geometry=geometry;


        }
    }

    public class PropertiesFeaturesGraffiti
    {
        public Double g_Id;
        public string g_Name;
        public string g_Descrip;
        public string g_Date;
        public string user_Id;
        public string artist_Id;
        public string image;
        public string address;
        public Double xcoord;
        public Double ycoord;

        public PropertiesFeaturesGraffiti(Double g_Id,
         string g_Name,
         string g_Descrip,
         string g_Date,
         string user_Id,
         string artist_Id,
         string image,
         string address,
         Double xcoord,
         Double ycoord)
        {
            this.g_Id=g_Id;
            this.g_Name=g_Name;
            this.g_Descrip=g_Descrip;
            this.g_Date=g_Date;
            this.user_Id=user_Id;
            this.artist_Id=artist_Id;
            this.image=image;
            this.address=address;
            this.xcoord=xcoord;
            this.ycoord=ycoord;

        }
    }

 

}