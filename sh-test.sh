echo *関数の定義とコール
echo ------------------------------------

echo; echo *関数の定義とコール

# 関数を定義
hoge () {
    echo 'hoge!!'
}

hoge            # 関数をコール：関数名を書くと関数コールになる
                # => hoge!!


#------------------------------------
echo; echo *関数からサブ関数をコール

# サブ関数
hoge () {
    echo 'hoge!!'
}

# トップの関数
fuga () {
    hoge                # サブ関数をコール
}

fuga                    # トップの関数をコール
                        # => hoge!!

#------------------------------------
echo; echo *関数の引数

hoge () {
    local arg=$1        # 引数は $数字で取得する (最初の引数は$1)
                        # local をつけるとローカル変数になる (グローバル名前空間を汚染しない)

    echo $arg
    echo 'hoge!!'
}

fuga () {
    hoge 'hello'        # 関数コール：関数名と引数をスペースで区切ってならべる
}

fuga                    # トップの関数をコール
                        # => hello
                        #    hoge!!

#------------------------------------
echo; echo *関数の返り値

hoge () {
    local arg=$1

    echo $arg
    echo 'hoge!!'               # 実は echo した文字列が返り値として扱われる
                                # この場合は2回 echo しているので
                                # スペース区切りの文字列 'hello hoge!!' が返される
}

fuga () {
    local ret=`hoge 'hello'`    # 返り値を変数に代入するには``で関数コールをくくる
                                # シェルスクリプトの中では「関数＝コマンド」という発想
    echo $ret
}

fuga                    # トップの関数をコール
                        # => hello hoge!!

#------------------------------------
echo; echo *関数の終了ステータス

hoge_success () {
    return 0            # return で終了ステータスを返せる
                        # 一般的に 0 は成功
}

hoge_fail () {
    return 1            # 0 以外は失敗
}

hoge_success
echo $?                 # $? で直前の終了ステータスを参照できる
                        # => 0

hoge_fail
echo $?                 # => 1


# 条件分岐は以下のように

hoge_success
ret=$?                  # if文の中で test が実行されて $? が上書きされるので、変数に入れてそれを見る
if [ $ret = 0 ]; then
    echo 'success!'     # こっちを通るはず
else
    echo 'fail'
fi

hoge_fail
ret=$?
if [ $ret = 0 ]; then
    echo 'success!'
else
    echo 'fail!'        # こっちを通るはず
fi

# ちなみに、関数だけではなくコマンドでも同じ (ここでも「関数＝コマンド」という発想)
ping -c1 localhost > /dev/null 2>&1
echo $?                 # => 0 (成功)

ping -c1 invalid > /dev/null 2>&1
echo $?                 # => 68 (失敗)

