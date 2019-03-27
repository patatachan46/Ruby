#ファイルからテキストデータを読み込んで表示する

filename = ARGV[0] 
file = File.open(filename) #ファイルを開く
text = file.read #ファイルのテキストデータを読み込む
print text #読み込んだテキストを出力する
file.close #ファイルを閉じる

