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

footer: "Let's install and play!! : https://github.com/KerorinNorthFox/Minesweeper_on_CLI"

slide:
  nbText: "## CLIマインスイーパー"
  nbText: "徳山高専 中谷政登"

slide:
  slide(slideOptions(autoAnimate=true)):
    nbText: "## どんなゲーム？"
  slide:
    nbText: "## どんなゲーム？"
    nbImage("../images/climinesweeper.png")
    


nbSave()
