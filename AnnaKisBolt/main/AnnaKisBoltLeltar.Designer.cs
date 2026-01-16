namespace AnnaKisBolt
{
    partial class AnnaKisBoltLeltar
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
            this.btnTejtermek = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnTejtermek
            // 
            this.btnTejtermek.Location = new System.Drawing.Point(88, 104);
            this.btnTejtermek.Name = "btnTejtermek";
            this.btnTejtermek.Size = new System.Drawing.Size(263, 72);
            this.btnTejtermek.TabIndex = 0;
            this.btnTejtermek.Text = "Tejtermékek";
            this.btnTejtermek.UseVisualStyleBackColor = true;
            this.btnTejtermek.Click += new System.EventHandler(this.btnTejtermek_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(418, 104);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(263, 72);
            this.button2.TabIndex = 1;
            this.button2.Text = "Szárazárú termékek";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(741, 104);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(263, 72);
            this.button3.TabIndex = 2;
            this.button3.Text = "Vegyiáruk";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(88, 227);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(263, 72);
            this.button4.TabIndex = 3;
            this.button4.Text = "Pékáruk";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(418, 227);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(263, 72);
            this.button5.TabIndex = 4;
            this.button5.Text = "Mirelit";
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(741, 227);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(263, 72);
            this.button6.TabIndex = 5;
            this.button6.Text = "Hentesáruk";
            this.button6.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(413, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(318, 25);
            this.label1.TabIndex = 6;
            this.label1.Text = "Kérem válasszon az alábbiak közül";
            // 
            // AnnaKisBoltLeltar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1132, 343);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.btnTejtermek);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "AnnaKisBoltLeltar";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Anna KisBolt Leltár";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnTejtermek;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Label label1;
    }
}