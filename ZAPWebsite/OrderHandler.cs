using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZAPWebsite
{
    public class OrderHandler
    {
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string email;

        public string Eamil
        {
            get { return email; }
            set { email = value; }
        }

        private string telefonNr;

        public string TelefonNr
        {
            get { return telefonNr; }
            set { telefonNr = value; }
        }

        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        private int adult;

        public int Adult
        {
            get { return adult; }
            set { adult = value; }
        }

        private int kid;

        public int Kids
        {
            get { return kid; }
            set { kid = value; }
        }

        private int dog;

        public int Dog
        {
            get { return dog; }
            set { dog = value; }
        }

        private bool myVar;

        public int MyProperty
        {
            get { return myVar; }
            set { myVar = value; }
        }


    }
}