let mysql = require("mysql2")

let connection = mysql.createConnection({
    host: "localhost",
    port: "3300",
    user: "admin",
    password: "admin",
    database: "tdc-devops" 
});

connection.connect((err) => {
    if(err){
        console.error('Lỗi kết nối:', err.stack);
        return;
    }
    else {
        console.log('Kết nối thành công với id: ', connection.threadId);
    }
})

// Thực hiện truy vấn SQL
connection.query('SELECT * FROM banners', (error, results, fields) => {
    if (error) {
        console.error('Lỗi truy vấn:', error);
        return;
    }
    console.log('Dữ liệu banner:', results);
});

 // Đóng kết nối MySQL
 connection.end((err) => {
    if (err) {
        console.error('Lỗi khi đóng kết nối:', err.stack);
        return;
    }
    console.log('Kết nối đã đóng.');
});
