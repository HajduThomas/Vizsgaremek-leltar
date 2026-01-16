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
    public partial class AnnaKisBoltFoMenu : Form
    {
        MySqlConnection abKapcsolat = null;
        string MySqlUtasitas;
        Felhasznalo aktFelh;
        public AnnaKisBoltFoMenu()
        {
            InitializeComponent();
            Alaphelyzet();
        }

        private void Alaphelyzet()
        {
            btnLeltar.Enabled = false;
        }

        private bool ABEllenoriz()
        {
            MySqlConnectionStringBuilder kapcsString
                = new MySqlConnectionStringBuilder();
            kapcsString.Server = "localhost";
            kapcsString.Database = "leltar";
            kapcsString.UserID = "root";
            kapcsString.Password = "";
            kapcsString.Port = 3306;

            abKapcsolat = new MySqlConnection(kapcsString.ToString());

            try
            {
                abKapcsolat.Open();
                abKapcsolat.Close();
                MessageBox.Show("A kapcsolat az adatbázissal létrejött!");
                return true;
            }
            catch (Exception hiba)
            {
                abKapcsolat.Close();
                MessageBox.Show("Sajnos valami hiba történt!\n" + hiba.Message);
                return false;
            }
        }

        private void stripmenuKilep_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Viszontlátásra!");
            Application.Exit();
        }

        private void stripmenuBeallitas_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Fejlesztés alatt!");
        }

        private void stripmenuAdatbazis_Click(object sender, EventArgs e)
        {
            if (!ABEllenoriz()) return;

            if (Belepes())
            {
                SikeresBelepes();
            }
            else
            {
                MessageBox.Show("Hibás felhasználónév vagy jelszó!");
            }
        }

        private bool Belepes()
        {
            AnnaKisBoltBejelentkezocs annakisboltbejelentkezes = new AnnaKisBoltBejelentkezocs();
            bool ok = false;
            if(annakisboltbejelentkezes.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    abKapcsolat.Open();
                    MySqlUtasitas = "SELECT * FROM felhasznalo;";
                    MySqlCommand listaz = new MySqlCommand(MySqlUtasitas, abKapcsolat);
                    MySqlDataReader drListaz = listaz.ExecuteReader();
                    while (drListaz.Read())
                    {
                        if (drListaz["azonosito"].ToString() == annakisboltbejelentkezes.Azonosito
                            && drListaz["jelszo"].ToString() == annakisboltbejelentkezes.Jelszo)
                        {
                            aktFelh = new Felhasznalo(drListaz["azonosito"].ToString(),
                                drListaz["jelszo"].ToString());
                            ok = true;
                            break;
                        }
                    }
                    abKapcsolat.Close();
                    if (ok) return true;
                    else return false;
                }
                catch (Exception hiba)
                {
                    abKapcsolat.Close();
                    MessageBox.Show(hiba.Message);
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        private void SikeresBelepes()
        {
            MessageBox.Show("Sikeres bejelentkezés!");

            btnLeltar.Enabled = true;
            lBejelentkez.Text = "";
            lBejelentkez1.Text = "";
        }

        private void btnLeltar_Click(object sender, EventArgs e)
        {
            AnnaKisBoltLeltar leltarAblak = new AnnaKisBoltLeltar();
            leltarAblak.ShowDialog();
        }
    }
}
