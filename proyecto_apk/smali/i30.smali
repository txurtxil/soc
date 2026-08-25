.class public abstract Li30;
.super Lh30;
.source "SourceFile"


# direct methods
.method public static u(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, v0}, Li30;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-ltz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    return v0
.end method

.method public static final v(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-instance v1, Lnj;

    .line 26
    .line 27
    if-gez p2, :cond_2

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-le v0, v2, :cond_3

    .line 35
    .line 36
    move v0, v2

    .line 37
    :cond_3
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, p2, v0, v2}, Lnj;-><init>(III)V

    .line 39
    .line 40
    .line 41
    instance-of v0, p0, Ljava/lang/String;

    .line 42
    .line 43
    iget v1, v1, Lnj;->b:I

    .line 44
    .line 45
    if-eqz v0, :cond_7

    .line 46
    .line 47
    if-le p2, v1, :cond_4

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    move v6, p2

    .line 51
    :goto_1
    move-object v5, p0

    .line 52
    check-cast v5, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const/4 v4, 0x0

    .line 59
    if-nez p3, :cond_5

    .line 60
    .line 61
    invoke-virtual {p1, v4, v5, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    move-object v2, p1

    .line 66
    move v3, p3

    .line 67
    goto :goto_2

    .line 68
    :cond_5
    move-object v2, p1

    .line 69
    move v3, p3

    .line 70
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    :goto_2
    if-eqz p2, :cond_6

    .line 75
    .line 76
    return v6

    .line 77
    :cond_6
    if-eq v6, v1, :cond_a

    .line 78
    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 80
    .line 81
    move-object p1, v2

    .line 82
    move p3, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_7
    move-object v2, p1

    .line 85
    move v3, p3

    .line 86
    if-le p2, v1, :cond_8

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_8
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {v2, p0, p2, p1, v3}, Li30;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_9

    .line 98
    .line 99
    return p2

    .line 100
    :cond_9
    if-eq p2, v1, :cond_a

    .line 101
    .line 102
    add-int/lit8 p2, p2, 0x1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_a
    :goto_4
    const/4 p0, -0x1

    .line 106
    return p0
.end method

.method public static final w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-ltz p2, :cond_5

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v1, p3

    .line 15
    if-ltz v1, :cond_5

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v1, p3

    .line 22
    if-le p2, v1, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    move v1, v0

    .line 26
    :goto_0
    if-ge v1, p3, :cond_4

    .line 27
    .line 28
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int v3, p2, v1

    .line 33
    .line 34
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    if-nez p4, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eq v2, v3, :cond_3

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-ne v2, v3, :cond_5

    .line 63
    .line 64
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :cond_5
    :goto_2
    return v0
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/Long;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x30

    .line 16
    .line 17
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    if-ge v3, v4, :cond_4

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne v1, v4, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const/16 v7, 0x2b

    .line 29
    .line 30
    if-eq v3, v7, :cond_3

    .line 31
    .line 32
    const/16 v2, 0x2d

    .line 33
    .line 34
    if-eq v3, v2, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const-wide/high16 v5, -0x8000000000000000L

    .line 38
    .line 39
    move v2, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    move/from16 v17, v4

    .line 42
    .line 43
    move v4, v2

    .line 44
    move/from16 v2, v17

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    move v4, v2

    .line 48
    :goto_0
    const-wide v7, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const-wide/16 v9, 0x0

    .line 54
    .line 55
    move-wide v11, v7

    .line 56
    :goto_1
    if-ge v2, v1, :cond_9

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/16 v13, 0xa

    .line 63
    .line 64
    invoke-static {v3, v13}, Ljava/lang/Character;->digit(II)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-gez v3, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    cmp-long v13, v9, v11

    .line 72
    .line 73
    const-wide/16 v14, 0xa

    .line 74
    .line 75
    if-gez v13, :cond_6

    .line 76
    .line 77
    cmp-long v11, v11, v7

    .line 78
    .line 79
    if-nez v11, :cond_7

    .line 80
    .line 81
    div-long v11, v5, v14

    .line 82
    .line 83
    cmp-long v13, v9, v11

    .line 84
    .line 85
    if-gez v13, :cond_6

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    mul-long/2addr v9, v14

    .line 89
    int-to-long v13, v3

    .line 90
    add-long v15, v5, v13

    .line 91
    .line 92
    cmp-long v3, v9, v15

    .line 93
    .line 94
    if-gez v3, :cond_8

    .line 95
    .line 96
    :cond_7
    :goto_2
    const/4 v0, 0x0

    .line 97
    return-object v0

    .line 98
    :cond_8
    sub-long/2addr v9, v13

    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_9
    if-eqz v4, :cond_a

    .line 103
    .line 104
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :cond_a
    neg-long v0, v9

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    return-object v0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-gt v3, v0, :cond_6

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    move v5, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move v5, v0

    .line 17
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_2

    .line 26
    .line 27
    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    move v5, v2

    .line 35
    goto :goto_3

    .line 36
    :cond_2
    :goto_2
    move v5, v1

    .line 37
    :goto_3
    if-nez v4, :cond_4

    .line 38
    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    move v4, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    if-nez v5, :cond_5

    .line 47
    .line 48
    goto :goto_4

    .line 49
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_6
    :goto_4
    add-int/2addr v0, v1

    .line 53
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
