using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien
{
    public partial class frm_Start : Form
    {
        public frm_Start()
        {
            InitializeComponent();
        }

        private void butBanDoc_Click(object sender, EventArgs e)
        {
            BanDoc frm = new BanDoc();
            frm.ShowDialog();
            frm.Close();
            frm.Dispose();
        }

        private void butSach_Click(object sender, EventArgs e)
        {

        }

        private void butNXB_Click(object sender, EventArgs e)
        {

        }

        private void butPhieuMuon_Click(object sender, EventArgs e)
        {

        }

        private void butLogIn_Click(object sender, EventArgs e)
        {

        }

        private void butHuongDan_Click(object sender, EventArgs e)
        {

        }

        private void butLogOut_Click(object sender, EventArgs e)
        {

        }
    }
}
