#include <lib/debug.h>
#include "export.h"

int MATIntro_test1()
{
    int rn10[] = {1, 3, 5, 6, 78, 3576, 32, 8, 0, 100};
    int i;
    int nps = get_nps();
    for (i = 0; i < 10; i++)
    {
        set_nps(rn10[i]);
        if (get_nps() != rn10[i])
        {
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
            set_nps(nps);
            return 1;
        }
    }
    set_nps(nps);
    dprintf("test 1 passed.\n");
    return 0;
}

int MATIntro_test2()
{
    at_set_perm(0, 0);
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0)
    {
        dprintf("test 2.1 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
        at_set_perm(0, 0);
        return 1;
    }
    at_set_perm(0, 1);
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0)
    {
        dprintf("test 2.2 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
        at_set_perm(0, 0);
        return 1;
    }
    at_set_perm(0, 2);
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0)
    {
        dprintf("test 2.3 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
        at_set_perm(0, 0);
        return 1;
    }
    at_set_perm(0, 100);
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0)
    {
        dprintf("test 2.4 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
        at_set_perm(0, 0);
        return 1;
    }
    at_set_perm(0, 0);
    dprintf("test 2 passed.\n");
    return 0;
}

int MATIntro_test3()
{
    at_set_allocated(1, 0);
    if (at_is_allocated(1) != 0)
    {
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
        at_set_allocated(1, 0);
        return 1;
    }
    at_set_allocated(1, 1);
    if (at_is_allocated(1) != 1)
    {
        dprintf("test 3.2 failed: (%d != 1)\n", at_is_allocated(1));
        at_set_allocated(1, 0);
        return 1;
    }
    at_set_allocated(1, 100);
    if (at_is_allocated(1) != 1)
    {
        dprintf("test 3.3 failed: (%d != 1)\n", at_is_allocated(1));
        at_set_allocated(1, 0);
        return 1;
    }
    at_set_allocated(1, 0);
    dprintf("test 3 passed.\n");
    return 0;
}

/**
 * Write Your Own Test Script (optional)
 *
 * Come up with your own interesting test cases to challenge your classmates!
 * In addition to the provided simple tests, selected (correct and interesting) test functions
 * will be used in the actual grading of the lab!
 * Your test function itself will not be graded. So don't be afraid of submitting a wrong script.
 *
 * The test function should return 0 for passing the test and a non-zero code for failing the test.
 * Be extra careful to make sure that if you overwrite some of the kernel data, they are set back to
 * the original value. O.w., it may make the future test scripts to fail even if you implement all
 * the functions correctly.
 */
int MATIntro_test_own()
{
  
   
    at_set_perm(5, 2);      //perm to normal
    at_set_allocated(5, 1); // alloc the page

    if (at_is_norm(5) != 1)
    {
        dprintf("test own 1.1failed: Expected normal permission for page 5\n");
        return 1;
    }
    if (at_is_allocated(5) != 1)
    {
        dprintf("test own 1.2 failed: Expected allocated status for page 5\n");
        return 1;
    }


    at_set_perm(5, 0);      // reset perm 
    at_set_allocated(5, 0); // unalloc

    if (at_is_norm(5) != 0)
    {
        dprintf("test own 2.1 failed: Expected non-normal permission for page 5\n");
        return 1;
    }
    if (at_is_allocated(5) != 0)
    {
        dprintf("test own 2.2 failed: Expected unallocated status for page 5\n");
        return 1;
    }


    dprintf("own test passed.\n");
    return 0;
}

int test_MATIntro()
{
    return MATIntro_test1() + MATIntro_test2() + MATIntro_test3() + MATIntro_test_own();
}