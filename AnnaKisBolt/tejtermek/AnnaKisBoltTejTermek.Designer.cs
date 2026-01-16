namespace AnnaKisBolt
{
    partial class AnnaKisBoltTejTermek
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
            this.dgvTejtermek = new System.Windows.Forms.DataGridView();
            this.btnOK = new System.Windows.Forms.Button();
            this.btnKilep = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.tbKereso = new System.Windows.Forms.TextBox();
            this.btnHozzaad = new System.Windows.Forms.Button();
            this.btnTorles = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTejtermek)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvTejtermek
            // 
            this.dgvTejtermek.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTejtermek.Location = new System.Drawing.Point(52, 33);
            this.dgvTejtermek.Name = "dgvTejtermek";
            this.dgvTejtermek.RowHeadersWidth = 51;
            this.dgvTejtermek.RowTemplate.Height = 24;
            this.dgvTejtermek.Size = new System.Drawing.Size(1269, 498);
            this.dgvTejtermek.TabIndex = 0;
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(52, 612);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(213, 65);
            this.btnOK.TabIndex = 1;
            this.btnOK.Text = "OK";
            this.btnOK.UseVisualStyleBackColor = true;
            // 
            // btnKilep
            // 
            this.btnKilep.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnKilep.Location = new System.Drawing.Point(1108, 612);
            this.btnKilep.Name = "btnKilep";
            this.btnKilep.Size = new System.Drawing.Size(213, 65);
            this.btnKilep.TabIndex = 2;
            this.btnKilep.Text = "Kilépés";
            this.btnKilep.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(47, 559);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(81, 25);
            this.label1.TabIndex = 3;
            this.label1.Text = "Kereső:";
            // 
            // tbKereso
            // 
            this.tbKereso.Location = new System.Drawing.Point(134, 556);
            this.tbKereso.Name = "tbKereso";
            this.tbKereso.Size = new System.Drawing.Size(1187, 30);
            this.tbKereso.TabIndex = 4;
            // 
            // btnHozzaad
            // 
            this.btnHozzaad.Location = new System.Drawing.Point(414, 612);
            this.btnHozzaad.Name = "btnHozzaad";
            this.btnHozzaad.Size = new System.Drawing.Size(213, 65);
            this.btnHozzaad.TabIndex = 5;
            this.btnHozzaad.Text = "Hozzáadás";
            this.btnHozzaad.UseVisualStyleBackColor = true;
            this.btnHozzaad.Click += new System.EventHandler(this.btnHozzaad_Click);
            // 
            // btnTorles
            // 
            this.btnTorles.Location = new System.Drawing.Point(749, 612);
            this.btnTorles.Name = "btnTorles";
            this.btnTorles.Size = new System.Drawing.Size(213, 65);
            this.btnTorles.TabIndex = 6;
            this.btnTorles.Text = "Törlés";
            this.btnTorles.UseVisualStyleBackColor = true;
            this.btnTorles.Click += new System.EventHandler(this.btnTorles_Click);
            // 
            // AnnaKisBoltTejTermek
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1369, 703);
            this.Controls.Add(this.btnTorles);
            this.Controls.Add(this.btnHozzaad);
            this.Controls.Add(this.tbKereso);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnKilep);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.dgvTejtermek);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "AnnaKisBoltTejTermek";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Anna KisBolt Tejtermékek";
            this.Load += new System.EventHandler(this.AnnaKisBoltTejTermek_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvTejtermek)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvTejtermek;
        private System.Windows.Forms.Button btnOK;
        private System.Windows.Forms.Button btnKilep;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tbKereso;
        private System.Windows.Forms.Button btnHozzaad;
        private System.Windows.Forms.Button btnTorles;
    }
}