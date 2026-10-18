<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Khách Hàng</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #4f46e5;
            --primary-hover: #4338ca;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text-main: #0f172a;
            --text-muted: #64748b;
            --border: #e2e8f0;
            --badge-bg: #e0e7ff;
            --badge-text: #3730a3;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background-color: var(--bg);
            color: var(--text-main);
            padding: 40px 20px;
            display: flex;
            justify-content: center;
        }

        .container {
            width: 100%;
            max-width: 960px;
            background: var(--card-bg);
            border-radius: 16px;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05), 0 8px 10px -6px rgba(0, 0, 0, 0.02);
            overflow: hidden;
            border: 1px solid var(--border);
        }

        .header {
            padding: 28px 32px;
            background: linear-gradient(135deg, #4f46e5 0%, #7c3aed 100%);
            color: #ffffff;
        }

        .header h1 {
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 6px;
            letter-spacing: -0.02em;
        }

        .header p {
            font-size: 14px;
            opacity: 0.9;
        }

        .table-responsive {
            width: 100%;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
        }

        thead {
            background-color: #f1f5f9;
            border-bottom: 2px solid var(--border);
        }

        th {
            padding: 16px 20px;
            font-size: 13px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            color: var(--text-muted);
        }

        td {
            padding: 16px 20px;
            font-size: 14px;
            border-bottom: 1px solid var(--border);
            vertical-align: middle;
        }

        tbody tr {
            transition: background-color 0.15s ease;
        }

        tbody tr:hover {
            background-color: #f8fafc;
        }

        .stt {
            font-weight: 600;
            color: var(--text-muted);
            width: 60px;
            text-align: center;
        }

        th.stt-col {
            text-align: center;
            width: 60px;
        }

        .customer-name {
            font-weight: 600;
            color: var(--text-main);
        }

        .dob {
            color: #475569;
            font-variant-numeric: tabular-nums;
        }

        .badge-address {
            display: inline-block;
            padding: 4px 10px;
            border-radius: 9999px;
            font-size: 12px;
            font-weight: 500;
            background-color: var(--badge-bg);
            color: var(--badge-text);
        }

        .avatar-wrap {
            display: flex;
            align-items: center;
        }

        .avatar {
            width: 46px;
            height: 46px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #e0e7ff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
        }

        .footer {
            padding: 18px 32px;
            background-color: #f8fafc;
            border-top: 1px solid var(--border);
            font-size: 13px;
            color: var(--text-muted);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .empty-message {
            padding: 40px;
            text-align: center;
            color: var(--text-muted);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>DANH SÁCH KHÁCH HÀNG</h1>
            <p>Bài thực hành hiển thị danh sách khách hàng sử dụng JSTL và mô hình MVC (CodeGym)</p>
        </div>

        <div class="table-responsive">
            <table>
                <thead>
                    <tr>
                        <th class="stt-col">STT</th>
                        <th>Tên khách hàng</th>
                        <th>Ngày sinh</th>
                        <th>Địa chỉ</th>
                        <th>Ảnh đại diện</th>
                    </tr>
                </thead>
                <tbody>
                    <c:choose>
                        <c:when test="${not empty customerList}">
                            <c:forEach var="customer" items="${customerList}" varStatus="status">
                                <tr>
                                    <td class="stt">${status.count}</td>
                                    <td class="customer-name"><c:out value="${customer.name}" /></td>
                                    <td class="dob"><c:out value="${customer.dateOfBirth}" /></td>
                                    <td>
                                        <span class="badge-address"><c:out value="${customer.address}" /></span>
                                    </td>
                                    <td>
                                        <div class="avatar-wrap">
                                            <img src="${pageContext.request.contextPath}/${customer.image}"
                                                 alt="${customer.name}"
                                                 class="avatar"
                                                 onerror="this.onerror=null;this.src='https://ui-avatars.com/api/?name=${customer.name}&background=6366f1&color=fff';" />
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="5" class="empty-message">Hiện chưa có khách hàng nào trong danh sách.</td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>

        <div class="footer">
            <span>Tổng cộng: <strong>${customerList != null ? customerList.size() : 0}</strong> khách hàng</span>
            <span>Ứng dụng Servlet & JSP (Jakarta EE / JSTL)</span>
        </div>
    </div>
</body>
</html>
