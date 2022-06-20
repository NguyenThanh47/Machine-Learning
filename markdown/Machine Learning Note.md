
# **I. Các khái niệm ban đầu**
1. Khái niệm: Một chương trình máy tính được cho là học hỏi từ trải nghiệm E đối với một số loại nhiệm vụ T và thước đo hiệu suất P, nếu hiệu suất của nó ở các nhiệm vụ trong T, được đo bằng P, cải thiện theo trải nghiệm E
2. Nhiệm vụ T: Hồi quy, Phân loại
- Để phân biệt cần căn cứ vào dải giá trị đầu ra:
  - Nếu đầu ra vô hạn, liên tục => bài toán hồi quy
  - Nếu đầu ra hữu hạn, rời rạc => bài toán phân loại
3. Kinh nghiệm E: Giám sát, không giám sát
- Dựa trên kinh nghiệm trước đây đã có hay không có của đầu ra y tập dữ liệu
  - Học giám sát: có đầu ra y
  - Học không giám sát: không có đầu ra y
4. Đánh giá P: Từ việc tối ưu bài toán chúng ta đánh giá việc `học` của máy đã tốt chưa.
  - Học có giám sát: tối ưu hàm chi phí để tìm ra mô hình
  - Học không có giám sát: tối ưu để phân cụm dựa vào đặc trưng đầu vào
5. Lưu ý
  - Phân loại dựa vào y
  - Phân cụm dựa vào x

# **II. Các vấn đề kinh điển thuộc học có giám sát**
## 1. Các ký hiệu
- Số lượng mẫu huấn luyện : m
- Số lượng đặc trưng : n
- $(x^i, y^i)$: đầu vào, đầu ra của mẫu huấn luyện thứ i
- Bộ tham số : $\theta$

## 2. Bài toán hồi quy
- Hàm giả thuyết:
  - $ h_\theta (x) = \theta^Tx = \theta_0 + \theta_1x_1 + \theta_2x_2 + ... + \theta_nx_n$
- Hàm chi phí:
  - $ J(\theta) = \frac{1}{2m}\sum_{i=1}^m(h_\theta(x^i) - y_i)^2$
- Gradient descent:
  - $ \theta_j := \theta_j - \alpha \frac{\partial}{\partial\theta_j}J(\theta)$

## 3. Bài toán phân loại
- Hàm giả thuyết:
  - $ h_\theta(x) = \frac{1}{1+ e^{-\theta^Tx}} $
- Dự đoán y = 1 nếu $h_\theta(x) \ge 0.5$ và y = 0 nếu $h_\theta(x) \le 0.5$
- Hàm chi phí:
  - $J(\theta) = \frac{-1}{m} [\sum_{i=1}^m y^ilogh_\theta(x^i)+ (1-y^i)log(1-h_\theta(x^i))]$
- Gradient descent:
  - $ \theta_j := \theta_j - \alpha \frac{\partial}{\partial\theta_j}J(\theta) $
  - với $\frac{\partial}{\partial\theta_j}J(\theta) = \frac{1}{m}\sum_{i=1}^m(h_\theta(x^i)- y^i)x_j^i$

## 4. Bàn thêm vấn đề nâng cao
### 4.1. Những yếu tố cần quan tâm khi thực hiện Gradient descent
  - Hệ số học $\alpha$ :
    - Nếu $\alpha$ quá nhỏ thì thuật toán có thể hội tụ chậm
    - Nếu $\alpha$ quá lớn thì thuật toán có thể không hội tụ
  - Số vòng lặp iter
  - Mỗi lần lặp cần phải cập nhật đồng thời hệ số $\theta$
  - Sử dụng phương pháp **`Feature Scaling`** để đảm bảo các đặc trưng có giá trị nằm trong 1 dải tương đồng từ đó có thể giảm thời gian tối thiểu hàm chi phí
### 4.2. Một số thuật toán khác dùng để tối ưu hàm chí
  - Conjugate gradient
  - Sử dụng công thức chuẩn: $\theta = (X^TX)^{-1}X^Ty$
  - BFGS
  - L-BFGS
