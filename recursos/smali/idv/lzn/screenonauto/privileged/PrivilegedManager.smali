.class public final Lidv/lzn/screenonauto/privileged/PrivilegedManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;,
        Lidv/lzn/screenonauto/privileged/PrivilegedManager$WhenMappings;
    }
.end annotation


# static fields
.field private static final BACKENDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lidv/lzn/screenonauto/privileged/PrivilegedBackend;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONNECT_TIMEOUT_MS:J = 0x3a98L

.field public static final INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

.field private static final TAG:Ljava/lang/String; = "ScreenOnAutoPriv"

.field private static final backendAvailableListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lrg;",
            ">;"
        }
    .end annotation
.end field

.field private static final beforeDisconnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lrg;",
            ">;"
        }
    .end annotation
.end field

.field private static final clientToken:Landroid/os/Binder;

.field private static final connectGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile connectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

.field private static volatile connectingKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

.field private static final connectionLostListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lrg;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile displayPowerModeStatus:I

.field private static final handshakeExecutor:Ljava/util/concurrent/ExecutorService;

.field private static hooked:Z

.field private static volatile isConnected:Z

.field private static volatile lastConnectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lch;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainHandler:Landroid/os/Handler;

.field private static volatile service:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

.field private static volatile touchInjectionSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->mainHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v0, Lw5;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, v1}, Lw5;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->handshakeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    new-instance v0, Landroid/os/Binder;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->clientToken:Landroid/os/Binder;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 47
    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->backendAvailableListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 54
    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectionLostListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 61
    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->beforeDisconnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    sput v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->displayPowerModeStatus:I

    .line 71
    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Lidv/lzn/screenonauto/privileged/PrivilegedBackend;

    .line 82
    .line 83
    sget-object v3, Lidv/lzn/screenonauto/privileged/RootBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/RootBackend;

    .line 84
    .line 85
    aput-object v3, v0, v2

    .line 86
    .line 87
    sget-object v2, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/ShizukuBackend;

    .line 88
    .line 89
    aput-object v2, v0, v1

    .line 90
    .line 91
    invoke-static {v0}, Lw9;->y([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->BACKENDS:Ljava/util/List;

    .line 96
    .line 97
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

.method public static synthetic a(Z)Lf60;
    .locals 0

    .line 1
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect$lambda$8(Z)Lf60;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Lqu;Lch;Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;)Lf60;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect$lambda$19(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Ljava/lang/Runnable;Lch;Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;)Lf60;

    move-result-object p0

    return-object p0
.end method

.method private final backendFor(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Lidv/lzn/screenonauto/privileged/PrivilegedBackend;
    .locals 0

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    if-eq p0, p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    sget-object p0, Lidv/lzn/screenonauto/privileged/RootBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/RootBackend;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Luf;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/ShizukuBackend;

    .line 25
    .line 26
    return-object p0
.end method

.method public static synthetic c(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Ljava/lang/Runnable;Lch;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect$lambda$19$lambda$10(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Ljava/lang/Runnable;Lch;)V

    return-void
.end method

.method private final clearService()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    sput-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->service:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    .line 3
    .line 4
    sput-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    sput-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected:Z

    .line 8
    .line 9
    sput-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->touchInjectionSupported:Z

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    sput p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->displayPowerModeStatus:I

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic connect$default(Lidv/lzn/screenonauto/privileged/PrivilegedManager;Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    new-instance p3, Lvu;

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    invoke-direct {p3, p4}, Lvu;-><init>(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final connect$lambda$19(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Ljava/lang/Runnable;Lch;Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;)Lf60;
    .locals 11

    .line 1
    sget-object v0, Lf60;->a:Lf60;

    .line 2
    .line 3
    if-nez p6, :cond_0

    .line 4
    .line 5
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->mainHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v2, Ltu;

    .line 8
    .line 9
    move v3, p0

    .line 10
    move-object v4, p1

    .line 11
    move-object v5, p2

    .line 12
    move-object v6, p3

    .line 13
    move-object v7, p4

    .line 14
    invoke-direct/range {v2 .. v7}, Ltu;-><init>(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Ljava/lang/Runnable;Lch;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->handshakeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    new-instance v3, Luu;

    .line 24
    .line 25
    move v6, p0

    .line 26
    move-object v7, p1

    .line 27
    move-object v9, p2

    .line 28
    move-object v8, p3

    .line 29
    move-object v10, p4

    .line 30
    move-object/from16 v4, p5

    .line 31
    .line 32
    move-object/from16 v5, p6

    .line 33
    .line 34
    invoke-direct/range {v3 .. v10}, Luu;-><init>(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Ljava/lang/Runnable;Lax;Lch;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method private static final connect$lambda$19$lambda$10(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Ljava/lang/Runnable;Lch;)V
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    sput-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectingKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "connection to "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " dropped"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "ScreenOnAutoPriv"

    .line 33
    .line 34
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 38
    .line 39
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->dropConnection()V

    .line 40
    .line 41
    .line 42
    iget-boolean p0, p2, Lax;->a:Z

    .line 43
    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    iput-boolean p0, p2, Lax;->a:Z

    .line 48
    .line 49
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->mainHandler:Landroid/os/Handler;

    .line 50
    .line 51
    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-interface {p4, p0}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method private static final connect$lambda$19$lambda$18(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Ljava/lang/Runnable;Lax;Lch;)V
    .locals 13

    .line 1
    :try_start_0
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->clientToken:Landroid/os/Binder;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lidv/lzn/screenonauto/privileged/IPrivilegedService;->attachClient(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lf60;->a:Lf60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    new-instance v1, Lcy;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    move-object v0, v1

    .line 16
    :goto_0
    invoke-static {v0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ScreenOnAutoPriv"

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v2, "attachClient failed"

    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lidv/lzn/screenonauto/privileged/IPrivilegedService;->isTouchInjectionSupported()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception v0

    .line 39
    new-instance v2, Lcy;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    move-object v0, v2

    .line 45
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    instance-of v3, v0, Lcy;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    move-object v0, v2

    .line 52
    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->powerProbeUnsafe(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    move-object v4, v2

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lidv/lzn/screenonauto/privileged/IPrivilegedService;->displayPowerModeStatus()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 80
    goto :goto_2

    .line 81
    :catchall_2
    move-exception v0

    .line 82
    new-instance v4, Lcy;

    .line 83
    .line 84
    invoke-direct {v4, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    move-object v0, v4

    .line 88
    :goto_2
    new-instance v4, Ldy;

    .line 89
    .line 90
    invoke-direct {v4, v0}, Ldy;-><init>(Ljava/io/Serializable;)V

    .line 91
    .line 92
    .line 93
    :goto_3
    if-nez v3, :cond_4

    .line 94
    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    iget-object v0, v4, Ldy;->a:Ljava/io/Serializable;

    .line 98
    .line 99
    invoke-static {v0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :cond_3
    instance-of v0, v2, Landroid/os/DeadObjectException;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    const/4 v0, 0x1

    .line 108
    :goto_4
    move v2, v0

    .line 109
    goto :goto_5

    .line 110
    :cond_4
    const/4 v0, 0x0

    .line 111
    goto :goto_4

    .line 112
    :goto_5
    if-eqz v4, :cond_7

    .line 113
    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    goto :goto_8

    .line 117
    :cond_5
    iget-object v0, v4, Ldy;->a:Ljava/io/Serializable;

    .line 118
    .line 119
    invoke-static {v0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-nez v3, :cond_6

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_6
    const-string v0, "displayPowerModeStatus failed; helper predates it"

    .line 127
    .line 128
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    const/4 v0, 0x6

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_6
    check-cast v0, Ljava/lang/Number;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    :goto_7
    move v11, v0

    .line 143
    goto :goto_9

    .line 144
    :cond_7
    :goto_8
    const/4 v0, 0x7

    .line 145
    goto :goto_7

    .line 146
    :goto_9
    if-eqz v2, :cond_8

    .line 147
    .line 148
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 149
    .line 150
    invoke-direct {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->markPowerProbeUnsafe(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    :cond_8
    :try_start_3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 165
    goto :goto_a

    .line 166
    :catchall_3
    move-exception v0

    .line 167
    new-instance v1, Lcy;

    .line 168
    .line 169
    invoke-direct {v1, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    move-object v0, v1

    .line 173
    :goto_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 174
    .line 175
    instance-of v3, v0, Lcy;

    .line 176
    .line 177
    if-eqz v3, :cond_9

    .line 178
    .line 179
    move-object v0, v1

    .line 180
    :cond_9
    check-cast v0, Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    sget-object v12, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->mainHandler:Landroid/os/Handler;

    .line 187
    .line 188
    move v4, v2

    .line 189
    move v2, v0

    .line 190
    new-instance v0, Lwu;

    .line 191
    .line 192
    move-object v7, p0

    .line 193
    move-object v9, p1

    .line 194
    move v1, p2

    .line 195
    move-object/from16 v3, p3

    .line 196
    .line 197
    move-object/from16 v5, p4

    .line 198
    .line 199
    move-object/from16 v6, p5

    .line 200
    .line 201
    move-object/from16 v8, p6

    .line 202
    .line 203
    invoke-direct/range {v0 .. v11}, Lwu;-><init>(IZLidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;ZLjava/lang/Runnable;Lax;Landroid/content/Context;Lch;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ZI)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method private static final connect$lambda$19$lambda$18$lambda$17(IZLidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;ZLjava/lang/Runnable;Lax;Landroid/content/Context;Lch;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ZI)V
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p0, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    sput-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectingKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 3
    const-string p0, "ScreenOnAutoPriv"

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p8, "handshake finished but the "

    invoke-direct {p1, p8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p8, " process is gone"

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->dropConnection()V

    if-eqz p3, :cond_1

    .line 6
    sget-object p1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-boolean p1, p5, Lax;->a:Z

    if-nez p1, :cond_3

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p6, p2, p7}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V

    return-void

    .line 8
    :cond_1
    iget-boolean p0, p5, Lax;->a:Z

    if-nez p0, :cond_3

    .line 9
    iput-boolean v0, p5, Lax;->a:Z

    .line 10
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p7, p0}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 12
    :cond_2
    sput-object p8, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->service:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    .line 13
    sput-object p2, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 14
    sput-object p2, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->lastConnectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 15
    sput-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected:Z

    .line 16
    sput-boolean p9, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->touchInjectionSupported:Z

    .line 17
    sput p10, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->displayPowerModeStatus:I

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "connected via "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (touch="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " screenOffStatus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->notifyListeners()V

    .line 20
    iget-boolean p0, p5, Lax;->a:Z

    if-nez p0, :cond_3

    .line 21
    iput-boolean v0, p5, Lax;->a:Z

    .line 22
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p7, p0}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private static final connect$lambda$8(Z)Lf60;
    .locals 0

    .line 1
    sget-object p0, Lf60;->a:Lf60;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final connect$lambda$9(Lax;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lax;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lax;->a:Z

    .line 8
    .line 9
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-ne p1, p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    sput-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectingKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 19
    .line 20
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p1, "connect via "

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " timed out"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "ScreenOnAutoPriv"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-interface {p3, p0}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic d(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->ensureBackendHooks$lambda$5$lambda$4(Z)V

    return-void
.end method

.method private final dropConnection()V
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectingKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 8
    .line 9
    sget-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->clearService()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->notifyListeners()V

    .line 15
    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectionLostListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lrg;

    .line 37
    .line 38
    invoke-interface {v0}, Lrg;->a()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic e(Lax;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect$lambda$9(Lax;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V

    return-void
.end method

.method private final ensureBackendHooks()V
    .locals 2

    .line 1
    sget-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->hooked:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p0, 0x1

    .line 7
    sput-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->hooked:Z

    .line 8
    .line 9
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/ShizukuBackend;

    .line 10
    .line 11
    new-instance v0, Lvu;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lvu;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->setPresenceCallback(Lch;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final ensureBackendHooks$lambda$5(Z)Lf60;
    .locals 3

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lsu;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p0}, Lsu;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    sget-object p0, Lf60;->a:Lf60;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final ensureBackendHooks$lambda$5$lambda$4(Z)V
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->onBackendPresence(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic f(Z)Lf60;
    .locals 0

    .line 1
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->ensureBackendHooks$lambda$5(Z)Lf60;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->handshakeExecutor$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(IZLidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;ZLjava/lang/Runnable;Lax;Landroid/content/Context;Lch;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ZI)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect$lambda$19$lambda$18$lambda$17(IZLidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;ZLjava/lang/Runnable;Lax;Landroid/content/Context;Lch;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ZI)V

    return-void
.end method

.method private static final handshakeExecutor$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    const-string v1, "Privileged-handshake"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic i(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Ljava/lang/Runnable;Lax;Lch;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect$lambda$19$lambda$18(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Ljava/lang/Runnable;Lax;Lch;)V

    return-void
.end method

.method private final markPowerProbeUnsafe(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string p0, "ScreenOnAutoPriv"

    .line 2
    .line 3
    const-string v0, "the screen-off probe took the privileged process with it; not asking again"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Llu;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "root_power_probe_unsafe"

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final notifyListeners()V
    .locals 3

    .line 1
    sget-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected:Z

    .line 2
    .line 3
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lch;

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private final onBackendPresence(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    sget-boolean p1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 8
    .line 9
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;->SHIZUKU:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->dropConnection()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->notifyListeners()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->notifyListeners()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->backendAvailableListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lrg;

    .line 41
    .line 42
    invoke-interface {p1}, Lrg;->a()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method private final powerProbeUnsafe(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Llu;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "root_power_probe_unsafe"

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method


# virtual methods
.method public final addOnBackendAvailableListener(Lrg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->backendAvailableListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final addOnBeforeDisconnectListener(Lrg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->beforeDisconnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final addOnConnectionLostListener(Lrg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectionLostListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final addOnStateChangedListener(Lch;)V
    .locals 0
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
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final clearPowerProbeFuse(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "root_power_probe_unsafe"

    .line 18
    .line 19
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final connect(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;",
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 15
    .line 16
    if-ne v0, p2, :cond_0

    .line 17
    .line 18
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {p3, p0}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectingKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 25
    .line 26
    if-ne v0, p2, :cond_1

    .line 27
    .line 28
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-interface {p3, p0}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    sget-object p1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sput-object p2, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectingKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 45
    .line 46
    new-instance v3, Lax;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v4, Lqu;

    .line 52
    .line 53
    invoke-direct {v4, v3, v1, p2, p3}, Lqu;-><init>(Lax;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->mainHandler:Landroid/os/Handler;

    .line 57
    .line 58
    const-wide/16 v7, 0x3a98

    .line 59
    .line 60
    invoke-virtual {p1, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p2}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->backendFor(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Lidv/lzn/screenonauto/privileged/PrivilegedBackend;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v0, Lru;

    .line 71
    .line 72
    move-object v2, p2

    .line 73
    move-object v5, p3

    .line 74
    invoke-direct/range {v0 .. v6}, Lru;-><init>(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Lqu;Lch;Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v6, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedBackend;->bind(Landroid/content/Context;Lch;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final disconnect(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "not connected"

    .line 12
    .line 13
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "disconnect requested (was "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ")"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "ScreenOnAutoPriv"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectingKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 42
    .line 43
    :cond_1
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->beforeDisconnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lrg;

    .line 60
    .line 61
    invoke-interface {v2}, Lrg;->a()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    sput-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectingKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 72
    .line 73
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->clearService()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->notifyListeners()V

    .line 77
    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-direct {p0, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->backendFor(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Lidv/lzn/screenonauto/privileged/PrivilegedBackend;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-interface {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedBackend;->unbind(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public final getConnectedKind()Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;
    .locals 0

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDisplayPowerModeStatus()I
    .locals 0

    .line 1
    sget p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->displayPowerModeStatus:I

    .line 2
    .line 3
    return p0
.end method

.method public final getDisplayPowerModeSupported()Z
    .locals 0

    .line 1
    sget p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->displayPowerModeStatus:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final getLastConnectedKind()Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;
    .locals 0

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->lastConnectedKind:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getService()Lidv/lzn/screenonauto/privileged/IPrivilegedService;
    .locals 0

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->service:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTouchInjectionSupported()Z
    .locals 0

    .line 1
    sget-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->touchInjectionSupported:Z

    .line 2
    .line 3
    return p0
.end method

.method public final injectKeyCode(I)Z
    .locals 1

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->service:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lidv/lzn/screenonauto/privileged/IPrivilegedService;->injectKeyCode(I)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    new-instance p1, Lcy;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    move-object p0, p1

    .line 20
    :goto_0
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    instance-of p0, p1, Landroid/os/DeadObjectException;

    .line 28
    .line 29
    const-string v0, "ScreenOnAutoPriv"

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const-string p0, "injectKeyCode: binder died; dropping connection"

    .line 34
    .line 35
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 39
    .line 40
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->dropConnection()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string p0, "injectKeyCode failed; keeping connection"

    .line 45
    .line 46
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public final injectMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->service:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lidv/lzn/screenonauto/privileged/IPrivilegedService;->injectMotionEvent(Landroid/view/MotionEvent;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    new-instance p1, Lcy;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    move-object p0, p1

    .line 23
    :goto_0
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    instance-of p0, p1, Landroid/os/DeadObjectException;

    .line 31
    .line 32
    const-string v0, "ScreenOnAutoPriv"

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    const-string p0, "injectMotionEvent: binder died; dropping connection"

    .line 37
    .line 38
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 42
    .line 43
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->dropConnection()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string p0, "injectMotionEvent failed; keeping connection"

    .line 48
    .line 49
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0
.end method

.method public final isAuthorised(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->backendFor(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Lidv/lzn/screenonauto/privileged/PrivilegedBackend;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedBackend;->isAuthorised(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isConnected()Z
    .locals 0

    .line 1
    sget-boolean p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method public final presentBackends(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->ensureBackendHooks()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->BACKENDS:Ljava/util/List;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Lidv/lzn/screenonauto/privileged/PrivilegedBackend;

    .line 30
    .line 31
    invoke-interface {v2, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedBackend;->isPresent(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {v0}, Lx9;->z(Ljava/lang/Iterable;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_1
    if-ge v1, p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    check-cast v2, Lidv/lzn/screenonauto/privileged/PrivilegedBackend;

    .line 64
    .line 65
    invoke-interface {v2}, Lidv/lzn/screenonauto/privileged/PrivilegedBackend;->getKind()Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    return-object p0
.end method

.method public final removeOnBackendAvailableListener(Lrg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->backendAvailableListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final removeOnBeforeDisconnectListener(Lrg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->beforeDisconnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final removeOnConnectionLostListener(Lrg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connectionLostListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final removeOnStateChangedListener(Lch;)V
    .locals 0
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
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final requestAuthorisation(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;->SHIZUKU:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 5
    .line 6
    if-ne p1, p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/ShizukuBackend;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->requestPermission(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setAuthorisationResultCallback(Lgh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgh;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->INSTANCE:Lidv/lzn/screenonauto/privileged/ShizukuBackend;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->setPermissionResultCallback(Lgh;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDisplayPowerMode(I)Z
    .locals 2

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->service:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lidv/lzn/screenonauto/privileged/IPrivilegedService;->setDisplayPowerMode(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    new-instance v0, Lcy;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    move-object p0, v0

    .line 23
    :goto_0
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "setDisplayPowerMode("

    .line 33
    .line 34
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ") failed; dropping connection"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "ScreenOnAutoPriv"

    .line 50
    .line 51
    invoke-static {p1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 55
    .line 56
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->dropConnection()V

    .line 57
    .line 58
    .line 59
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    .line 61
    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0
.end method
