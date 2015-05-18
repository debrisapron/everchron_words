require 'minitest/autorun'
require_relative './indexer'

describe Indexer do

  describe 'index' do
    it %( takes an enumerable of words and returns a hash of all the unique
          four-letter sequences and the words they appear in ) do
      result = Indexer.index(%w(arrows carrots give me))
      result.keys.must_equal %w(rrow rows carr rrot rots give)
      result.values.must_equal %w(arrows arrows carrots carrots carrots give)
    end

    it "returns the correct results for the given dictionary file" do
      result = Indexer.index(File.open('./dictionary.txt'))
      result.keys[0..9].must_equal %w(10th AAAS Aarh arhu rhus Aaro Abab bacu balo bbas)
    end
  end

end
