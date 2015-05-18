require_relative './indexer'

hsh = Indexer.index(File.open('./dictionary.txt'))
File.open('sequences.txt', 'w') { |f| f.write(hsh.keys.join("\n")) }
File.open('words.txt', 'w') { |f| f.write(hsh.values.join("\n")) }