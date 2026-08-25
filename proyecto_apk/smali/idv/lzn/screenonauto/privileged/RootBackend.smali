.class public final Lidv/lzn/screenonauto/privileged/RootBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lidv/lzn/screenonauto/privileged/PrivilegedBackend;


# static fields
.field public static final INSTANCE:Lidv/lzn/screenonauto/privileged/RootBackend;

.field private static final ROOT_MANAGER_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SU_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ScreenOnAutoPriv"

.field private static connection:Landroid/content/ServiceConnection;

.field private static final kind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lidv/lzn/screenonauto/privileged/RootBackend;

    .line 2
    .line 3
    invoke-direct {v0}, Lidv/lzn/screenonauto/privileged/RootBackend;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lidv/lzn/screenonauto/privileged/RootBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/RootBackend;

    .line 7
    .line 8
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;->ROOT:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 9
    .line 10
    sput-object v0, Lidv/lzn/screenonauto/privileged/RootBackend;->kind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 11
    .line 12
    const-string v5, "/vendor/bin/su"

    .line 13
    .line 14
    const-string v6, "/su/bin/su"

    .line 15
    .line 16
    const-string v1, "/system/bin/su"

    .line 17
    .line 18
    const-string v2, "/system/xbin/su"

    .line 19
    .line 20
    const-string v3, "/sbin/su"

    .line 21
    .line 22
    const-string v4, "/system/sbin/su"

    .line 23
    .line 24
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lw9;->y([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lidv/lzn/screenonauto/privileged/RootBackend;->SU_PATHS:Ljava/util/List;

    .line 33
    .line 34
    const-string v0, "me.weishu.kernelsu"

    .line 35
    .line 36
    const-string v1, "me.bmax.apatch"

    .line 37
    .line 38
    const-string v2, "com.topjohnwu.magisk"

    .line 39
    .line 40
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lw9;->y([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lidv/lzn/screenonauto/privileged/RootBackend;->ROOT_MANAGER_PACKAGES:Ljava/util/List;

    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getConnection$p()Landroid/content/ServiceConnection;
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/RootBackend;->connection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setConnection$p(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    sput-object p0, Lidv/lzn/screenonauto/privileged/RootBackend;->connection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-void
.end method

.method private final isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    new-instance p1, Lcy;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    move-object p0, p1

    .line 25
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    instance-of p2, p0, Lcy;

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    move-object p0, p1

    .line 32
    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lch;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lch;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/RootBackend;->unbind(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lidv/lzn/screenonauto/privileged/RootBackend$bind$conn$1;

    .line 11
    .line 12
    invoke-direct {p0, p2}, Lidv/lzn/screenonauto/privileged/RootBackend$bind$conn$1;-><init>(Lch;)V

    .line 13
    .line 14
    .line 15
    sput-object p0, Lidv/lzn/screenonauto/privileged/RootBackend;->connection:Landroid/content/ServiceConnection;

    .line 16
    .line 17
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v1, Lidv/lzn/screenonauto/privileged/PrivilegedRootService;

    .line 20
    .line 21
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p0}, Ljy;->bind(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lf60;->a:Lf60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    new-instance p1, Lcy;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    move-object p0, p1

    .line 37
    :goto_0
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const-string p1, "ScreenOnAutoPriv"

    .line 44
    .line 45
    const-string v0, "RootService.bind failed"

    .line 46
    .line 47
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    sput-object p0, Lidv/lzn/screenonauto/privileged/RootBackend;->connection:Landroid/content/ServiceConnection;

    .line 52
    .line 53
    invoke-interface {p2, p0}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public getKind()Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;
    .locals 0

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/RootBackend;->kind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 2
    .line 3
    return-object p0
.end method

.method public isAuthorised(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lq10;->j:Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    invoke-static {}, Lk60;->w()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public isPresent(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/RootBackend;->SU_PATHS:Ljava/util/List;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    new-instance v1, Lcy;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v1

    .line 52
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    instance-of v2, v0, Lcy;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    move-object v0, v1

    .line 59
    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    :goto_1
    sget-object p0, Lidv/lzn/screenonauto/privileged/RootBackend;->ROOT_MANAGER_PACKAGES:Ljava/util/List;

    .line 69
    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/String;

    .line 94
    .line 95
    sget-object v1, Lidv/lzn/screenonauto/privileged/RootBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/RootBackend;

    .line 96
    .line 97
    invoke-direct {v1, p1, v0}, Lidv/lzn/screenonauto/privileged/RootBackend;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    :goto_2
    const/4 p0, 0x1

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    :goto_3
    const/4 p0, 0x0

    .line 106
    :goto_4
    return p0
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/RootBackend;->connection:Landroid/content/ServiceConnection;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    sput-object p1, Lidv/lzn/screenonauto/privileged/RootBackend;->connection:Landroid/content/ServiceConnection;

    .line 11
    .line 12
    :try_start_0
    invoke-static {p0}, Ljy;->unbind(Landroid/content/ServiceConnection;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lf60;->a:Lf60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    new-instance p1, Lcy;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    move-object p0, p1

    .line 25
    :goto_0
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const-string p1, "ScreenOnAutoPriv"

    .line 32
    .line 33
    const-string v0, "RootService.unbind failed"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_1
    return-void
.end method
