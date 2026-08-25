.class public final Lidv/lzn/screenonauto/privileged/ShizukuBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lidv/lzn/screenonauto/privileged/PrivilegedBackend;


# static fields
.field public static final INSTANCE:Lidv/lzn/screenonauto/privileged/ShizukuBackend;

.field private static final TAG:Ljava/lang/String; = "ScreenOnAutoPriv"

.field private static final USER_SERVICE_VERSION:I = 0xb

.field private static final binderDeadListener:Lv10;

.field private static final binderReceivedListener:Lw10;

.field private static connection:Landroid/content/ServiceConnection;

.field private static final kind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

.field private static permissionCallback:Lgh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgh;"
        }
    .end annotation
.end field

.field private static final permissionListener:Lx10;

.field private static presenceCallback:Lch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;

    .line 2
    .line 3
    invoke-direct {v0}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/ShizukuBackend;

    .line 7
    .line 8
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;->SHIZUKU:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 9
    .line 10
    sput-object v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->kind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 11
    .line 12
    new-instance v0, La20;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->binderReceivedListener:Lw10;

    .line 18
    .line 19
    new-instance v0, Lb20;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->binderDeadListener:Lv10;

    .line 25
    .line 26
    new-instance v0, Lc20;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->permissionListener:Lx10;

    .line 32
    .line 33
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

