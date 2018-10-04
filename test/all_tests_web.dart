

import "block/aes_fast_test.dart" as aes_fast_test;
import "digests/md2_test.dart" as md2_test;
import "digests/md4_test.dart" as md4_test;
import "digests/md5_test.dart" as md5_test;
import "digests/ripemd128_test.dart" as ripemd128_test;
import "digests/ripemd160_test.dart" as ripemd160_test;
import "digests/ripemd256_test.dart" as ripemd256_test;
import "digests/ripemd320_test.dart" as ripemd320_test;
import "digests/sha1_test.dart" as sha1_test;
import "digests/sha3_test.dart" as sha3_test;
import "digests/sha224_test.dart" as sha224_test;
import "digests/sha256_test.dart" as sha256_test;
import "digests/sha384_test.dart" as sha384_test;
import "digests/sha512_test.dart" as sha512_test;
import "digests/sha512t_test.dart" as sha512t_test;
import "digests/tiger_test.dart" as tiger_test;
import "digests/whirlpool_test.dart" as whirlpool_test;
import "macs/hmac_test.dart" as hmac_test;
import "stream/salsa20_test.dart" as salsa20_test;
import "impl_test.dart" as impl_test;

void main() {
  aes_fast_test.main();
  md2_test.main();
  md4_test.main();
  md5_test.main();
  ripemd128_test.main();
  ripemd160_test.main();
  ripemd256_test.main();
  ripemd320_test.main();
  sha1_test.main();
  sha3_test.main();
  sha224_test.main();
  sha256_test.main();
  sha384_test.main();
  sha512_test.main();
  sha512t_test.main();
  tiger_test.main();
  whirlpool_test.main();
  hmac_test.main();
  salsa20_test.main();
  impl_test.main();
}