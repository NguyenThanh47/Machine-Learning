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
- Hàm giả thuyết:  $ h_\theta (x) = \theta^Tx = \theta_0 + \theta_1x_1 + \theta_2x_2 + ... + \theta_nx_n$
- Hàm chi phí: $ J(\theta) = \frac{1}{2m}\sum_{i=1}^m(h_\theta(x^i) - y_i)^2$
- Gradient descent: $ \theta_j := \theta_j - \alpha \frac{\partial}{\partial\theta_j}J(\theta)$

## 3. Bài toán phân loại
- Hàm giả thuyết:
  - $ h_\theta(x) = \frac{1}{1+ e^{-\theta^Tx}} $
- Dự đoán y = 1 nếu $h_\theta(x) \ge 0.5$ và y = 0 nếu $h_\theta(x) \le 0.5$
- Hàm chi phí: $J(\theta) = \frac{-1}{m} [ \sum_{i=1}^m y^ilogh_\theta(x^i)+ (1-y^i)log(1-h_\theta(x^i))]$
- Gradient descent: $ \theta_j := \theta_j - \alpha \frac{\partial}{\partial\theta_j}J(\theta) $
với $\frac{\partial}{\partial\theta_j}J(\theta) = \frac{1}{m}\sum_{i=1}^m(h_\theta(x^i)- y^i)x_j^i$

## 4. Bàn thêm vấn đề nâng cao
- Ngoài GD thì còn phương pháp nào ?
- Để thực hiện thuật toán GD tốt hơn cần quan tâm những yếu tố nào ?
- Vấn đề overfitting + non-linear (polynominal) (để buổi sau bổ sung)

# **II. Các vấn đề hiện đại thuộc học có giám sát**
(Để buổi sau bổ sung)