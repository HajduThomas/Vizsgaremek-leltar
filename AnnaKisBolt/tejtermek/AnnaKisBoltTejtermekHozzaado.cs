using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace AnnaKisBolt
{
    public partial class AnnaKisBoltTejtermekHozzaado : Form
    {
        MySqlConnection abKapcsolat = null;
        string MySqlUtasitas;
        public AnnaKisBoltTejtermekHozzaado()
        {
            InitializeComponent();
            abKapcsolat = new MySqlConnection("server=localhost;database=leltar;uid=root;pwd=;port=3306;");
            cbMennyisegJele.Items.Add("gramm");
            cbMennyisegJele.Items.Add("liter");
            cbMennyisegJele.Items.Add("darab");
        }

        private void btnHozzaad_Click(object sender, EventArgs e)
        {
            try
            {
                abKapcsolat.Open();

                string nev = txtNev.Text;
                double tomeg = double.Parse(txtMennyiseg.Text);
                string tomegfajta = cbMennyisegJele.SelectedItem.ToString();
                int db = int.Parse(txtDarabszam.Text);

                MySqlUtasitas = $"INSERT INTO termekek (nev, tomeg, tomegfajta, db) " +
                             $"VALUES ('{nev}', {tomeg}, '{tomegfajta}', {db})";

                MySqlCommand parancs = new MySqlCommand(MySqlUtasitas, abKapcsolat);
                parancs.ExecuteNonQuery();

                MessageBox.Show("Termék hozzáadva az adatbázishoz!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hiba történt: " + ex.Message);
            }
        }
    }
}
