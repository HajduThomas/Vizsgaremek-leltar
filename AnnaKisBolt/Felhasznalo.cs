using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnnaKisBolt
{
    internal class Felhasznalo
    {
        private string azonosito, jelszo, nev;

        public string Azonosito { get { return azonosito; } }
        public string Jelszo { get { return jelszo; } }

        public Felhasznalo(string azonosito, string jelszo)
        {
            this.azonosito = azonosito;
            this.jelszo = jelszo;
        }
    }
}
