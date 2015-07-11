# text_mining



```
#形態素分析用libraryのmecab及びその辞書、それとrubyで使えるようにする
#gemのnattoのインストール手順です。

#mecabのインストール
$ brew install mecab
#mecab-ipadic辞書のインストール
$ brew install mecab-ipadic
#naist辞書のインストール
http://osdn.jp/projects/naist-jdic/downloads/53500/mecab-naist-jdic-0.6.3b-20111013.tar.gz/
からソースをダウンロード。その後解凍してインストールをする。
$ tar zxfv mecab-naist-jdic-0.6.3b-20111013.tar.gz
$ cd mecab-naist-jdic-0.6.3b-20111013/
$ ./configure --with-charset=utf8
$ make
$ sudo make install

#mecab-rubyのインストール
$ wget http://mecab.googlecode.com/files/mecab-ruby-0.996.tar.gz
$ tar zxfv mecab-ruby-0.996.tar.gz
$ cd mecab-ruby-0.996
$ vi extconf.rb

ここの部分を
==================================================
$CFLAGS += ' ' + `#{mecab_config} --cflags`.chomp

have_header('mecab.h') && create_makefile('MeCab')
==================================================
このように変更
==================================================
$CFLAGS += ' ' + `#{mecab_config} --cflags`.chomp
$LDFLAGS = '-L/usr/local/lib'
have_header('mecab.h') && create_makefile('MeCab')
==================================================

$ ruby extconf.rb
$ vi Makefile
ここの部分を(80行目)
==================================================
LDSHARED = $(CC) -dynamic -bundle
==================================================
このように変更
==================================================
LDSHARED = $(CXX) -dynamic -bundle
==================================================


ここの部分を(119行目)
==================================================
LIBS = $(LIBRUBYARG_SHARED) -lstdc++ -lmecab  -lpthread -ldl -lobjc
==================================================
このように変更(使用ライブラリにiconvを追加しているらしい)
==================================================
LIBS = $(LIBRUBYARG_SHARED) -lstdc++ -lmecab  -lpthread -ldl -lobjc -liconv
==================================================

$ make
$ sudo make install
$ gem install natto

```



