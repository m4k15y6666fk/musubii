<p align="center">
<br/>
    <img src="https://i.gyazo.com/fe915845b753d96c6d539022049e7a02.png" width="90"/>
</p>

# MUSUBii

<p>
  <a aria-label="Made by QRANOKO" href="https://qranoko.jp">
    <img src="https://img.shields.io/badge/MADE%20BY%20QRANOKO-212121.svg?style=for-the-badge&labelColor=212121">
  </a>
  <a aria-label="NPM version" href="https://www.npmjs.com/package/musubii">
    <img alt="" src="https://img.shields.io/npm/v/musubii.svg?style=for-the-badge&labelColor=212121">
  </a>
  <a aria-label="License" href="https://github.com/qrac/musubii/blob/master/LICENSE">
    <img alt="" src="https://img.shields.io/npm/l/musubii.svg?style=for-the-badge&labelColor=212121">
  </a>
</p>

## Site & Documentation

- https://musubii.qranoko.jp

## About

_「腹が減ってはコードが書けぬ」_

Web デザインの腹ごなしに、CSS フレームワーク「MUSUBii（むすびー）」をどうぞ。MUSUBii は、日本語サイトのデザイン・コーディングを元気づける薄味のレスポンシブ対応 CSS フレームワークです。

- OOCSS を応用したラフな設計
- 日本語フォントの利用を想定
- JavaScript 未使用

## Detail

### Markup

要素 `.(xxxx)` 1 つに対して、状態 `.is-(xxxx)` を複数追加してスタイリングするのが基本です。また、すべてのクラス名は英小文字・数字・ハイフン 1 つで構成されています。

### Layers

CSS のレイヤーは大きく 4 つに分類。「下地にレイアウトを組んでボタンやテキストを置いたら調整する」使い方です。実務で固有のスタイルとなる `components` や `pages` が加わることも想定しています。

| Layer       | Detail                           |
| ----------- | -------------------------------- |
| `bases`     | 文字色などの下地                 |
| `layouts`   | セクション・グリッドシステムなど |
| `elements`  | ボタン・テキスト・フォームなど   |
| `utilities` | 調整用モディファイア             |

### Responsive

CSS は 5 つの画面サイズで可変できるレスポンシブウェブデザインになっています。

| Name      | Value            |
| --------- | ---------------- |
| `mobile`  | `~ 575px`        |
| `fablet`  | `576px ~ 767px`  |
| `tablet`  | `768px ~ 991px`  |
| `desktop` | `992px ~ 1199px` |
| `wide`    | `1200px ~`       |

### Unit

CSS の単位は em と px を採用。エレメントの大きさをフォントサイズ変更で一括調整できます。また、すべての値には 16 を割れる数値を用いているため、サイズ変更を行った場合に割り切れない端数が出づらくなっています。

### File size

出力される [CSS ファイル](https://github.com/qrac/musubii/blob/master/dist/musubii.min.css) の容量は [Bootstrap](https://github.com/twbs/bootstrap/blob/master/dist/css/bootstrap.min.css)・[Bulma](https://github.com/jgthms/bulma/blob/master/css/bulma.min.css) の半分以下で、82KB 程度です。

## Install

- [musubii - npm](https://www.npmjs.com/package/musubii)

```
npm install musubii
```

## Support

日本で多く使われているブラウザを基準にバグフィックスを行なっています。

| Chrome | Firefox | IE    | Ege    | Safari(Mac) |
| ------ | ------- | ----- | ------ | ----------- |
| Newest | Newest  | \*11~ | Newest | Newest      |

| Safari(iOS) | Chrome(Android) | Browser(Android) |
| ----------- | --------------- | ---------------- |
| Newest      | Newest          | \*4.4~           |

- \*SCSS で CSS Variables を有効化した場合、 IE11・Android Browser では色プロパティが認識されなくなります。[Ponyfill](https://jhildenbiddle.github.io/css-vars-ponyfill/#/) の導入を検討してください。
- \*PostCSS の設定によっては IE11・Android Browser が非対応となります

## License

- CC0 1.0 Public Domain

## Credit

- Author: [Qrac](https://qrac.jp)
- Organization: [QRANOKO](https://qranoko.jp)
