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
const start: string = "それでは今からCLIマインスイーパーの発表を始めます。"
slide:
  speakerNote(start)
  nbText: "## CLIマインスイーパー"
  nbText: "徳山高専 機械電気工学科四年 中谷政登"

# ゲーム説明
const explain: string = "まず「どんなゲーム？」というところなんですが、アプリ名の通りCLIで手軽に遊べるマインスイーパーです。プレイ中の画像はこのような感じです。"
slide:
  slide(slideOptions(autoAnimate=true)):
    speakerNote(explain)
    nbText: "## どんなゲーム？"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(explain)
    nbText: "## どんなゲーム？"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/climinesweeper.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    speakerNote(explain)
    nbText: "## どんなゲーム？"
    fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/climinesweeper.png?raw=true")
    nbText: "CLIでサクッと遊べるマインスイーパー"

let conceptText = "そしてこのアプリのコンセプトなんですがそれは、すぐに起動できる、一瞬で終了、軽いの三つで、とにかく暇つぶしや気分転換のために手軽に遊べる簡単さとシンプルさを第一に開発しました。"
let whyMadeText = "次に作った理由ですが、まず主な理由としては私自身が作業途中に気分転換としてパッと遊べる簡単なゲームが欲しかったというのがあります。また、私がマインスイーパーが大好きで、小学生の頃によくwindows7にインストールされていたマインスイーパーを遊んでいました。さらにマインスイーパーは作るのが難しいということを以前耳にしたことがあったため挑戦してみたいと思ったのが作るきっかけでした。"
# コンセプト＆動機説明
slide:
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
    nbText: ">すぐに起動！！"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
    nbText: ">すぐに起動！！"
    nbText: ">一瞬で元の作業に戻れる！！"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
    nbText: ">すぐに起動！！"
    nbText: ">一瞬で元の作業に戻れる！！"
    nbText: ">軽い！！"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(conceptText)
    nbText: "## コンセプトはこれだ！！"
    nbText: ">すぐに起動！！"
    nbText: ">一瞬で元の作業に戻れる！！"
    nbText: ">軽い！！"
    nbText: "→急いでる人でも楽しめるシンプルさに重点を置いて実装"

  slide(slideOptions(autoAnimate=true)):
    speakerNote(whyMadeText)
    nbText: "## なんで作ったの？"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(whyMadeText)
    nbText: "## なんで作ったの？"
    unorderedList:
      listItem:
        nbText: "暇つぶしにパッと遊べるゲームが自分の環境に欲しかった"
      listItem:
        nbText: "マインスイーパーが大好き！"
      listItem:
        nbText: "マインスイーパー開発は難しいらしい？"

# 技術的な説明
const tech: string = "次に技術レベルに対するアピールですが、使用言語が特徴的です。言語にはNimという比較的マイナーな言語を使用しています"
const whyNim: string = "他にもいろいろ言語がある中なんでNimを使用したかというと、まず、私の一番の推し言語というのが最大の理由というか全体の8割がこの理由です。ちなみにこのスライドもNimを使って作られています。また、後で紹介しますがNimの特徴というものがコンセプトに合っているという点があります。さらに一つ目の理由にも関連しますが文法が面白いということも気分的に重要だったりします。"
const nimFeature: string = "そして先ほど出てきたNimの特徴ですが、一言で表すと「描きやすくなったC言語」です。文法の見た目はPythonやRubyのようで可読性が高く、実行速度はCと張り合える程の速さが出ます。"
slide:
  slide(slideOptions(autoAnimate=true)):
    speakerNote(tech)
    nbText: "## 使用言語"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(tech)
    nbText: "## 使用言語"
    fitImage("https://s3.ap-northeast-1.amazonaws.com/wraptas-prod/jij/f00f1033-3a07-4726-b91e-07a38fc2ad8a/1a09f5e57ca7eae2cb720dbb3fd35516.png")
    nbText: "# Nim言語"

  slide(slideOptions(autoAnimate=true)):
    speakerNote(whyNim)
    nbText: "## なんでNim?"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(whyNim)
    nbText: "## なんでNim?"
    unorderedList:
      listItem:
        nbText: "一番の推し言語"
      listItem:
        nbText: "Nimの特徴がコンセプトに合っている"
      listItem:
        nbText: "文法が自由で面白い"

  slide(slideOptions(autoAnimate=true)):
    speakerNote(nimFeature)
    nbText: "## Nimの特徴、一言で表すと"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(nimFeature)
    nbText: "## Nimの特徴、一言で表すと"
    nbText: "## 書きやすくなったC言語"
  slide(slideOptions(autoAnimate=true)):
    speakerNote(nimFeature)
    nbText: "## Nimの特徴、一言で表すと"
    nbText: "## 書きやすくなったC言語"
    nbText: "Pythonのような文法、C言語並みの速さ"

# 遊び方冒頭
slide:
  speakerNote("次に遊び方です。")
  nbText: "## 遊び方"

# 起動と終了
let begin = "このゲームの売りは作業合間にできる手軽さなので起動や終了に無駄な処理を挟まずにすぐに開始することができます。"
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
    nbText: "突然用事ができても進捗をすぐに残せる！"

# オプションの説明
slide:
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてじっくり楽しむ！"
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてじっくり楽しむ！"
    adaptiveColumns:
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/20_cmd.png?raw=true")
        nbText: "難易度を調整"
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/20.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてじっくり楽しむ！"
    adaptiveColumns:
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/noColor_cmd.png?raw=true")
        nbText: "色無し"
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/noColor.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてじっくり楽しむ！"
    adaptiveColumns:
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/continue10_cmd.png?raw=true")
        nbText: "コンティニュー回数を調整"
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/continue10.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてじっくり楽しむ！"
    adaptiveColumns:
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/infinite_cmd.png?raw=true")
        nbText: "無限コンティニュー！"
      column:
        fitImage("https://github.com/KerorinNorthFox/MySlides/blob/main/src/images/infinite.png?raw=true")
  slide(slideOptions(autoAnimate=true)):
    nbText: "#### オプションを付けてじっくり楽しむ！"
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

nbSave()
