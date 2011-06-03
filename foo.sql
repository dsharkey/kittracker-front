UPDATE mysql.user SET Password=PASSWORD('foo') WHERE User='root';
FLUSH PRIVILEGES;
