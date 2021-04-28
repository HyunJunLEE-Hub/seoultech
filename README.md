# AutoStockTrade
여기서 사용된 파이썬 버전은 3.8 32bit입니다.

AutoTrade.py

크레온API를 사용하여 주식 자동매매를 실행하고 그 결과를 slack bot을 활용하여 알림을 받을 수 있게 하는 과정입니다.

자동매매에 대한 알고리즘은 변동성 돌파전략을 사용했으며 수수료를 고려하여 주식보다는 ETF 상품에 초점을 맞춰져 있습니다.

시간은 LP(유동성 공급자) 활동시간(09:05 ~ 15:20)에 맞춰져 있으며 주문 호가는 최유리 FOK 방식을 사용했습니다.

1. 최유리 : 당장 가장 유리하게 매매할 수 있는 가격

2. 최우선 : 우선 대기하는 가격

3. IOC : 체결 후 남은 수량 취소

4. FOK : 전량 체결되지 않으면 주문 자체를 취소

AutoConnect.py

매번 로그인을 하지않도록 자동으로 로그인이 되며

작업스케줄러를 통해서 위의 과정 모두 자동화가 가능합니다.

# Homomorphic Encryption(pi-HEaaN)
pi-HEaaN에 대한 튜토리얼을 따로 정리한 코드입니다.

# Sentiment analysis

R 라이브러리를 사용해 싫어요 대비 좋아요가 더 많은 기준으로 네이버 다음 각 언론사 별 상위 100개를 추출합니다.

추출 한 후 감성 분석을 통해서 보수 진보를 구별 한 후 각 언론사 별 구독자 성향을 조사할 수 있습니다.


# selenium
"관심있는 이미지"에 대한 검색을 하고 검색한 이미지를 수집하는 코드입니다. 