### 4.3. Vấn đề overfitting
  - Một số khái niệm cần chú ý
    - bias: độ lệch giữa dự đoán và thực tế
    - variance: độ phân tán giá trị
  - Mong muốn: low bias và low variance
  - Hiện tượng: hàm giả thuyết quá vừa vặn trên tập huấn luyện nhưng lại có sai số lớn khi dự đoán một mẫu mới không thuộc tập huấn luyện
  - Hướng giải quyết:
    - Giảm số lượng đặc trưng, giữ lại những đặc trưng quan trọng, lựa chọn thuật toán khác
    - Sử dụng phương pháp Regularization để giữ lại tất cả các đặc trưng, giảm giá trị của tham số $\theta$
  #### 4.3.1 Regularization
  - Mục đích sử dụng:
    - Giảm giá trị của các tham số $\theta$
    - Đơn giản hóa hàm giả thuyết
    - Giảm hiện tượng overfitting
  - Bài toán hồi quy:
    - Hàm chi phí: $J(\theta) = \frac{1}{2m}[\sum_{i=1}^m(h_\theta(x^i) - y_i)^2 + \lambda\sum_{j=1}^n \theta_j^2] $
    - Gradient descent: $ \theta_j := \theta_j(1 - \alpha \frac{\lambda}{m}) -\alpha\frac{1}{m}\sum_{i=1}^m(h_\theta(x^i)- y^i)x_j^i$
  - Bài toán phân loại
      - Hàm chi phí: $J(\theta) = -[\frac{1}{m}\sum_{i=1}^m (y^ilogh_\theta(x^i)+ (1-y^i)log(1-h_\theta(x^i))) + \frac{\lambda}{2m}\sum_{j=1}^n\theta_j^2] $
      - Gradient descent: $ \theta_j := \theta_j - \alpha[\frac{1}{m} \sum_{i = 1}^m(h_\theta(x^i)- y^i)x_j^i + \frac{\lambda}{m}\theta_j] $
  - Lưu ý:
    - $\lambda$ là hệ số regulazation
    - nếu $\lambda$ quá lớn sẽ gây hiện tượng underfitting
    - nếu $\lambda$ quá nhỏ sẽ gây hiện tượng overfitting

  #### 4.3.2 Non-linear
  - Đây là vấn đề mở rộng của bài toán hồi quy tuyến tính với đặc tính đầu ra bám theo 1 đường tuyền tính => hồi quy phi tuyến với đặc tính đầu ra bám theo đường phi tuyến và bài toán hồi quy logistic (phân loại nhị phân) với đường phân chia tuyến tính => bài toán phân loại nhị phân với đường phân chia phi tuyến. Phần này em có thể tổng kết ngắn gọn trong 2-3 gạch đầu dòng.


# **II. Các vấn đề hiện đại thuộc học có giám sát**
- Phần NN là vấn đề hiện đại em chuyển xuống đây. Em nêu 1 số ý anh gợi mở như sau để mình nhớ lâu và đi vào bản chất
  - Tại sao cần thiết phải mô tả bài toán với dạng mô hình mới so với mô hình kinh điển (hàm giả thuyết) trong thế giới hiện đại ngày nay.
  - Tại sao vấn đề này đã được nghiên cứu những giữa những năm thế kỷ trước giờ lại nở rộ thành trào lưu như hầu như bài toán nào cũng ném vào deep learning
  - Mô tả mô hình NN
  - Mục tiêu tối ưu với mô hình mới NN là gì
  - Cách triển khai thuận và nghich phục vụ cho quá trình tối ưu (quá trình học) diễn ra ntn
- Vấn đề hiện đại tiếp theo là phương pháp SVM
  - Nó là phương pháp tiên tiến phục vụ cho bài toán phân loại vậy ưu điểm nó là gì ? sao giờ mới nghĩ đến nó?
  - Triết lý SVM là gì cách giải quyết nó ra sao nêu các bước ? (đặc biệt là giải quyết tốt bài toán phân loại với đường phân chia phi tuyến)

# **III. Giải quyết các bài toán ML có giám sát**
- Định hướng khi giải quyết bài toán ML gặp phải (nêu ra thuộc bài 10)
- Khi định hướng rồi bắt tay vào làm cần chú ý gì khi thiết kế (nêu ra thuộc bài 11)

