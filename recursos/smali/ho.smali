.class public Lho;
.super Lgo;
.source "SourceFile"


# virtual methods
.method public final b()Llo;
    .locals 4

    .line 1
    iget-object p0, p0, Lgo;->a:Landroid/media/session/MediaSession;

    .line 2
    .line 3
    invoke-static {p0}, Ly;->d(Landroid/media/session/MediaSession;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Llo;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ly;->z(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lmo;

    .line 25
    .line 26
    invoke-static {p0}, Ly;->n(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p0}, Ly;->a(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {p0}, Ly;->v(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-direct {v1, v3, p0, v2}, Loo;-><init>(IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Llo;->a:Loo;

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    const-string p0, "packageName should be nonempty"

    .line 45
    .line 46
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 52
    .line 53
    const-string v0, "package shouldn\'t be null"

    .line 54
    .line 55
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final d(Llo;)V
    .locals 0

    .line 1
    return-void
.end method
