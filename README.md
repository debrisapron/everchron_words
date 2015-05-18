# Everchron "words" challenge solution

A few notes:

- Run the tests with `ruby -Ilib:test indexer_test.rb`
- Run the actual solution with `ruby solution.rb`
- The whole index is stored as an in-memory hash. With the given dictionary this works fine, however if the dictionary was vast or RAM was tight, you would really want some sort of database for this
- The indexing is case-sensitive. I assume this is what you wanted, if not I apologise