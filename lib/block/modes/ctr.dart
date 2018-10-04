// Copyright (c) 2013-present, the authors of the Pointy Castle project
// This library is dually licensed under LGPL 3 and MPL 2.0.
// See file LICENSE for more information.

library pointycastle.impl.block_cipher.modes.ctr;

import "package:pointycastle/api.dart";
import "package:pointycastle/adapters/stream_cipher_as_block_cipher.dart";
import "package:pointycastle/stream/ctr.dart";
import "package:pointycastle/src/registry/registry.dart";

class CTRBlockCipher extends StreamCipherAsBlockCipher {

  CTRBlockCipher(int blockSize, StreamCipher underlyingCipher)
      : super(blockSize, underlyingCipher);

}