# 1. Introduction

TerarkDB is a core product of [Terark](http://terark.com). It is a RocksDB distribution that powered by &copy;&trade;Terark algorithms. with these algorithms, TerarkDB is able to store more data and access much faster than official RocksDB(3+X more data and 10+X faster) on same hardware.

TerarkDB is completely compatible(binary compatible) with official RocksDB.


# 2. Installation & Documentation

[Download precompiled terark-zip-rocksdb](http://www.terark.com/download/terarkdb/latest)

[TerarkDB Documentation](https://github.com/Terark/terarkdb/wiki)


# 3. Components
TerarkDB has two components:

## 3.1. TerarkZipTable

`TerarkZipTable` is contained in the [terark-zip-rocksdb](https://github.com/terark/terark-zip-rocksdb) submodule. `TerarkZipTable` is a `SSTable`(Static Sorted Table) implementation that using  &copy;&trade;Terark algorithms for RocksDB. 

[Download precompiled terark-zip-rocksdb](http://www.terark.com/download/terarkdb/latest)


## 3.2. Terark modified RocksDB

We forked RocksDB and made a few changes to fit our algorithms, we've added it as a submodule named [rocksdb](https://github.com/terark/rocksdb) here.

Our changes for RocksDB does not change any RocksDB API, and does not have any extra dependencies, say, Terark modified RocksDB does not depend on TerarkZipTable(Without TerarkZipTable, [Terark modified RocksDB](http://github/terark/rocksdb) works exactly same as official RocksDB).

Our changes includes:

- Add optional two pass scan on SSTable build, existing SSTable is not impacted
- Add [TerarkZipTable config by env var](https://github.com/Terark/terarkdb/wiki/Try-TerarkDB-With-Minimal-Effort)
  - This change using functions in libterark-zip-table as weak symbol, this is why it does not depends on TerarkZipTable

# 4. Benchmark
see [Benchmark in wiki](https://github.com/Terark/terarkdb/wiki/Benchmark)

# 5. License
This software is open source.

## 5.1 submodule rocksdb
[submodule rocksdb](https://github.com/Terark/rocksdb) is our fork of rocksdb and can be compiled by yourself.

[License of submodule rocksdb](https://github.com/Terark/rocksdb/blob/master/LICENSE) is same as offical rocksdb(BSD clause 3).

## 5.2 submodule terark-zip-rocksdb
[submodule terark-zip-rocksdb](https://github.com/Terark/terark-zip-rocksdb) implements an SSTable for [submodule rocksdb](https://github.com/Terark/rocksdb), [terark-zip-rocksdb license](https://github.com/Terark/terark-zip-rocksdb/blob/master/LICENSE) is Apache 2.0, with NOTES:
  * You can read or redistribute or use the source code under Apache 2.0 license
  * You can not compile this software by yourself, since this software depends on our proprietary core algorithms, which requires a commercial license
  * You can [download](http://www.terark.com/download/terarkdb/latest) the precompiled binary library of this software

# 6. Contact
- contact@terark.com
- [terark.com](http://terark.com)