.method public static synthetic a(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->permissionListener$lambda$8(II)V

    return-void
.end method

.method public static final synthetic access$getConnection$p()Landroid/content/ServiceConnection;
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->connection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setConnection$p(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    sput-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->connection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->binderReceivedListener$lambda$4()V

    return-void
.end method

.method private static final binderDeadListener$lambda$5()V
    .locals 2

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->presenceCallback:Lch;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final binderReceivedListener$lambda$4()V
    .locals 2

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->presenceCallback:Lch;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->binderDeadListener$lambda$5()V

    return-void
.end method

.method private static final permissionListener$lambda$8(II)V
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->permissionCallback:Lgh;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p0, p1}, Lgh;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lch;)V
    .locals 4
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
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->unbind(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15
    .line 16
    and-int/lit8 p0, p0, 0x2

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p0, v0

    .line 24
    :goto_0
    new-instance v1, Ly10;

    .line 25
    .line 26
    new-instance v2, Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-class v3, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Ly10;-><init>(Landroid/content/ComponentName;)V

    .line 42
    .line 43
    .line 44
    iput-boolean v0, v1, Ly10;->e:Z

    .line 45
    .line 46
    const-string p1, "priv"

    .line 47
    .line 48
    iput-object p1, v1, Ly10;->c:Ljava/lang/String;

    .line 49
    .line 50
    iput-boolean p0, v1, Ly10;->d:Z

    .line 51
    .line 52
    const/16 p0, 0xb

    .line 53
    .line 54
    iput p0, v1, Ly10;->b:I

    .line 55
    .line 56
    new-instance p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend$bind$conn$1;

    .line 57
    .line 58
    invoke-direct {p0, p2}, Lidv/lzn/screenonauto/privileged/ShizukuBackend$bind$conn$1;-><init>(Lch;)V

    .line 59
    .line 60
    .line 61
    sput-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->connection:Landroid/content/ServiceConnection;

    .line 62
    .line 63
    :try_start_0
    sget-object p1, Lz10;->a:Landroid/os/IBinder;

    .line 64
    .line 65
    sget-object p1, Le20;->a:Ljava/util/Map;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget-object v0, Le20;->a:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ld20;

    .line 78
    .line 79
    if-nez v2, :cond_1

    .line 80
    .line 81
    new-instance v2, Ld20;

    .line 82
    .line 83
    invoke-direct {v2, v1}, Ld20;-><init>(Ly10;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object p1, v2, Ld20;->a:Ljava/util/HashSet;

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    :try_start_1
    invoke-static {}, Lz10;->e()Lqi;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v1}, Ly10;->a(Ly10;)Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p0, Loi;

    .line 103
    .line 104
    invoke-virtual {p0, v2, p1}, Loi;->g(Ld20;Landroid/os/Bundle;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    :try_start_2
    sget-object p0, Lf60;->a:Lf60;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :goto_1
    new-instance p1, Lcy;

    .line 120
    .line 121
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    move-object p0, p1

    .line 125
    :goto_2
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-eqz p0, :cond_2

    .line 130
    .line 131
    const-string p1, "ScreenOnAutoPriv"

    .line 132
    .line 133
    const-string v0, "bindUserService failed"

    .line 134
    .line 135
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .line 137
    .line 138
    const/4 p0, 0x0

    .line 139
    sput-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->connection:Landroid/content/ServiceConnection;

    .line 140
    .line 141
    invoke-interface {p2, p0}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_2
    return-void
.end method

.method public getKind()Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;
    .locals 0

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->kind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 2
    .line 3
    return-object p0
.end method

.method public isAuthorised(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-boolean p0, Lz10;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    :try_start_1
    invoke-static {}, Lz10;->e()Lqi;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Loi;

    .line 14
    .line 15
    invoke-virtual {p0}, Loi;->h()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    sput-boolean p0, Lz10;->c:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    :goto_0
    const/4 p0, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_3

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :goto_2
    new-instance p1, Lcy;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    move-object p0, p1

    .line 46
    :goto_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    instance-of v0, p0, Lcy;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    move-object p0, p1

    .line 53
    :cond_2
    check-cast p0, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0
.end method

.method public isPresent(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object p0, Lz10;->a:Landroid/os/IBinder;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    new-instance p1, Lcy;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    move-object p0, p1

    .line 29
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    instance-of v0, p0, Lcy;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    move-object p0, p1

    .line 36
    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final requestPermission(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lz10;->e()Lqi;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Loi;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Loi;->j(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    sget-object p0, Lf60;->a:Lf60;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_0
    new-instance p1, Lcy;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    move-object p0, p1

    .line 28
    :goto_1
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const-string p1, "ScreenOnAutoPriv"

    .line 35
    .line 36
    const-string v0, "Shizuku.requestPermission failed"

    .line 37
    .line 38
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final setPermissionResultCallback(Lgh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgh;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->permissionListener:Lx10;

    .line 4
    .line 5
    sget-object v0, Lz10;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    sget-object v1, Lz10;->j:Ljava/util/ArrayList;

    .line 9
    .line 10
    new-instance v2, Lu10;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lu10;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    sget-object p0, Lf60;->a:Lf60;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :catchall_1
    move-exception p0

    .line 25
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    :try_start_4
    throw p0

    .line 27
    :cond_0
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->permissionListener:Lx10;

    .line 28
    .line 29
    sget-object v0, Lz10;->h:Ljava/util/ArrayList;

    .line 30
    .line 31
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    :try_start_5
    sget-object v1, Lz10;->j:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v2, Ls10;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Ls10;-><init>(Lx10;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 44
    :try_start_6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 48
    goto :goto_1

    .line 49
    :catchall_2
    move-exception p0

    .line 50
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 51
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 52
    :goto_0
    new-instance v0, Lcy;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    move-object p0, v0

    .line 58
    :goto_1
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    const-string v0, "ScreenOnAutoPriv"

    .line 65
    .line 66
    const-string v1, "permission listener registration failed"

    .line 67
    .line 68
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    sput-object p1, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->permissionCallback:Lgh;

    .line 72
    .line 73
    return-void
.end method

.method public final setPresenceCallback(Lch;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->presenceCallback:Lch;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sput-object p1, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->presenceCallback:Lch;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sput-object p1, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->presenceCallback:Lch;

    .line 12
    .line 13
    :try_start_0
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->binderReceivedListener:Lw10;

    .line 14
    .line 15
    invoke-static {p0}, Lz10;->a(Lw10;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->binderDeadListener:Lv10;

    .line 19
    .line 20
    sget-object p1, Lz10;->h:Ljava/util/ArrayList;

    .line 21
    .line 22
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    sget-object v0, Lz10;->i:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v1, Lu10;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lu10;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    sget-object p0, Lf60;->a:Lf60;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    new-instance p1, Lcy;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    move-object p0, p1

    .line 47
    :goto_0
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const-string p1, "ScreenOnAutoPriv"

    .line 54
    .line 55
    const-string v0, "binder listener registration failed"

    .line 56
    .line 57
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->connection:Landroid/content/ServiceConnection;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    sput-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->connection:Landroid/content/ServiceConnection;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 17
    .line 18
    new-instance v0, Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-class v1, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-static {}, Lz10;->e()Lqi;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "shizuku:user-service-arg-component"

    .line 43
    .line 44
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "shizuku:user-service-remove"

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    check-cast p1, Loi;

    .line 54
    .line 55
    invoke-virtual {p1, p0, v1}, Loi;->i(Ld20;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_1
    sget-object p0, Lf60;->a:Lf60;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    new-instance p1, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :goto_0
    new-instance p1, Lcy;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    move-object p0, p1

    .line 76
    :goto_1
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-eqz p0, :cond_1

    .line 81
    .line 82
    const-string p1, "ScreenOnAutoPriv"

    .line 83
    .line 84
    const-string v0, "unbindUserService failed"

    .line 85
    .line 86
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_2
    return-void
.end method
