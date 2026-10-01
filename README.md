# GREENCOIN – HỆ THỐNG KHUYẾN KHÍCH HÀNH VI BẢO VỆ MÔI TRƯỜNG BẰNG BLOCKCHAIN

**Dự án nhóm | Blockchain | Solidity | Smart Contract**

## 1. Giới thiệu dự án

GreenCoin là dự án ứng dụng công nghệ Blockchain nhằm xây dựng cơ chế ghi nhận và khuyến khích các hành vi bảo vệ môi trường.

Hệ thống hướng đến việc cho phép người dùng tích lũy điểm thưởng khi tham gia các hoạt động như tái chế rác thải, phân loại rác và thu gom pin, chai nhựa.

Thông qua Smart Contract, dự án mô phỏng việc quản lý điểm thưởng trên Blockchain, giúp tăng tính minh bạch và khả năng truy xuất lịch sử giao dịch.

## 2. Mục tiêu dự án

- Thiết kế hệ thống ghi nhận hành vi bảo vệ môi trường.
- Xây dựng cơ chế quản lý điểm thưởng bằng Smart Contract.
- Phân quyền quản trị viên và người xác minh.
- Nghiên cứu khả năng kết nối ví MetaMask với ứng dụng Blockchain.
- Đề xuất kiến trúc kết hợp dữ liệu on-chain và off-chain.

## 3. Công nghệ sử dụng

| Công nghệ | Vai trò |
|---|---|
| Solidity | Lập trình Smart Contract |
| Blockchain | Ghi nhận giao dịch điểm thưởng |
| Remix IDE | Phát triển và kiểm thử hợp đồng thông minh |
| MetaMask | Kết nối ví Blockchain |
| ReactJS | Công nghệ giao diện được đề xuất trong thiết kế hệ thống |
| Firebase | Giải pháp lưu trữ dữ liệu ngoài chuỗi được đề xuất |

## 4. Chức năng Smart Contract

Mã nguồn Solidity của dự án triển khai những chức năng chính:

### 4.1. Quản lý quyền truy cập

- Xác định địa chỉ quản trị viên (Admin).
- Cho phép Admin thêm người xác minh (Verifier).
- Giới hạn quyền thực hiện các chức năng quản trị và cấp điểm.

### 4.2. Cấp điểm GreenCoin

- Người xác minh được phân quyền có thể cấp điểm cho địa chỉ ví người dùng.
- Ghi nhận số điểm được cấp và loại hành động.
- Phát sự kiện `PointsGranted` khi cấp điểm.

### 4.3. Tra cứu điểm thưởng

- Lưu trữ số điểm theo địa chỉ ví.
- Cho phép người dùng tra cứu số điểm hiện có thông qua hàm `getMyPoints()`.

## 5. Các hàm chính

| Hàm | Chức năng |
|---|---|
| `addVerifier()` | Thêm người có quyền xác minh |
| `grantPoints()` | Cấp điểm cho địa chỉ ví |
| `getMyPoints()` | Tra cứu số điểm của người gọi |

## 6. Kiến trúc hệ thống được đề xuất

Dự án nghiên cứu mô hình gồm các thành phần:

1. **Frontend:** Giao diện tương tác với người dùng.
2. **MetaMask:** Kết nối ví điện tử Blockchain.
3. **Smart Contract:** Quản lý quyền cấp điểm và số dư.
4. **Firebase:** Lưu trữ dữ liệu người dùng và minh chứng hoạt động.
5. **Backend:** Xử lý và điều phối các yêu cầu giữa những thành phần.

## 7. Phạm vi triển khai

Mã nguồn được chia sẻ trong repository tập trung vào Smart Contract quản lý điểm thưởng bằng Solidity.

Những chức năng mở rộng như xác minh hình ảnh, lưu trữ minh chứng, giao diện quản trị và đổi điểm lấy quà thuộc phạm vi thiết kế hệ thống; chưa được triển khai đầy đủ trong file Solidity này.

Điểm GreenCoin trong dự án mang tính mô phỏng, không đại diện cho tài sản có giá trị tài chính.

## 8. Kỹ năng thể hiện qua dự án

- Nghiên cứu ứng dụng công nghệ Blockchain.
- Thiết kế và lập trình Smart Contract bằng Solidity.
- Xây dựng logic phân quyền và quản lý điểm thưởng.
- Phân tích yêu cầu và quy trình hoạt động của hệ thống.
- Thiết kế kiến trúc ứng dụng.
- Phối hợp thực hiện dự án nhóm.

## 9. Mã nguồn

File chính: `GREENCOIN.sol`

Dự án được thực hiện trong khuôn khổ học phần Công nghệ Blockchain tại Trường Đại học Kinh tế – Luật.

**Hình thức thực hiện:** Dự án nhóm, tháng 06/2025.

---

*Dự án phục vụ mục đích học tập và nghiên cứu. Đây là nguyên mẫu Smart Contract, chưa phải hệ thống triển khai thương mại hoàn chỉnh.*
