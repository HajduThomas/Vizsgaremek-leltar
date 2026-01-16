namespace AnnaKisBolt
{
    partial class AnnaKisBoltBejelentkezocs
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
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.tbAzonosito = new System.Windows.Forms.TextBox();
            this.tbJelszo = new System.Windows.Forms.TextBox();
            this.btnKilep = new System.Windows.Forms.Button();
            this.btnBelep = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(184, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(134, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Bejelentkezés";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(40, 129);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(105, 25);
            this.label2.TabIndex = 1;
            this.label2.Text = "Azonosító:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(45, 198);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(75, 25);
            this.label3.TabIndex = 2;
            this.label3.Text = "Jelszó:";
            // 
            // tbAzonosito
            // 
            this.tbAzonosito.Location = new System.Drawing.Point(161, 131);
            this.tbAzonosito.Name = "tbAzonosito";
            this.tbAzonosito.Size = new System.Drawing.Size(278, 30);
            this.tbAzonosito.TabIndex = 3;
            // 
            // tbJelszo
            // 
            this.tbJelszo.Location = new System.Drawing.Point(161, 195);
            this.tbJelszo.Name = "tbJelszo";
            this.tbJelszo.Size = new System.Drawing.Size(278, 30);
            this.tbJelszo.TabIndex = 4;
            // 
            // btnKilep
            // 
            this.btnKilep.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnKilep.Location = new System.Drawing.Point(311, 287);
            this.btnKilep.Name = "btnKilep";
            this.btnKilep.Size = new System.Drawing.Size(115, 43);
            this.btnKilep.TabIndex = 5;
            this.btnKilep.Text = "Kilépés";
            this.btnKilep.UseVisualStyleBackColor = true;
            this.btnKilep.Click += new System.EventHandler(this.btnKilep_Click);
            // 
            // btnBelep
            // 
            this.btnBelep.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnBelep.Location = new System.Drawing.Point(50, 287);
            this.btnBelep.Name = "btnBelep";
            this.btnBelep.Size = new System.Drawing.Size(115, 43);
            this.btnBelep.TabIndex = 6;
            this.btnBelep.Text = "Belépés";
            this.btnBelep.UseVisualStyleBackColor = true;
            this.btnBelep.Click += new System.EventHandler(this.btnBelep_Click);
            // 
            // AnnaKisBoltBejelentkezocs
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(487, 377);
            this.Controls.Add(this.btnBelep);
            this.Controls.Add(this.btnKilep);
            this.Controls.Add(this.tbJelszo);
            this.Controls.Add(this.tbAzonosito);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "AnnaKisBoltBejelentkezocs";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Bejelentkezés";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbAzonosito;
        private System.Windows.Forms.TextBox tbJelszo;
        private System.Windows.Forms.Button btnKilep;
        private System.Windows.Forms.Button btnBelep;
    }
}