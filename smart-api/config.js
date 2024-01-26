const mysql = require('mysql2');

const db = {
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'smart',
};

const connection = mysql.createPool(db)

if (connection) {
    console.log('Koneksi berhasil')
} else {
    console.log('koneksi gagal')
}

module.exports = connection
