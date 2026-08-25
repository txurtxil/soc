.class public Lu90;
.super Ljava/lang/Object;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lk60;->g:[I

    iput-object v0, p0, Lu90;->a:[I

    sget-object v0, Lk60;->h:[Ljava/lang/Object;

    iput-object v0, p0, Lu90;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lu90;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget v0, p0, Lu90;->c:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lu90;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lk60;->a(II[I)I

    move-result v1

    if-ltz v1, :cond_5

    shl-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lu90;->b:[Ljava/lang/Object;

    aget-object v2, v3, v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lu90;->a:[I

    aget v3, v3, v2

    if-nez v3, :cond_2

    shl-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lu90;->b:[Ljava/lang/Object;

    aget-object v3, v4, v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    iget-object v0, p0, Lu90;->a:[I

    aget v0, v0, v1

    if-nez v0, :cond_4

    shl-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lu90;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    not-int p0, v2

    return p0

    :cond_5
    return v1
.end method

.method public final b(ILjava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, Lu90;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v1, p0, Lu90;->a:[I

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Lk60;->a(II[I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ltz v2, :cond_5

    .line 14
    .line 15
    shl-int/lit8 v3, v2, 0x1

    .line 16
    .line 17
    iget-object p0, p0, Lu90;->b:[Ljava/lang/Object;

    .line 18
    .line 19
    aget-object v3, p0, v3

    .line 20
    .line 21
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_5

    .line 26
    .line 27
    add-int/lit8 v3, v2, 0x1

    .line 28
    .line 29
    :goto_0
    if-ge v3, v0, :cond_2

    .line 30
    .line 31
    aget v4, v1, v3

    .line 32
    .line 33
    if-ne v4, p1, :cond_2

    .line 34
    .line 35
    shl-int/lit8 v4, v3, 0x1

    .line 36
    .line 37
    aget-object v4, p0, v4

    .line 38
    .line 39
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    return v3

    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 50
    .line 51
    if-ltz v2, :cond_4

    .line 52
    .line 53
    aget v0, v1, v2

    .line 54
    .line 55
    if-ne v0, p1, :cond_4

    .line 56
    .line 57
    shl-int/lit8 v0, v2, 0x1

    .line 58
    .line 59
    aget-object v0, p0, v0

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    return v2

    .line 69
    :cond_4
    not-int p0, v3

    .line 70
    return p0

    .line 71
    :cond_5
    return v2
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 0

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lu90;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lu90;->a()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0, p1}, Lu90;->b(ILjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :goto_0
    if-ltz p0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lu90;->a()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0, p1}, Lu90;->b(ILjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    if-ltz p1, :cond_1

    .line 17
    .line 18
    shl-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    iget-object p0, p0, Lu90;->b:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object p0, p0, p1

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lu90;

    .line 6
    .line 7
    iget-object v1, p0, Lu90;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lu90;->c:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    check-cast p1, Lu90;

    .line 15
    .line 16
    iget v0, p1, Lu90;->c:I

    .line 17
    .line 18
    if-eq v2, v0, :cond_1

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_1
    move v0, v3

    .line 22
    :goto_0
    if-ge v0, v2, :cond_8

    .line 23
    .line 24
    shl-int/lit8 v4, v0, 0x1

    .line 25
    .line 26
    :try_start_0
    aget-object v4, v1, v4

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lu90;->c(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {p1, v4}, Lu90;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    if-nez v6, :cond_9

    .line 39
    .line 40
    invoke-virtual {p1, v4}, Lu90;->d(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_3

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    .line 58
    .line 59
    if-eqz v0, :cond_9

    .line 60
    .line 61
    check-cast p1, Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eq v2, v0, :cond_5

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move v0, v3

    .line 71
    :goto_1
    if-ge v0, v2, :cond_8

    .line 72
    .line 73
    shl-int/lit8 v4, v0, 0x1

    .line 74
    .line 75
    :try_start_1
    aget-object v4, v1, v4

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lu90;->c(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    if-nez v5, :cond_6

    .line 86
    .line 87
    if-nez v6, :cond_9

    .line 88
    .line 89
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_7

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    if-nez v4, :cond_7

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_8
    :goto_2
    const/4 p0, 0x1

    .line 107
    return p0

    .line 108
    :catch_0
    :cond_9
    :goto_3
    return v3
.end method

.method public final f()Z
    .locals 0

    .line 1
    iget p0, p0, Lu90;->c:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lu90;->c:I

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lu90;->b:[Ljava/lang/Object;

    aget-object v4, v4, v0

    iget-object v5, p0, Lu90;->a:[I

    aget v5, v5, v2

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lu90;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "{}"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lu90;->c:I

    .line 13
    .line 14
    mul-int/lit8 v2, v1, 0x1c

    .line 15
    .line 16
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x7b

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_4

    .line 26
    .line 27
    if-lez v2, :cond_1

    .line 28
    .line 29
    const-string v3, ", "

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    shl-int/lit8 v3, v2, 0x1

    .line 35
    .line 36
    iget-object v4, p0, Lu90;->b:[Ljava/lang/Object;

    .line 37
    .line 38
    aget-object v3, v4, v3

    .line 39
    .line 40
    const-string v4, "(this Map)"

    .line 41
    .line 42
    if-eq v3, p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :goto_1
    const/16 v3, 0x3d

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lu90;->c(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eq v3, p0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/16 p0, 0x7d

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method
