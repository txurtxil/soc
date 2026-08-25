.class public final synthetic Lds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrg;
.implements Lxj;
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:Lxj;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:I

.field public final synthetic h:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lds;->h:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lds;->b:Ljava/lang/Object;

    .line 7
    .line 8
    const-class p1, Landroidx/activity/b;

    .line 9
    .line 10
    iput-object p1, p0, Lds;->c:Ljava/lang/Class;

    .line 11
    .line 12
    const-string p1, "updateEnabledCallbacks"

    .line 13
    .line 14
    iput-object p1, p0, Lds;->d:Ljava/lang/String;

    .line 15
    .line 16
    const-string p1, "updateEnabledCallbacks()V"

    .line 17
    .line 18
    iput-object p1, p0, Lds;->e:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lds;->f:Z

    .line 22
    .line 23
    iput p1, p0, Lds;->g:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lds;->h:I

    .line 2
    .line 3
    sget-object v1, Lf60;->a:Lf60;

    .line 4
    .line 5
    iget-object p0, p0, Lds;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/activity/b;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/activity/b;->d()V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    check-cast p0, Landroidx/activity/b;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/activity/b;->d()V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lxj;
    .locals 1

    .line 1
    sget-object v0, Lbx;->a:Lcx;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final c()Lp9;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lds;->f:Z

    .line 2
    .line 3
    iget-object p0, p0, Lds;->c:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lbx;->a:Lcx;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Lxs;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lxs;-><init>(Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    sget-object v0, Lbx;->a:Lcx;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v0, Lq9;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lq9;-><init>(Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lds;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Lds;

    .line 9
    .line 10
    iget-object v0, p0, Lds;->d:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p1, Lds;->d:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lds;->e:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p1, Lds;->e:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget v0, p0, Lds;->g:I

    .line 31
    .line 32
    iget v1, p1, Lds;->g:I

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lds;->b:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v1, p1, Lds;->b:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lds;->c()Lp9;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lds;->c()Lp9;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    :goto_0
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_1
    instance-of v0, p1, Lds;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lds;->a:Lxj;

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lds;->b()Lxj;

    .line 71
    .line 72
    .line 73
    iput-object p0, p0, Lds;->a:Lxj;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-object p0, v0

    .line 77
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :cond_3
    const/4 p0, 0x0

    .line 83
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lds;->c()Lp9;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lds;->c()Lp9;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lds;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, v0

    .line 21
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    .line 23
    iget-object p0, p0, Lds;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    add-int/2addr p0, v1

    .line 30
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lds;->a:Lxj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lds;->b()Lxj;

    .line 6
    .line 7
    .line 8
    iput-object p0, p0, Lds;->a:Lxj;

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    :cond_0
    if-eq v0, p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    const-string v0, "<init>"

    .line 19
    .line 20
    iget-object p0, p0, Lds;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-string p0, "constructor (Kotlin reflection is not available)"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    const-string v0, "function "

    .line 32
    .line 33
    const-string v1, " (Kotlin reflection is not available)"

    .line 34
    .line 35
    invoke-static {v0, p0, v1}, Lt20;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
