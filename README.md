hologram_ui_light
==

## Features

- [ちぇん](https://github.com/ChenCMD)氏の[MCCMD-HologramUI](https://github.com/ChenCMD/MCCMD-HologramUI)を参考に1から作ったもの。~~パクりともいう~~

### 本家との違い

- 機能削減をして軽量化(計測はしていないので本当は軽くなってないかもしれません)
- 設定項目の単純化
  - 細かい位置の調整ができない
  - 文字にItemを指定できない
  - ItemはHologram毎に最大1つまで
  - ItemのみのHologramを作成できない
- 文字列表示の単純化
  - 文字毎に1エンティティではなくHologram毎に1エンティティ(アイテムを指定した場合は2エンティティ)
- アンダーライン表示の単純化(文字ごとではなくHologram毎に1つ)
  - 長い文字列をすべてカバーできない
- 選択中のHologramを視線トレースではなくexecute幾何学式で検知する
  - これ自体は軽量化になっているかどうかは不明
  - コマンド数は減る
- 左クリック検知ではなく右クリック検知
  - 左クリックだと検知用エンティティの無敵時間中は操作できないため
  - スライムを使用しないことにより毎tickNBT操作を回避する
    - 右クリック検知用エンティティとして wandering_trader を使用しています
      - 村人だと種を拾っちゃうっぽいので
- HologramUIを起動中のみエンティティを配置する
- プレイヤーがHologramUIを操作中は**そのHologramUI**を他のプレイヤーは操作できない


### 独自機能や制約

- 操作するプレイヤーは固定されます
- スニークすることでいつでも強制終了できます
- Hologramは横9x縦5のグリッドに配置されます
  - Hologramは最大45個です
- HologramにIDを割り当てると選択可能になる
  - 逆に言えばIDを割り当てなければ選択不可能になる
- ワールドに複数のbasepointを設定する場合は20ブロック以上離したほうが無難です
  - 近いと別のbasepointに固定される可能性があります

###### イメージ図
||||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|0|1|2|3|4|5|6|7|8|
|9|10|11|12|13|14|15|16|17|
|18|19|20|21|22|23|24|25|26|
|27|28|29|30|31|32|33|34|35|
|36|37|38|39|40|41|42|43|44|

### 用語

|name|description|
|:-:|:-:|
|HologramUI|Hologram User Interfaceの略だが、Hologramを選択して任意のコマンドを実行するプログラム(システム)の名前として使っていることがある|
|basepoint|HologramUIを操作するプレイヤーを固定する位置、またはそれを示すmarker entity|
|Hologram|HologramUIに表示されているホログラム|
|HologramID|Hologramに割り当てられているID、重複可能|
|メニュー|HologramUIに表示するHologramを決定するためのデータ(?)|
|メニューID|`score @s hologram_ui_light.menu_id`|
|default_menu_id|HorogramUI起動時に表示されるメニューID|
|operator|1. `advancement hologram_ui_light:operator`<br>2. HologramUIを操作中のプレイヤー|

### イベントハンドラ

#### `tag/function #hologram_ui_light:selected_hologram`

- Hologram選択時に呼ばれます
- `score @s hologram_ui_light.id`の値に応じて任意のコマンドを実行してください
- メニューの遷移を行うにはここで`score @s hologram_ui_light.menu_id`を変更してください
- HologramUIを終了するには`tag/function #hologram_ui_light:destroy`を呼んでください

#### `tag/function #hologram_ui_light:load_menu`

- メニュー表示処理中に呼ばれます
- `score @s hologram_ui_light.menu_id`の値に応じて`storage : _[-1].menu`にメニューを代入してください

#### `tag/function #hologram_ui_light:created`

- 初期化完了時に呼ばれます。ほぼ演出用です
- 起動音を鳴らすとそれっぽくなります
- (不完全ですが)[#2](https://github.com/a-happin/hologram_ui_light/issues/2)の修正に利用できます

#### `tag/function #hologram_ui_light:destroyed`

- HologramUI終了時に呼ばれます。ほぼ演出用です
- 終了音を鳴らすとそれっぽくなります
- (不完全ですが)[#2](https://github.com/a-happin/hologram_ui_light/issues/2)の修正に利用できます


### menuの構造

`<key>: <型> (デフォルト値)`

```
menu: Compound[] (null)
├ text: Optional<String of TextComponent> (null)
│ 表示されるテキストをJSONを文字列化した形式で指定します
│ 例: '{"text": "hello"}'
│
├ id: Optional<int> (null)
│ HologramID。重複可能
│ このHologramを選択した際に`score @s hologram_ui_light.id`にこの値が入ります
│ 指定しなかった場合はこのHologramは選択不可能になります
│ 例: 100
│
└ Item: Optional<Compound> (null)
   ├ id: ItemID
   │ 表示するアイテム。Hologramの近くに表示されます。細かい位置調整はできません。
   │ 例: "minecraft:ice"
   └ tag: NBT (null)
```

## Usage

### 下準備

#### basepointを設定する

プレイヤーを固定したい位置にbasepointを召喚します
```mcfunction
## 南向きの場合
summon marker ~ ~ ~ {Tags:["hologram_ui_light.basepoint"]}
execute as @e[type=marker,tag=hologram_ui_light.basepoint,distance=..0.01] align xz positioned ~0.5 ~ ~0.5 rotated 0 0 run teleport @s ~ ~ ~ ~ ~
```

- `hologram_ui_light:summon/basepoint/`を使うと便利です
  - これをチャット欄から実行するとプレイヤーの立っているブロックのxzの中心に向きを東西南北に補正して召喚します


#### `default_menu_id`を設定する (任意)

basepointの`data.default_menu_id`に起動時に表示されるメニューIDを設定します
```mcfunction
## 0 に設定する場合
data modify entity @e[type=marker,tag=hologram_ui_light.basepoint,sort=nearest,limit=1] data.default_menu_id set value 0
```

- しなくても大丈夫です(しない場合は0)

#### イベントハンドラにfunctionを登録します

- メニューやアクション登録用のデータパックを用意します
- ⚠ `namespace hologram_ui_light` 内ではイベントハンドラ以外のファイルを作成しないでください

#### operatorを付与する

HologramUIを操作したいプレイヤーを対象に

```mcfunction
advancement grant @s only hologram_ui_light:operator
```

を実行します

- そのプレイヤーの近くのbasepointに固定されます
- basepointが10ブロックより離れていると検知に失敗するので注意してください
- basepointの近くの石のボタンを押したプレイヤーを対象に～みたいなのを想定してます

#### その他
1. 壁として、2～3ブロック程度離して黒系のブロックを置いたほうがいいかもしれません

## Requirement

- Minecraft JE 1.18.2
- [player_event](https://github.com/a-happin/player_event)

## Installation

## License
Creative Commons Zero v1.0 Universal
