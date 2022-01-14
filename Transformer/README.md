# HE-Transformer 구현을 위한 평문 Transformer 구현
HE-Transformer는 동형암호화된 문장에 대해 번역 기능을 복호화 없이 수행할 수 있는 번역기 모델이다. 제안 HE-Transformer의 구조는 기본적으로 Original Transformer를 따르지만, 동형암호화된 입력에 대해서 구동되기 위해서 주요 기능이 변형되어 구현된다.

동형암호는 암호화된 데이터를 복호화 없이 연산이 가능한 4세대 암호이다. 복호화 과정이 필요없기 떄문에 데이터 프라이버시를 보존할 수 있다.
기계 학습에서는 실수 연산이 대부분 사용되므로 실수 연산을 효율적으로 할 수 있는 CKKS가 적합하다고 판단하여 CKKS 동형암호 방법을 사용한다.
 
##HE-Transformer_Pytorch(english_to_germa)##

HE-Transformer 구현을 위한 
