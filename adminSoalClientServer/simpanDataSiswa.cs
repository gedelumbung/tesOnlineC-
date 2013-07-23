
using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace adminSoalClientServer
{
	/// <summary>
	/// Description of simpanDataSiswa.
	/// </summary>
	public class simpanDataSiswa
	{
		MySqlDataAdapter adapter;
		MySqlCommand komand;
		koneksi classKoneksi;
		DataTable tabel;
		string sql;
		
		public DataTable simpanDataSiswaBaru(string no_induk, string nama, string lahir, string alamat, string pass)
		{
			classKoneksi = new koneksi();
			sql = "insert into tbl_siswa(no_induk,nama_siswa,kelahiran,alamat,password,foto) values ('"+no_induk+"','"+nama+"','"+lahir+"','"+alamat+"','"+pass+"','no-photo.jpg');";
			tabel = new DataTable();
			
			try {
				classKoneksi.koneksiBuka();
				komand = new MySqlCommand(sql,classKoneksi.konek);
				adapter = new MySqlDataAdapter(komand);
				adapter.Fill(tabel);
			} catch (Exception) {
				
			}
			classKoneksi.koneksiTutup();
			return tabel;
		}
		
		public DataTable simpanUpdateSiswa(string no_induk, string nama, string lahir, string alamat, string pass)
		{
			classKoneksi = new koneksi();
			sql = "call updateSiswa("+no_induk+",'"+nama+"','"+lahir+"','"+alamat+"','"+pass+"')";
			tabel = new DataTable();
			
			try {
				classKoneksi.koneksiBuka();
				komand = new MySqlCommand(sql,classKoneksi.konek);
				adapter = new MySqlDataAdapter(komand);
				adapter.Fill(tabel);
			} catch (Exception) {
				
			}
			classKoneksi.koneksiTutup();
			return tabel;
		}
	}
}
