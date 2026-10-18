# [Bài Tập] Hiển Thị Danh Sách Khách Hàng - JSTL (CodeGym)

Ứng dụng web hiển thị danh sách khách hàng sử dụng mô hình **MVC** kết hợp **Servlet**, **JSP** và thư viện thẻ **JSTL (Jakarta Standard Tag Library)**.

## 📋 Mục tiêu bài tập
- Áp dụng mô hình MVC (Model - View - Controller).
- Khởi tạo danh sách khách hàng từ Controller (`CustomerServlet`) và truyền dữ liệu sang View.
- Sử dụng thẻ JSTL `<c:forEach>`, `<c:out>`, `<c:choose>`, `<c:when>` để hiển thị bảng dữ liệu.

## 🏗️ Cấu trúc dự án
```
bai-tap-jstl-customer-list/
├── .gitignore
├── pom.xml
├── README.md
└── src/
    └── main/
        ├── java/
        │   └── com/codegym/
        │       ├── controller/
        │       │   └── CustomerServlet.java
        │       └── model/
        │           └── Customer.java
        └── webapp/
            ├── WEB-INF/
            │   └── web.xml
            ├── customer/
            │   └── list.jsp
            ├── images/
            │   ├── 1.png
            │   ├── 2.png
            │   └── ...
            └── index.jsp
```

## 🛠️ Công nghệ sử dụng
- **Java**: 17
- **Servlet Container**: Apache Tomcat 10.1+
- **Jakarta Servlet API**: 6.0.0
- **Jakarta JSP API**: 3.1.1
- **Jakarta JSTL**: 3.0.1
- **Maven**: Quản lý build và dependencies

## 🚀 Hướng dẫn chạy thử nghiệm
1. Build dự án bằng Maven:
   ```bash
   mvn clean package
   ```
2. Triển khai file `target/bai-tap-jstl-customer-list.war` vào thư mục `webapps` của Apache Tomcat 10.1+.
3. Khởi động Tomcat và truy cập ứng dụng:
   ```text
   http://localhost:8080/bai-tap-jstl-customer-list/
   hoặc
   http://localhost:8080/bai-tap-jstl-customer-list/customers
   ```
