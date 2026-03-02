*** Test Cases ***
tc_for
#    FOR    ${i}   IN RANGE    1   11
#        log to console    ${i}
#    END

    @{list1}    create list    1    3   6   9   5
    FOR    ${i}     IN      @{list1}
        log to console    ${i}
        EXIT FOR LOOP IF    ${i}==9
    END
