# 從 [Docker Hub](https://hub.docker.com/) 安裝 Node.js image。
FROM hyperledger/fabric-peer:x86_64-0.6.1-preview

# 設定 container 的預設目錄位置
WORKDIR /Sample

# 將專案根目錄的檔案加入至 container
# 安裝 npm package
ADD . /Sample

CMD cd Sample1 && go build && cd .. && cd Sample2 && go build && cd .. && cd Sample3 && go build && cd .. && cd Sample4 && go build && cd .. && cd Sample5 && go build && cd .. 
