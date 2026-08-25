.class public final Lec;
.super Lt3;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:Z

.field public e:Lko;


# virtual methods
.method public final j(Landroid/content/Context;)Lko;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lec;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lec;->e:Lko;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lt3;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ls20;

    .line 11
    .line 12
    iget-object v1, v0, Ls20;->c:Lvf;

    .line 13
    .line 14
    iget v0, v0, Ls20;->a:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    move v0, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-boolean v2, p0, Lec;->c:Z

    .line 24
    .line 25
    invoke-static {p1, v1, v0, v2}, Lem;->p(Landroid/content/Context;Lvf;ZZ)Lko;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lec;->e:Lko;

    .line 30
    .line 31
    iput-boolean v3, p0, Lec;->d:Z

    .line 32
    .line 33
    return-object p1
.end method
