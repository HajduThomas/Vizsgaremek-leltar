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
    public partial class AnnaKisBoltTejTermekTorles : Form
    {
        MySqlConnection abKapcsolat = null;
        string MySqlUtasitas;
        public AnnaKisBoltTejTermekTorles()
        {
            InitializeComponent();
            abKapcsolat = new MySqlConnection("server=localhost;database=annakisbolt;uid=root;pwd=;port=3306;");
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            try
            {
                abKapcsolat.Open();

                int id = int.Parse(tbID.Text);

                MySqlUtasitas = $"DELETE FROM tejtermek WHERE id = {id}";

                MySqlCommand parancs = new MySqlCommand(MySqlUtasitas, abKapcsolat);
                parancs.ExecuteNonQuery();

                MessageBox.Show("A termék törölve lett!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hiba történt: " + ex.Message);
            }
        }
    }
}
