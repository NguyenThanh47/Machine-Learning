# **I.Các khái niệm ban đầu**

    1. Khái niệm: Một chương trình máy tính được cho là học hỏi từ trải nghiệm E đối với một số loại nhiệm vụ T và thước đo hiệu suất P, nếu hiệu suất của nó ở các nhiệm vụ trong T, được đo bằng P, cải thiện theo trải nghiệm E

    2. Nhiệm vụ T:
        + nếu đầu ra vô hạn, liên tục => bài toán hồi quy
        + nếu đầu ra hữu hạn, rời rạc => bài toán phân loại

    3. Kinh nghiệm E: 
        + học giám sát: có đầu ra rõ ràng
        + học không giám sát: không có đầu ra rõ ràng

    4. Đánh giá P: 
        + học có giám sát: tối ưu hàm chi phí để tìm ra mô hình
        + học không có giám sát: tối ưu để phân cụm dựa vào đặc trưng đầu vào

    5. Lưu ý
        + phân loại dựa vào y
        + phân cụm dựa vào x 

# **II. Bài toán học có giám sát**
##**1. Các ký hiệu**
- Số lượng mẫu huấn luyện : m
- Số lượng đặc trưng : n
- $(x^i, y^i)$: đầu vào, đầu ra của mẫu huấn luyện thứ i
- Tham số : $\theta$

## **2. Bài toán hồi quy**
1. hàm giả thuyết:  $ h_\theta (x) = \theta^Tx = \theta_0 + \theta_1x_1 + \theta_2x_2 + ... + \theta_nx_n$
2. hàm chi phí: $ J(\theta) = \frac{1}{2m}\sum_{i=1}^m(h_\theta(x^i) - y_i)^2$
3. gradient descent: $ \theta_j := \theta_j - \alpha \frac{\partial}{\partial\theta_j}J(\theta)$

## **3. Bài toán phân loại**
1. hàm giả thuyết: 
- $ h_\theta(x) = \frac{1}{1+ e^{-\theta^Tx}} $
- dự đoán y = 1 nếu $h_\theta(x) \ge 0.5$ và y = 0 nếu $h_\theta(x) \le 0.5$
2. hàm chi phí: $J(\theta) = \frac{-1}{m} [ \sum_{i=1}^m y^ilogh_\theta(x^i)+ (1-y^i)log(1-h_\theta(x^i))]$
3. gradient descent: $ \theta_j := \theta_j - \alpha \frac{\partial}{\partial\theta_j}J(\theta) $
với $\frac{\partial}{\partial\theta_j}J(\theta) = \frac{1}{m}\sum_{i=1}^m(h_\theta(x^i)- y^i)x_j^i$


