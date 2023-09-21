import
  nimib,
  nimiSlides,
  strutils

nbInit(theme=revealTheme)
setSlidesTheme(Dracula)

template YellowTheme*() =
  setSlidesTheme(Black)
  let yellow = "#FFE953"
  nb.addStyle: """
:root {
  --r-background-color: #181922;
  --r-heading-color: $1;
  --r-link-color: $1;
  --r-selection-color: $1;
  --r-link-color-dark: darken($1 , 15%)
}

.reveal ul, .reveal ol {
  display: block;
  text-align: left;
}

li::marker {
  color: $1;
  content: "»";
}

li {
  padding-left: 12px;
}
""" % [yellow]

YellowTheme()

footer: "Let's install and play!! : https://github.com/KerorinNorthFox/MineSweeper_on_CLI"

# 冒頭
slide:
  nbText: "## CLIマインスイーパー"
  nbText: "徳山高専 中谷政登"

# ゲーム説明
slide:
  slide(slideOptions(autoAnimate=true)):
    nbText: "## どんなゲーム？"
  slide(slideOptions(autoAnimate=true)):
    nbText: "## どんなゲーム？"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/climinesweeper.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "## どんなゲーム？"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/climinesweeper.png?raw=true")
    nbText: "CLIでサクッと遊べるマインスイーパー"

let conceptText = "そしてこのアプリのコンセプトは、すぐ遊べる、すぐ終われる、軽いの三つで、とにかく手軽に遊べて暇をつぶすことができることを第一に開発しました。"
let whyMadeText = "次に作った理由ですが、自分がマインスイーパーが大好きで、作業途中に気分転換にパッと遊べる簡単なゲームが欲しかったのが主な理由で、さらにマインスイーパーは作るのが難しいということを耳にして挑戦してみたいと思ったのが作るきっかけでした。。"
# コンセプト＆動機説明
slide:
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
    nbText: ">爆速起動！！"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
    nbText: ">爆速起動！！"
    nbText: ">爆速終了！！"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
    nbText: ">爆速起動！！"
    nbText: ">爆速終了！！"
    nbText: ">軽い！！"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
    nbText: ">爆速起動！！"
    nbText: ">爆速終了！！"
    nbText: ">軽い！！"
    nbText: "→操作のシンプルさに重点を置いて実装"

  slide(slideOptions(autoAnimate=true)):
    speakerNote(whyMadeText)
    nbText: "## なんで作ったの？"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(whyMadeText)
    nbText: "## なんで作ったの？"
    unorderedList:
      listItem:
        nbText: "マインスイーパーが大好き！"
      listItem:
        nbText: "暇つぶしにパッと遊べるゲームが自分の環境に欲しかった"
      listItem:
        nbText: "マインスイーパー開発は難しいらしい？"

# 技術的な説明
slide:
  slide(slideOptions(autoAnimate=true)):
    nbText: "## 使用言語"
  slide(slideOptions(autoAnimate=true)):
    nbText: "## 使用言語"
    fitImage("https://s3.ap-northeast-1.amazonaws.com/wraptas-prod/jij/f00f1033-3a07-4726-b91e-07a38fc2ad8a/1a09f5e57ca7eae2cb720dbb3fd35516.png")
    nbText: "# Nim言語"

  slide(slideOptions(autoAnimate=true)):
    nbText: "## なんでNim?"
  slide(slideOptions(autoAnimate=true)):
    nbText: "## なんでNim?"
    unorderedList:
      listItem:
        nbText: "一番の推し言語"
      listItem:
        nbText: "Nimの特徴がコンセプトに合っている"
      listItem:
        nbText: "文法が自由で面白い"

  slide(slideOptions(autoAnimate=true)):
    nbText: "## Nimの特徴、一言で表すと"
  slide(slideOptions(autoAnimate=true)):
    nbText: "## Nimの特徴、一言で表すと"
    nbText: "## 書きやすくなったC言語"
  slide(slideOptions(autoAnimate=true)):
    nbText: "## Nimの特徴、一言で表すと"
    nbText: "## 書きやすくなったC言語"
    nbText: "Pythonのような文法、C言語並みの速さ"

# 遊び方冒頭
slide:
  speakerNote("次に遊び方です。")
  nbText: "## 遊び方"

# 起動と終了
let begin = "このゲームは手軽さを売りにしているので爆速でゲームの起動して終了することができます。"
slide:
  slide(slideOptions(autoAnimate=true)):
    speakerNote(begin)
    nbText: "#### コマンドを打つだけですぐに始められる！"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/start.gif?raw=true")
  slide(slideOptions(autoAnimate=true)):
    speakerNote(begin)
    nbText: "#### コマンドを打つだけですぐに始められる！"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/start.gif?raw=true")
    nbText: "一瞬で起動、一瞬で終了"

# 簡易セーブ機能の説明
slide:
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### 簡易セーブ機能を実装！"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/save.gif?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### 簡易セーブ機能を実装！"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/save.gif?raw=true")
    nbText: ""

# オプションの説明
slide:
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてストレスフリーな暇つぶしを！"
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてストレスフリーな暇つぶしを！"
    adaptiveColumns:
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/20_cmd.png?raw=true")
        nbText: "難易度を調整"
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/20.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてストレスフリーな暇つぶしを！"
    adaptiveColumns:
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/noColor_cmd.png?raw=true")
        nbText: "色無し"
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/noColor.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてストレスフリーな暇つぶしを！"
    adaptiveColumns:
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/continue10_cmd.png?raw=true")
        nbText: "コンティニュー回数を調整"
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/continue10.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてストレスフリーな暇つぶしを！"
    adaptiveColumns:
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/infinite_cmd.png?raw=true")
        nbText: "無限コンティニュー！"
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/infinite.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてストレスフリーな暇つぶしを！"
    adaptiveColumns:
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/10noColorContinue10_cmd.png?raw=true")
        nbText: "複数のオプションを組み合わせる"
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/10noColorConitnue10.png?raw=true")

# アニメーションの説明
slide:
  slide(slideOptions(autoAnimate=true)):
    nbText: "## アニメーション！"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/boom_animation.gif?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "## アニメーション！"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/boom_animation.gif?raw=true")
    nbText: "視覚的に楽しく"

slide:
  nbText: "## ご清聴ありがとうございました！！"

# slide:
#   fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/boom_animation.gif?raw=true")


nbSave()
