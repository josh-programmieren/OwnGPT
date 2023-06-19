// automatically generated by the FlatBuffers compiler, do not modify

import * as flatbuffers from 'flatbuffers';

/**
 * ----------------------------------------------------------------------
 * A Buffer represents a single contiguous memory segment
 */
export class Buffer {
  bb: flatbuffers.ByteBuffer|null = null;
  bb_pos = 0;
  __init(i:number, bb:flatbuffers.ByteBuffer):Buffer {
  this.bb_pos = i;
  this.bb = bb;
  return this;
}

/**
 * The relative offset into the shared memory page where the bytes for this
 * buffer starts
 */
offset():bigint {
  return this.bb!.readInt64(this.bb_pos);
}

/**
 * The absolute length (in bytes) of the memory buffer. The memory is found
 * from offset (inclusive) to offset + length (non-inclusive). When building
 * messages using the encapsulated IPC message, padding bytes may be written
 * after a buffer, but such padding bytes do not need to be accounted for in
 * the size here.
 */
length():bigint {
  return this.bb!.readInt64(this.bb_pos + 8);
}

static sizeOf():number {
  return 16;
}

static createBuffer(builder:flatbuffers.Builder, offset: bigint, length: bigint):flatbuffers.Offset {
  builder.prep(8, 16);
  builder.writeInt64(BigInt(length ?? 0));
  builder.writeInt64(BigInt(offset ?? 0));
  return builder.offset();
}

}