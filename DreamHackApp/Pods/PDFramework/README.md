# PDFramework

`PDFramework`は，P&DのためのiOS用フレームワークです．

## インストール
PDFrameworkは[CocoaPods](http://cocoapods.org)または[Carthage](https://github.com/Carthage/Carthage)で
インストールすることができます．

```ruby
# Podfile
pod "PDFramework", :git => 'https://gitlab.planningdev.com/planningdev/iOS_PDFramework.git'
```

```ruby
# Cartfile
git "https://gitlab.planningdev.com/planningdev/iOS_PDFramework.git"
```

## 概要

### Custom Classes
+ AutoSync
  クロージャの中をスレッドセーフで処理するためのクラス
+ PDAlert
  アラートビューを簡単に使うための機構
+ PDTextField
  IB上で諸々設定できるようにしたUITextField
+ PDUtility
  - `isConnectNetwork()`: ネットワークの接続確認
  - `webTo(url: NSURL, presentingViewController: UIViewController? = nil)`: 指定URLへのブラウザアクセス

### Extensions
+ Bool
  - 'toggle()': true ⇔ false の切り替え
+ Dictionary
  - `convertToQuery()`: [String: AnyObject]を"key=value&..."に変換
+ NSDate
  NSDate用の比較演算子
+ NSThread
  - `afterDelay(delayTime: Double, handler: ()->Void`: GCDによる時間遅延処理
  - `onMainQueue(handler: ()->Void)`: メインキューでの処理
  - `onConcurrentQueue(handler: ()->Void)`: コンカレントキューでの処理
  - `onSerialQueue(handler: ()->Void)`: シリアルキューでの処理
+ NSURL
  - `parseParams()`: "key=value&..."をDictionaryに変換
+ SequenceType
  - `forEach(other: U, body: (Element, Element))`: 別のSequenceTypeオブジェクトも同時にforEachに掛ける
  - `map(other: T, transform: (Element, Element))`: 別のSequenceTypeオブジェクトも同時にmapに掛ける
  - `wFor(other: T, transform: (Element, Element))`: selfとotherの2重ループ
+ String
  - `urlEncodedString`: URLエンコード
  - `urlDecodedString`: URLデコード
+ UIApplication
  - `topViewController(base: UIViewController?)`: baseに設定されたVCをを基に最前面のVCを取得
+ UIColor
  - Int指定(0~255)での初期化
  - Hex指定(UInt32 or String)での初期化
  - `getRandomColor(alpha: CGFloat = 1.0)`: ランダムに色を取得
+ UIImageView
  - `init(superViewFrame: CGRect, imageName: String)`: 画像が横幅にフィットするようにサイズ調整して初期化
  - `init(imageName: String)`: 画像名から初期化
+ UIView
  - IBから枠線，角丸をしてできるように拡張
  - `cornerRadius(roundingCorners: UIRectCorner, radius: CGFloat)`: 部分的に角丸にする

## ライブラリに関する質問等
バグや機能のリクエストがありましたら，気軽にコメントしてください．

## リリースノート
- 1.0.0 : 初期版リリース

## ライセンス
PDFrameworkの所有権はP&Dに帰属します．
