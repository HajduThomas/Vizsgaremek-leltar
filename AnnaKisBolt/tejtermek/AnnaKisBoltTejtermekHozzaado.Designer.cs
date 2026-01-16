namespace AnnaKisBolt
{
    partial class AnnaKisBoltTejtermekHozzaado
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
            this.label1 = new System.Windows.Forms.Label();
            this.txtNev = new System.Windows.Forms.TextBox();
            this.txtMennyiseg = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtDarabszam = new System.Windows.Forms.TextBox();
            this.cbMennyisegJele = new System.Windows.Forms.ComboBox();
            this.btnKilep = new System.Windows.Forms.Button();
            this.btnHozzaad = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(87, 58);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(104, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Termék neve:";
            // 
            // txtNev
            // 
            this.txtNev.Location = new System.Drawing.Point(226, 58);
            this.txtNev.Name = "txtNev";
            this.txtNev.Size = new System.Drawing.Size(359, 26);
            this.txtNev.TabIndex = 2;
            // 
            // txtMennyiseg
            // 
            this.txtMennyiseg.Location = new System.Drawing.Point(226, 111);
            this.txtMennyiseg.Name = "txtMennyiseg";
            this.txtMennyiseg.Size = new System.Drawing.Size(359, 26);
            this.txtMennyiseg.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(67, 111);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(124, 20);
            this.label2.TabIndex = 4;
            this.label2.Text = "Termék tömege:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(33, 215);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(158, 20);
            this.label3.TabIndex = 5;
            this.label3.Text = "Termék darabszáma:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(41, 167);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(150, 20);
            this.label4.TabIndex = 6;
            this.label4.Text = "Termék tömeg fajta:";
            // 
            // txtDarabszam
            // 
            this.txtDarabszam.Location = new System.Drawing.Point(226, 212);
            this.txtDarabszam.Name = "txtDarabszam";
            this.txtDarabszam.Size = new System.Drawing.Size(359, 26);
            this.txtDarabszam.TabIndex = 7;
            // 
            // cbMennyisegJele
            // 
            this.cbMennyisegJele.FormattingEnabled = true;
            this.cbMennyisegJele.Location = new System.Drawing.Point(226, 159);
            this.cbMennyisegJele.Name = "cbMennyisegJele";
            this.cbMennyisegJele.Size = new System.Drawing.Size(359, 28);
            this.cbMennyisegJele.TabIndex = 8;
            // 
            // btnKilep
            // 
            this.btnKilep.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnKilep.Location = new System.Drawing.Point(439, 262);
            this.btnKilep.Name = "btnKilep";
            this.btnKilep.Size = new System.Drawing.Size(146, 47);
            this.btnKilep.TabIndex = 9;
            this.btnKilep.Text = "Kilépés";
            this.btnKilep.UseVisualStyleBackColor = true;
            // 
            // btnHozzaad
            // 
            this.btnHozzaad.Location = new System.Drawing.Point(27, 262);
            this.btnHozzaad.Name = "btnHozzaad";
            this.btnHozzaad.Size = new System.Drawing.Size(146, 47);
            this.btnHozzaad.TabIndex = 10;
            this.btnHozzaad.Text = "Hozzáadás";
            this.btnHozzaad.UseVisualStyleBackColor = true;
            this.btnHozzaad.Click += new System.EventHandler(this.btnHozzaad_Click);
            // 
            // AnnaKisBoltTejtermekHozzaado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(613, 332);
            this.Controls.Add(this.btnHozzaad);
            this.Controls.Add(this.btnKilep);
            this.Controls.Add(this.cbMennyisegJele);
            this.Controls.Add(this.txtDarabszam);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtMennyiseg);
            this.Controls.Add(this.txtNev);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "AnnaKisBoltTejtermekHozzaado";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Anna Kisbolt Tejtermék hozzáadó";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtNev;
        private System.Windows.Forms.TextBox txtMennyiseg;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtDarabszam;
        private System.Windows.Forms.ComboBox cbMennyisegJele;
        private System.Windows.Forms.Button btnKilep;
        private System.Windows.Forms.Button btnHozzaad;
    }
}