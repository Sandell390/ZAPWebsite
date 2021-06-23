using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZAPWebsite
{
    public class Order
    {
        private int type;

        public int Type
        {
            get { return type; }
            set { type = value; }
        }

        private string firstName;

        public string FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }

        private string lastName;

        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
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

        private int persons;

        public int Persons
        {
            get { return persons; }
            set { persons = value; }
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

        private int breakfastA;

        public int BreakfastA
        {
            get { return breakfastA; }
            set { breakfastA = value; }
        }

        private int breakfastK;

        public int BreakfastK
        {
            get { return breakfastK; }
            set { breakfastK = value; }
        }

        private int bike;

        public int Bike
        {
            get { return bike; }
            set { bike = value; }
        }

        private int waterlandA;

        public int WaterlandA
        {
            get { return waterlandA; }
            set { waterlandA = value; }
        }

        private int waterlandK;

        public int WaterlandK
        {
            get { return waterlandK; }
            set { waterlandK = value; }
        }

        private bool endClean;

        public bool EndClean
        {
            get { return endClean; }
            set { endClean = value; }
        }

        private int bedThings;

        public int BedThings
        {
            get { return bedThings; }
            set { bedThings = value; }
        }

        private bool luxuryCottage;

        public bool LuxuryCottage
        {
            get { return luxuryCottage; }
            set { luxuryCottage = value; }
        }

        private bool waterView;

        public bool WaterView
        {
            get { return waterView; }
            set { waterView = value; }
        }

        private bool bigPlace;

        public bool BigPlace
        {
            get { return bigPlace; }
            set { bigPlace = value; }
        }

        private int season;

        public int Season
        {
            get { return season; }
            set { season = value; }
        }

        private DateTime starteDate;

        public DateTime StartDate
        {
            get { return starteDate; }
            set { starteDate = value; }
        }


        private DateTime endDate;

        public DateTime EndDate
        {
            get { return endDate; }
            set { endDate = value; }
        }

        public Order()
        {

        }

        public void CalculatePersons()
        {
            persons = Kids + Adult;
        }

        public void SetType(string livingType)
        {
            if (livingType == "caravan")
            {
                if (bigPlace && waterView)
                {
                    type = 1;
                }
                else if (bigPlace && !waterView)
                {
                    type = 2;
                }
                else if (!bigPlace && waterView)
                {
                    type = 3;
                }
                else if (!bigPlace && !waterView)
                {
                    type = 4;
                }
            }
            else if (livingType == "tent")
            {
                if (waterView)
                {
                    type = 5;
                }
                else
                {
                    type = 6;
                }
            }
            else if (livingType == "cottage")
            {
                if (luxuryCottage)
                {
                    type = 7;
                }
                else
                {
                    type = 8;
                }
            }


        }

    }
}