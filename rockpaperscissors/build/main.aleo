program rockpaperscissors.aleo;

struct Move:
    choice as u8;


function determine_winner:
    input r0 as Move.private;
    input r1 as Move.private;
    is.eq r0.choice r1.choice into r2;
    is.eq r0.choice 1u8 into r3;
    is.eq r1.choice 3u8 into r4;
    is.eq r0.choice 2u8 into r5;
    is.eq r1.choice 1u8 into r6;
    is.eq r0.choice 3u8 into r7;
    is.eq r1.choice 2u8 into r8;
    not r8 into r9;
    and r7 r9 into r10;
    ternary r10 2u8 0u8 into r11;
    and r7 r8 into r12;
    ternary r12 1u8 r11 into r13;
    not r6 into r14;
    and r5 r14 into r15;
    ternary r15 2u8 r13 into r16;
    and r5 r6 into r17;
    ternary r17 1u8 r16 into r18;
    not r4 into r19;
    and r3 r19 into r20;
    ternary r20 2u8 r18 into r21;
    and r3 r4 into r22;
    ternary r22 1u8 r21 into r23;
    ternary r2 0u8 r23 into r24;
    output r24 as u8.private;
