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
    public partial class AnnaKisBoltTejTermek : Form
    {
        MySqlConnection abKapcsolat = null;
        string MySqlUtasitas;

        public AnnaKisBoltTejTermek()
        {
            InitializeComponent();
            abKapcsolat = new MySqlConnection("server=localhost;database=leltar;uid=root;pwd=;port=3306;");
        }

        private void TermekekMegjelenitese()
        {
            try
            {
                abKapcsolat.Open();

                MySqlUtasitas = "SELECT id, nev, tomeg, tomegfajta, db FROM termekek;";
                MySqlDataAdapter adapter = new MySqlDataAdapter(MySqlUtasitas, abKapcsolat);

                DataTable tabla = new DataTable();
                adapter.Fill(tabla);

                dgvTejtermek.DataSource = tabla;

                dgvTejtermek.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                dgvTejtermek.ReadOnly = true;
                dgvTejtermek.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
                dgvTejtermek.AllowUserToAddRows = false;

                dgvTejtermek.Columns["id"].HeaderText = "ID";
                dgvTejtermek.Columns["nev"].HeaderText = "Termék neve";
                dgvTejtermek.Columns["tomeg"].HeaderText = "Mennyiség";
                dgvTejtermek.Columns["tomegfajta"].HeaderText = "g/L/db";
                dgvTejtermek.Columns["db"].HeaderText = "Darabszám";

                abKapcsolat.Close();
            }
            catch (Exception hiba)
            {
                abKapcsolat.Close();
                MessageBox.Show(hiba.Message);
            }
        }


        private void AnnaKisBoltTejTermek_Load(object sender, EventArgs e)
        {
            TermekekMegjelenitese();
        }

        private void btnHozzaad_Click(object sender, EventArgs e)
        {
            AnnaKisBoltTejtermekHozzaado tejtermekhozzaadas = new AnnaKisBoltTejtermekHozzaado();
            tejtermekhozzaadas.ShowDialog();
        }

        private void btnTorles_Click(object sender, EventArgs e)
        {
            AnnaKisBoltTejTermekTorles tejtermektorles = new AnnaKisBoltTejTermekTorles();
            tejtermektorles.ShowDialog();
        }
    }
}
