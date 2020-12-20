

#*****************************************************************************
# addui.S
#-----------------------------------------------------------------------------
#
# Test addui instruction.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN
  
    TEST_CASE(1, t0, 0x1, \
    li t1, 0x0; \
    .word 0x1302AB; \
  )
   TEST_CASE(2, t0, 0x0, \
    li t1, 0x0; \
    .word 0x302AB; \
  )
  TEST_CASE(3, t0, 0x1, \
    li t1, 0x1; \
    .word 0x302AB; \
  )
    TEST_CASE(4, t0, 0x2, \
    li t1, 0x1; \
    .word 0x1302AB; \
  )
  TEST_CASE(5, t0, 0xFFF, \
    li t1, 0x0; \
    .word 0xFFF302AB; \
  )
  TEST_CASE(6, t0, 0x801, \
    li t1, 0x1; \
    .word 0x800302AB; \
  )
  TEST_CASE(7, t0, 0xFFFFF800, \
    li t1, 0xFFFFF000; \
    .word 0x800302AB; \
  )
  TEST_CASE(8, t0, 0xFFFFF800, \
    li t1, 0xFFFFF000; \
    .word 0x800302AB; \
  )
  TEST_CASE(9, t0, 0x0, \
    li t1, 0xFFFFFFFF; \
    .word 0x1302AB; \
  )
   TEST_CASE(10, t0, 0x00000ffe, \
    li t1, 0xFFFFFFFF; \
    .word 0xFFF302AB; \
  )



  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
