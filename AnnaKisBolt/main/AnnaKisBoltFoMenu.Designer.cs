namespace AnnaKisBolt
{
    partial class AnnaKisBoltFoMenu
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnLeltar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.menűToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.stripmenuAdatbazis = new System.Windows.Forms.ToolStripMenuItem();
            this.stripmenuBeallitas = new System.Windows.Forms.ToolStripMenuItem();
            this.stripmenuKilep = new System.Windows.Forms.ToolStripMenuItem();
            this.lBejelentkez = new System.Windows.Forms.Label();
            this.lBejelentkez1 = new System.Windows.Forms.Label();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnLeltar
            // 
            this.btnLeltar.Location = new System.Drawing.Point(285, 152);
            this.btnLeltar.Name = "btnLeltar";
            this.btnLeltar.Size = new System.Drawing.Size(189, 68);
            this.btnLeltar.TabIndex = 0;
            this.btnLeltar.Text = "Leltár";
            this.btnLeltar.UseVisualStyleBackColor = true;
            this.btnLeltar.Click += new System.EventHandler(this.btnLeltar_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(232, 67);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(383, 25);
            this.label1.TabIndex = 2;
            this.label1.Text = "Üdvözöllek az Anna KisBolt programjában!";
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menűToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(765, 28);
            this.menuStrip1.TabIndex = 3;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // menűToolStripMenuItem
            // 
            this.menűToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.stripmenuAdatbazis,
            this.stripmenuBeallitas,
            this.stripmenuKilep});
            this.menűToolStripMenuItem.Name = "menűToolStripMenuItem";
            this.menűToolStripMenuItem.Size = new System.Drawing.Size(60, 24);
            this.menűToolStripMenuItem.Text = "Menü";
            // 
            // stripmenuAdatbazis
            // 
            this.stripmenuAdatbazis.Name = "stripmenuAdatbazis";
            this.stripmenuAdatbazis.Size = new System.Drawing.Size(332, 26);
            this.stripmenuAdatbazis.Text = "Csatlakozás adatbázishoz (kötelező)";
            this.stripmenuAdatbazis.Click += new System.EventHandler(this.stripmenuAdatbazis_Click);
            // 
            // stripmenuBeallitas
            // 
            this.stripmenuBeallitas.Name = "stripmenuBeallitas";
            this.stripmenuBeallitas.Size = new System.Drawing.Size(332, 26);
            this.stripmenuBeallitas.Text = "Beállítás";
            this.stripmenuBeallitas.Click += new System.EventHandler(this.stripmenuBeallitas_Click);
            // 
            // stripmenuKilep
            // 
            this.stripmenuKilep.Name = "stripmenuKilep";
            this.stripmenuKilep.Size = new System.Drawing.Size(332, 26);
            this.stripmenuKilep.Text = "Kilépés";
            this.stripmenuKilep.Click += new System.EventHandler(this.stripmenuKilep_Click);
            // 
            // lBejelentkez
            // 
            this.lBejelentkez.AutoSize = true;
            this.lBejelentkez.Location = new System.Drawing.Point(203, 104);
            this.lBejelentkez.Name = "lBejelentkez";
            this.lBejelentkez.Size = new System.Drawing.Size(454, 25);
            this.lBejelentkez.TabIndex = 4;
            this.lBejelentkez.Text = "Hogy használd a programot, jelentkezz be elsőnek!";
            // 
            // lBejelentkez1
            // 
            this.lBejelentkez1.AutoSize = true;
            this.lBejelentkez1.Location = new System.Drawing.Point(297, 129);
            this.lBejelentkez1.Name = "lBejelentkez1";
            this.lBejelentkez1.Size = new System.Drawing.Size(213, 25);
            this.lBejelentkez1.TabIndex = 5;
            this.lBejelentkez1.Text = "A Menü felületben van!";
            // 
            // AnnaKisBoltFoMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(765, 284);
            this.Controls.Add(this.lBejelentkez1);
            this.Controls.Add(this.lBejelentkez);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnLeltar);
            this.Controls.Add(this.menuStrip1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "AnnaKisBoltFoMenu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Anna Kis Bolt";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnLeltar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem menűToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem stripmenuAdatbazis;
        private System.Windows.Forms.ToolStripMenuItem stripmenuBeallitas;
        private System.Windows.Forms.ToolStripMenuItem stripmenuKilep;
        private System.Windows.Forms.Label lBejelentkez;
        private System.Windows.Forms.Label lBejelentkez1;
    }
}

