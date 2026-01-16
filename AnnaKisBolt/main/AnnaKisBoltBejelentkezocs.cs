using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AnnaKisBolt
{
    public partial class AnnaKisBoltBejelentkezocs : Form
    {
        private string azonosito, jelszo;

        public string Azonosito { get { return azonosito; } }
        public string Jelszo { get { return jelszo; } }

        public AnnaKisBoltBejelentkezocs()
        {
            InitializeComponent();
        }

        private void btnBelep_Click(object sender, EventArgs e)
        {
            azonosito = tbAzonosito.Text;
            jelszo = tbJelszo.Text;
        }

        private void btnKilep_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Viszontlátásra!");
            Application.Exit();
        }
    }
}
