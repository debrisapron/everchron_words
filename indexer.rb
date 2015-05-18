module Indexer
  def self.index(enumerable)
    hsh = {}
    enumerable.each do |word|
      word
        .scan(/(?=(\S{4}))/)
        .flatten
        .each { |seq| hsh[seq] = !hsh.has_key?(seq) && word.strip }
    end
    hsh.select { |_, v| v }
  end
end