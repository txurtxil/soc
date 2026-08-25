.class public final Lnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final d:Lnj;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnj;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v1}, Lnj;-><init>(III)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnj;->d:Lnj;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_b

    .line 5
    .line 6
    const/high16 v0, -0x80000000

    .line 7
    .line 8
    if-eq p3, v0, :cond_a

    .line 9
    .line 10
    iput p1, p0, Lnj;->a:I

    .line 11
    .line 12
    if-lez p3, :cond_4

    .line 13
    .line 14
    if-lt p1, p2, :cond_0

    .line 15
    .line 16
    goto :goto_6

    .line 17
    :cond_0
    rem-int v0, p2, p3

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    add-int/2addr v0, p3

    .line 23
    :goto_0
    rem-int/2addr p1, p3

    .line 24
    if-ltz p1, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    add-int/2addr p1, p3

    .line 28
    :goto_1
    sub-int/2addr v0, p1

    .line 29
    rem-int/2addr v0, p3

    .line 30
    if-ltz v0, :cond_3

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    add-int/2addr v0, p3

    .line 34
    :goto_2
    sub-int/2addr p2, v0

    .line 35
    goto :goto_6

    .line 36
    :cond_4
    if-gez p3, :cond_9

    .line 37
    .line 38
    if-gt p1, p2, :cond_5

    .line 39
    .line 40
    goto :goto_6

    .line 41
    :cond_5
    neg-int v0, p3

    .line 42
    rem-int/2addr p1, v0

    .line 43
    if-ltz p1, :cond_6

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_6
    add-int/2addr p1, v0

    .line 47
    :goto_3
    rem-int v1, p2, v0

    .line 48
    .line 49
    if-ltz v1, :cond_7

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_7
    add-int/2addr v1, v0

    .line 53
    :goto_4
    sub-int/2addr p1, v1

    .line 54
    rem-int/2addr p1, v0

    .line 55
    if-ltz p1, :cond_8

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_8
    add-int/2addr p1, v0

    .line 59
    :goto_5
    add-int/2addr p2, p1

    .line 60
    :goto_6
    iput p2, p0, Lnj;->b:I

    .line 61
    .line 62
    iput p3, p0, Lnj;->c:I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_9
    const-string p0, "Step is zero."

    .line 66
    .line 67
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    throw p0

    .line 72
    :cond_a
    const-string p0, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    .line 73
    .line 74
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    throw p0

    .line 79
    :cond_b
    const-string p0, "Step must be non-zero."

    .line 80
    .line 81
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x0

    .line 85
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lnj;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lnj;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lnj;

    .line 13
    .line 14
    invoke-virtual {v0}, Lnj;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :cond_0
    check-cast p1, Lnj;

    .line 21
    .line 22
    iget v0, p1, Lnj;->a:I

    .line 23
    .line 24
    iget v1, p0, Lnj;->a:I

    .line 25
    .line 26
    if-ne v1, v0, :cond_2

    .line 27
    .line 28
    iget p0, p0, Lnj;->b:I

    .line 29
    .line 30
    iget p1, p1, Lnj;->b:I

    .line 31
    .line 32
    if-ne p0, p1, :cond_2

    .line 33
    .line 34
    :cond_1
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnj;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget v0, p0, Lnj;->a:I

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget p0, p0, Lnj;->b:I

    .line 14
    .line 15
    add-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lnj;->a:I

    .line 2
    .line 3
    iget p0, p0, Lnj;->b:I

    .line 4
    .line 5
    if-le v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lmj;

    .line 2
    .line 3
    iget v1, p0, Lnj;->b:I

    .line 4
    .line 5
    iget v2, p0, Lnj;->c:I

    .line 6
    .line 7
    iget p0, p0, Lnj;->a:I

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2}, Lmj;-><init>(III)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lnj;->a:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".."

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lnj;->b:I

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
