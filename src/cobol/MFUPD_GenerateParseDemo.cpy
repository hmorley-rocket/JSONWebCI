       entry "MFUT_TESTMAXITEMS"
           if num-of-items > 25
               call "MFU_ASSERT_FAIL_Z" using "Max items exceeded"
           end-if
           goback

           .

