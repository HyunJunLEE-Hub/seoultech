# Transformer
논문 제목 : "Attention Is All You Need" 링크 : https://arxiv.org/pdf/1706.03762.pdf%EF%BC%89%E6%8F%8F%E8%BF%B0%E4%BA%86%E8%BF%99%E6%A0%B7%E5%81%9A%E7%9A%84%E5%8E%9F%E5%9B%A0%E3%80%82

트랜스포머(Transformer)는 "Attention is all you need"에서 나온 모델로 기존의 seq2seq의 구조인 인코더-디코더를 따르면서 어텐션(Attention)만으로 구현한 모델이다.   
RNN을 사용하지 않고, 인코더-디코더 구조를 설계하였음에도 성능도 RNN보다 우수하다는 특징을 갖고 있다.

# HE-Transformer 구현을 위한 평문 Transformer 구현 #
HE-Transformer는 동형암호화된 문장에 대해 번역 기능을 복호화 없이 수행할 수 있는 번역기 모델이다.   
HE-Transformer의 구조는 기본적으로 Original Transformer를 따르지만, 동형암호화된 입력에 대해서 구동되기 위해서 주요 기능이 변형되어 구현된다.

동형암호는 암호화된 데이터를 복호화 없이 연산이 가능한 4세대 암호이다. 복호화 과정이 필요없기 떄문에 데이터 프라이버시를 보존할 수 있다.   
기계 학습에서는 실수 연산이 대부분 사용되므로 실수 연산을 효율적으로 할 수 있는 CKKS [1] 가 적합하다고 판단하여 CKKS 동형암호 방법을 사용한다.

CKKS는 덧셈과 곱셈 연산만을 지원하기 떄문에 비선형 활성화 함수인 Softmax나 ReLU 를 직접적으로 연산할 수 없다.   
그래서 HE-Transformer에서는 Softmax 함수 연산을 회피해 Logit 값을 그대로 사용하고 최대값을 구하는 것으로 연산을 대체한다.    
ReLU 함수는 [2] 의 방법을 참고하여 제곱 함수로 근사한다.   

HE-Transformer는 코드는 공개 할 수 없으며 전체적인 과정은 아래의 논문으로 설명한다.   
공학석사 학위논문, 동형암호를 사용한 프라이버시 보존 기계 번역 (22.02)

## HE-Transformer_Pytorch(English_to_Germa) ##
#### HE-Transformer 구현을 위한 가중치 학습 ####
기계 번역 모델은 학습 과정에서 번역하고자 하는 데이터에 대한 중요 내용을 내포하고 있지 않다.
그래서 모델을 평문에서 학습해도 사용자가 번역하고자 하는 문장에 대해 알 수 없기에 평문에서 학습해도 무방하다.   

HE-Transformer를 사용하기 위해 평문 Transformer에서 학습할 떄도 Softmax 및 ReLU 함수의 연산을 회피하거나 근사한다.

CKKS 곱셈의 결과 암호문들은 각 슬롯에 노이즈와 함께 결과값이 출력된다. 연속적인 연산을 하게 되면 노이즈가 결국 암호문 전체에 영향을 주게 되어 복호화를 하지 못한다. 이러한 문제를 동형암호는 Bootstrapping 연산 [3] 을 통해 해결한다.
CKKS에서의 Bootstrapping 연산은 슬롯의 값이 10 이상에서는 연산이 작동하지 않기 때문에 Logit 값에 0.01, 제곱 함수 전에 0.1을 곱해 슬롯 값을 10보다 작게 만들어 준다.

## 평문 HE-Transformer ##
실제로 학습한 HE-Transformer_Pytorch(English_to_Germa)의 가중치를 가지고 Data Frame으로 Transformer를 구현

HE-Transformer의 중간 연산값을 비교하기 위한 코드




## 참고 문헌 ##
[1] Cheon, J. H., Kim, A., Kim, M., & Song, Y. (2017, December). Homomorphic encryption for arithmetic of approximate numbers. In International Conference on the Theory and Application of Cryptology and Information Security (pp. 409-437). Springer, Cham.

[2] Gilad-Bachrach, R., Dowlin, N., Laine, K., Lauter, K., Naehrig, M., & Wernsing, J. (2016, June). Cryptonets: Applying neural networks to encrypted data with high throughput and accuracy. In International conference on machine learning (pp. 201-210). PMLR.

[3] Gentry, C. (2009, May). Fully homomorphic encryption using ideal lattices. In Proceedings of the forty-first annual ACM symposium on Theory of computing (pp. 169-178).


