# vim_settings
  vimは最高のテキストエディタですが、CUIのとっつきにくさのために敬遠されがちです。

そのため、できるだけ分かりやすく使いやすいをテーマにしました。

  プラグインで必要なEXコマンド(:wとか)をキーに割り当てるなど、覚えなければいけないことはなるべく少なくしています。

最低限のvimの操作方法は覚えてもらうしかありませんので、チートシートを見ながら覚えてください。

# 入れ方
  "vim改造資料"を参照してください

# ファイル、ディレクトリの説明
* basic.vim

  基本設定

* plug.vim

  プラグインの設定

* dein.toml

    設定記述用の言語tomlでプラグイン設定を分離してる

* dein_lazy.toml

  dein.tomlより遅れたタイミングで読み込みたいものを記述してる

* etc
  
  初期設定で使うもの（個人のディレクトリに移して使うやつとか）が入ってる

* colors
  
  colorsheme用のデータある。みんなで追加していこう。

* snipmate
  
  スニペット機能で呼び出す定型文を入れてある

* dict

  辞書を登録できる

* ftdetect
  
  ファイルタイプを指定するためのファイルが入ってる
