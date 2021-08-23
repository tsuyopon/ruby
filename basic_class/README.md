# 概要
rubyで押さえておくべき規則


# 詳細

### 記法
- 小文字または\_で始まる識別子
  - ローカル変数またはメソッド呼びだし
- アルファベットの大文字で始まる識別子
  - 定数
- @で始まる変数
  - インスタンス変数（特定のオブジェクトに所属し、そのクラスまたはサブクラスのメソッドから参照できる）
- @@で始まる変数
  - クラス変数（クラス定義の中で定義され、クラスの特異メソッド、インスタンスメソッドなどから参照・代入できる）
- $で始まる変数
  - グローバル変数（宣言なしでコードのどこでも利用できる）