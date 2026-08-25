.class public final Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;
.super Lidv/lzn/screenonauto/privileged/IPrivilegedService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$Companion;,
        Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;,
        Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;,
        Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;,
        Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;,
        Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;,
        Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;,
        Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;
    }
.end annotation


# static fields
.field public static final ANDROID_SERVERS_LIB:Ljava/lang/String; = "android_servers"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$Companion;

.field public static final DEFAULT_DISPLAY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DISPLAY_CONTROL_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INJECT_MODE_ASYNC:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final INPUT_MANAGER_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICES_JAR:Ljava/lang/String; = "/system/framework/services.jar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYSTEM_SERVER_CLASSPATH_ENV:Ljava/lang/String; = "SYSTEMSERVERCLASSPATH"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ScreenOnAutoPriv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private volatile appliedMode:I

.field private client:Landroid/os/IBinder;

.field private clientDeath:Landroid/os/IBinder$DeathRecipient;

.field private final displayControl$delegate:Lhk;

.field private final inputInjector$delegate:Lhk;

.field private volatile pending:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;

.field private volatile pendingKey:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;

.field private final setDisplayId$delegate:Lhk;

.field private final surfaceControl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$Companion;-><init>(Lqb;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->Companion:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$Companion;

    .line 8
    .line 9
    const-string v0, "com.android.server.display.DisplayControl"

    .line 10
    .line 11
    const-string v1, "android.hardware.display.DisplayControl"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lw9;->y([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->DISPLAY_CONTROL_CLASSES:Ljava/util/List;

    .line 22
    .line 23
    const-string v0, "android.hardware.input.InputManagerGlobal"

    .line 24
    .line 25
    const-string v1, "android.hardware.input.InputManager"

    .line 26
    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lw9;->y([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->INPUT_MANAGER_CLASSES:Ljava/util/List;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/IPrivilegedService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    new-instance v1, Lcy;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    move-object v0, v1

    .line 18
    :goto_0
    nop

    .line 19
    instance-of v1, v0, Lcy;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :cond_0
    check-cast v0, Ljava/lang/Class;

    .line 25
    .line 26
    iput-object v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->surfaceControl:Ljava/lang/Class;

    .line 27
    .line 28
    new-instance v0, Lxu;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, p0, v1}, Lxu;-><init>(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;I)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lw30;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lw30;-><init>(Lrg;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->displayControl$delegate:Lhk;

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    iput v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->appliedMode:I

    .line 43
    .line 44
    new-instance v1, Lxu;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {v1, p0, v2}, Lxu;-><init>(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;I)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lw30;

    .line 51
    .line 52
    invoke-direct {v2, v1}, Lw30;-><init>(Lrg;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->inputInjector$delegate:Lhk;

    .line 56
    .line 57
    new-instance v1, Lxu;

    .line 58
    .line 59
    invoke-direct {v1, p0, v0}, Lxu;-><init>(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;I)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lw30;

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lw30;-><init>(Lrg;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->setDisplayId$delegate:Lhk;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDISPLAY_CONTROL_CLASSES$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->DISPLAY_CONTROL_CLASSES:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getINPUT_MANAGER_CLASSES$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->INPUT_MANAGER_CLASSES:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final attachClient$lambda$14(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)V
    .locals 3

    .line 1
    iget v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->appliedMode:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "client died with mode="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, "; restoring display"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "ScreenOnAutoPriv"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->cancelPendingPointers()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->cancelPendingKey()V

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->appliedMode:I

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    if-eq v0, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->setDisplayPowerMode(I)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->releaseClient()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final builtInDisplayToken()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;
    .locals 11

    .line 1
    const-string v0, "Array is empty."

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 4
    .line 5
    const-string v2, "getPhysicalDisplayToken"

    .line 6
    .line 7
    const-string v3, "getPhysicalDisplayIds"

    .line 8
    .line 9
    iget-object v4, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->surfaceControl:Ljava/lang/Class;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v5, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;-><init>(Landroid/os/IBinder;I)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    :try_start_0
    const-string v6, "getInternalDisplayToken"

    .line 22
    .line 23
    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v6, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    instance-of v7, v6, Landroid/os/IBinder;

    .line 32
    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    check-cast v6, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v6

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v6, v5

    .line 41
    goto :goto_1

    .line 42
    :goto_0
    new-instance v7, Lcy;

    .line 43
    .line 44
    invoke-direct {v7, v6}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    move-object v6, v7

    .line 48
    :goto_1
    nop

    .line 49
    instance-of v7, v6, Lcy;

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    move-object v6, v5

    .line 54
    :cond_2
    check-cast v6, Landroid/os/IBinder;

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    new-instance p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;

    .line 60
    .line 61
    invoke-direct {p0, v6, v7}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;-><init>(Landroid/os/IBinder;I)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_3
    :try_start_1
    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v6, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    check-cast v6, [J

    .line 77
    .line 78
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v4, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    array-length v9, v6

    .line 87
    if-eqz v9, :cond_5

    .line 88
    .line 89
    aget-wide v9, v6, v7

    .line 90
    .line 91
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v8, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    instance-of v8, v6, Landroid/os/IBinder;

    .line 104
    .line 105
    if-eqz v8, :cond_4

    .line 106
    .line 107
    check-cast v6, Landroid/os/IBinder;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catchall_1
    move-exception v6

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    move-object v6, v5

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    new-instance v6, Ljava/util/NoSuchElementException;

    .line 115
    .line 116
    invoke-direct {v6, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :goto_2
    new-instance v8, Lcy;

    .line 121
    .line 122
    invoke-direct {v8, v6}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    move-object v6, v8

    .line 126
    :goto_3
    nop

    .line 127
    instance-of v8, v6, Lcy;

    .line 128
    .line 129
    if-eqz v8, :cond_6

    .line 130
    .line 131
    move-object v6, v5

    .line 132
    :cond_6
    check-cast v6, Landroid/os/IBinder;

    .line 133
    .line 134
    if-eqz v6, :cond_7

    .line 135
    .line 136
    new-instance p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;

    .line 137
    .line 138
    invoke-direct {p0, v6, v7}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;-><init>(Landroid/os/IBinder;I)V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_7
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getDisplayControl()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    if-nez p0, :cond_8

    .line 147
    .line 148
    const/4 p0, 0x4

    .line 149
    goto :goto_6

    .line 150
    :cond_8
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;->getLibraryLoaded()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-nez v6, :cond_9

    .line 155
    .line 156
    const/4 p0, 0x5

    .line 157
    goto :goto_6

    .line 158
    :cond_9
    :try_start_2
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;->getClazz()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v6, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    check-cast v3, [J

    .line 174
    .line 175
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;->getClazz()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    array-length v1, v3

    .line 188
    if-eqz v1, :cond_b

    .line 189
    .line 190
    aget-wide v0, v3, v7

    .line 191
    .line 192
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p0, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    instance-of v0, p0, Landroid/os/IBinder;

    .line 205
    .line 206
    if-eqz v0, :cond_a

    .line 207
    .line 208
    check-cast p0, Landroid/os/IBinder;

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :catchall_2
    move-exception p0

    .line 212
    goto :goto_4

    .line 213
    :cond_a
    move-object p0, v5

    .line 214
    goto :goto_5

    .line 215
    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 216
    .line 217
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 221
    :goto_4
    new-instance v0, Lcy;

    .line 222
    .line 223
    invoke-direct {v0, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    move-object p0, v0

    .line 227
    :goto_5
    nop

    .line 228
    instance-of v0, p0, Lcy;

    .line 229
    .line 230
    if-eqz v0, :cond_c

    .line 231
    .line 232
    move-object p0, v5

    .line 233
    :cond_c
    check-cast p0, Landroid/os/IBinder;

    .line 234
    .line 235
    if-eqz p0, :cond_d

    .line 236
    .line 237
    new-instance v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;

    .line 238
    .line 239
    invoke-direct {v0, p0, v7}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;-><init>(Landroid/os/IBinder;I)V

    .line 240
    .line 241
    .line 242
    return-object v0

    .line 243
    :cond_d
    const/4 p0, 0x2

    .line 244
    :goto_6
    :try_start_3
    const-string v0, "getBuiltInDisplay"

    .line 245
    .line 246
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 247
    .line 248
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    instance-of v1, v0, Landroid/os/IBinder;

    .line 269
    .line 270
    if-eqz v1, :cond_e

    .line 271
    .line 272
    check-cast v0, Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :catchall_3
    move-exception v0

    .line 276
    goto :goto_7

    .line 277
    :cond_e
    move-object v0, v5

    .line 278
    goto :goto_8

    .line 279
    :goto_7
    new-instance v1, Lcy;

    .line 280
    .line 281
    invoke-direct {v1, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    move-object v0, v1

    .line 285
    :goto_8
    nop

    .line 286
    instance-of v1, v0, Lcy;

    .line 287
    .line 288
    if-eqz v1, :cond_f

    .line 289
    .line 290
    move-object v0, v5

    .line 291
    :cond_f
    check-cast v0, Landroid/os/IBinder;

    .line 292
    .line 293
    if-eqz v0, :cond_10

    .line 294
    .line 295
    new-instance p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;

    .line 296
    .line 297
    invoke-direct {p0, v0, v7}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;-><init>(Landroid/os/IBinder;I)V

    .line 298
    .line 299
    .line 300
    return-object p0

    .line 301
    :cond_10
    new-instance v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;

    .line 302
    .line 303
    invoke-direct {v0, v5, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;-><init>(Landroid/os/IBinder;I)V

    .line 304
    .line 305
    .line 306
    return-object v0
.end method

.method private final cancelPendingKey()V
    .locals 12

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->pendingKey:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->pendingKey:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;

    .line 8
    .line 9
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getInputInjector()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getSetDisplayId()Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;->getDownTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    const/16 v9, 0x20

    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v10

    .line 37
    const/4 v6, 0x1

    .line 38
    move-object v2, p0

    .line 39
    invoke-direct/range {v2 .. v11}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->sendKey(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;Ljava/lang/reflect/Method;IIJIJ)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;->getKeyCode()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "released stuck key "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v0, "ScreenOnAutoPriv"

    .line 64
    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    return-void
.end method

.method private final cancelPendingPointers()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "ScreenOnAutoPriv"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v4, v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->pending:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    const/4 v5, 0x0

    .line 17
    iput-object v5, v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->pending:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;

    .line 18
    .line 19
    invoke-virtual {v4}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;->getIds()[I

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-direct {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getInputInjector()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    invoke-direct {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getSetDisplayId()Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_2
    array-length v7, v5

    .line 40
    new-array v14, v7, [Landroid/view/MotionEvent$PointerProperties;

    .line 41
    .line 42
    :goto_0
    if-ge v2, v7, :cond_3

    .line 43
    .line 44
    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    .line 45
    .line 46
    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 47
    .line 48
    .line 49
    aget v9, v5, v2

    .line 50
    .line 51
    iput v9, v8, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 52
    .line 53
    const/4 v9, 0x1

    .line 54
    iput v9, v8, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 55
    .line 56
    aput-object v8, v14, v2

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;->getDownTime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v10

    .line 69
    array-length v13, v5

    .line 70
    invoke-virtual {v4}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;->getCoords()[Landroid/view/MotionEvent$PointerCoords;

    .line 71
    .line 72
    .line 73
    move-result-object v15

    .line 74
    const/16 v22, 0x1002

    .line 75
    .line 76
    const/16 v23, 0x0

    .line 77
    .line 78
    const/4 v12, 0x3

    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    const/high16 v18, 0x3f800000    # 1.0f

    .line 84
    .line 85
    const/high16 v19, 0x3f800000    # 1.0f

    .line 86
    .line 87
    const/16 v20, 0x0

    .line 88
    .line 89
    const/16 v21, 0x0

    .line 90
    .line 91
    invoke-static/range {v8 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;->getMethod()Ljava/lang/reflect/Method;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v6}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;->getTarget()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 118
    .line 119
    .line 120
    array-length v0, v5

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "cancelled "

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v0, " stuck pointer(s) on client death"

    .line 135
    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    goto :goto_1

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    new-instance v2, Lcy;

    .line 154
    .line 155
    invoke-direct {v2, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    move-object v0, v2

    .line 159
    :goto_1
    invoke-static {v0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_4

    .line 164
    .line 165
    const-string v2, "cancelPendingPointers failed"

    .line 166
    .line 167
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    :cond_4
    :goto_2
    return-void
.end method

.method private static final displayControl_delegate$lambda$6(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;
    .locals 9

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->servicesJarLoader()Ljava/lang/ClassLoader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v2, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->DISPLAY_CONTROL_CLASSES:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v4, "ScreenOnAutoPriv"

    .line 20
    .line 21
    if-eqz v3, :cond_5

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v5

    .line 35
    new-instance v6, Lcy;

    .line 36
    .line 37
    invoke-direct {v6, v5}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    move-object v5, v6

    .line 41
    :goto_0
    nop

    .line 42
    instance-of v6, v5, Lcy;

    .line 43
    .line 44
    if-nez v6, :cond_2

    .line 45
    .line 46
    move-object v7, v5

    .line 47
    check-cast v7, Ljava/lang/Class;

    .line 48
    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v8, "DisplayControl found as "

    .line 52
    .line 53
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-static {v5}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    if-eqz v7, :cond_3

    .line 71
    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v8, "no "

    .line 75
    .line 76
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, " on the system server classpath"

    .line 83
    .line 84
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_3
    if-eqz v6, :cond_4

    .line 95
    .line 96
    move-object v5, v1

    .line 97
    :cond_4
    check-cast v5, Ljava/lang/Class;

    .line 98
    .line 99
    if-eqz v5, :cond_1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    move-object v5, v1

    .line 103
    :goto_1
    if-nez v5, :cond_6

    .line 104
    .line 105
    const-string p0, "DisplayControl not found under any known name"

    .line 106
    .line 107
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return-object v1

    .line 111
    :cond_6
    new-instance v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;

    .line 112
    .line 113
    invoke-direct {p0, v5}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->loadServicesLibrary(Ljava/lang/Class;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    invoke-direct {v0, v5, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;-><init>(Ljava/lang/Class;Z)V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method public static synthetic g(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;
    .locals 0

    .line 1
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->inputInjector_delegate$lambda$46(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    move-result-object p0

    return-object p0
.end method

.method private final getDisplayControl()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->displayControl$delegate:Lhk;

    .line 2
    .line 3
    check-cast p0, Lw30;

    .line 4
    .line 5
    invoke-virtual {p0}, Lw30;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;

    .line 10
    .line 11
    return-object p0
.end method

.method private final getInputInjector()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->inputInjector$delegate:Lhk;

    .line 2
    .line 3
    check-cast p0, Lw30;

    .line 4
    .line 5
    invoke-virtual {p0}, Lw30;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    .line 10
    .line 11
    return-object p0
.end method

.method private final getSetDisplayId()Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->setDisplayId$delegate:Lhk;

    .line 2
    .line 3
    check-cast p0, Lw30;

    .line 4
    .line 5
    invoke-virtual {p0}, Lw30;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/reflect/Method;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic h(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->setDisplayId_delegate$lambda$48(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;
    .locals 0

    .line 1
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->displayControl_delegate$lambda$6(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;

    move-result-object p0

    return-object p0
.end method

.method private static final inputInjector_delegate$lambda$46(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;
    .locals 0

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->resolveInputInjector()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->attachClient$lambda$14(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)V

    return-void
.end method

.method private final loadServicesLibrary(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class p0, Ljava/lang/Runtime;

    .line 2
    .line 3
    const-string v0, "loadLibrary0"

    .line 4
    .line 5
    const-class v1, Ljava/lang/Class;

    .line 6
    .line 7
    const-class v2, Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v1, v2}, [Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "android_servers"

    .line 26
    .line 27
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    new-instance p1, Lcy;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    move-object p0, p1

    .line 44
    :goto_0
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const-string p0, "ScreenOnAutoPriv"

    .line 52
    .line 53
    const-string v0, "Runtime.loadLibrary0(android_servers) failed"

    .line 54
    .line 55
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method private final releaseClient()V
    .locals 3

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->client:Landroid/os/IBinder;

    .line 2
    .line 3
    iget-object v1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->clientDeath:Landroid/os/IBinder$DeathRecipient;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->client:Landroid/os/IBinder;

    .line 15
    .line 16
    iput-object v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->clientDeath:Landroid/os/IBinder$DeathRecipient;

    .line 17
    .line 18
    return-void
.end method

.method private final rememberPointerState(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_6

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_6

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x6

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, -0x1

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v3, v1}, Lgn;->I(II)Lnj;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    move-object v6, v5

    .line 54
    check-cast v6, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eq v6, v0, :cond_1

    .line 61
    .line 62
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iput-object v2, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->pending:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    new-array v5, v2, [I

    .line 84
    .line 85
    move v6, v3

    .line 86
    :goto_2
    if-ge v6, v2, :cond_4

    .line 87
    .line 88
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    aput v7, v5, v6

    .line 103
    .line 104
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    new-array v6, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 112
    .line 113
    :goto_3
    if-ge v3, v2, :cond_5

    .line 114
    .line 115
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    .line 116
    .line 117
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Ljava/lang/Number;

    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    invoke-virtual {p1, v8, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 131
    .line 132
    .line 133
    aput-object v7, v6, v3

    .line 134
    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    new-instance p1, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;

    .line 139
    .line 140
    invoke-direct {p1, v0, v1, v5, v6}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;-><init>(J[I[Landroid/view/MotionEvent$PointerCoords;)V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->pending:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;

    .line 144
    .line 145
    return-void

    .line 146
    :cond_6
    iput-object v2, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->pending:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;

    .line 147
    .line 148
    return-void
.end method

.method private final resolveDisplayPower()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;
    .locals 6

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->surfaceControl:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ScreenOnAutoPriv"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "no android.view.SurfaceControl; display power mode unsupported"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    new-instance p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, v1, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;-><init>(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;I)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->builtInDisplayToken()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;->getToken()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;->getStatus()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "no built-in display token (status="

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "); unsupported"

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;

    .line 57
    .line 58
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;->getStatus()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-direct {v0, v1, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;-><init>(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;I)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_1
    :try_start_0
    const-string p0, "setDisplayPowerMode"

    .line 67
    .line 68
    const-class v4, Landroid/os/IBinder;

    .line 69
    .line 70
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    filled-new-array {v4, v5}, [Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v0, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    .line 78
    .line 79
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    new-instance v0, Lcy;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    move-object p0, v0

    .line 88
    :goto_0
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    check-cast p0, Ljava/lang/reflect/Method;

    .line 95
    .line 96
    new-instance v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;

    .line 97
    .line 98
    new-instance v1, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, p0, v3}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;-><init>(Ljava/lang/reflect/Method;Landroid/os/IBinder;)V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x0

    .line 107
    invoke-direct {v0, v1, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;-><init>(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;I)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_2
    const-string p0, "no SurfaceControl.setDisplayPowerMode on this platform"

    .line 112
    .line 113
    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    new-instance p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;

    .line 117
    .line 118
    const/4 v0, 0x3

    .line 119
    invoke-direct {p0, v1, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;-><init>(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;I)V

    .line 120
    .line 121
    .line 122
    return-object p0
.end method

.method private final resolveInputInjector()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;
    .locals 8

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->INPUT_MANAGER_CLASSES:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "getInstance"

    .line 25
    .line 26
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    move-object v4, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v4, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    .line 39
    .line 40
    const-string v5, "injectInputEvent"

    .line 41
    .line 42
    const-class v6, Landroid/view/InputEvent;

    .line 43
    .line 44
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    filled-new-array {v6, v7}, [Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, v3, v2}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v2

    .line 62
    new-instance v4, Lcy;

    .line 63
    .line 64
    invoke-direct {v4, v2}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    instance-of v2, v4, Lcy;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v1, v4

    .line 73
    :goto_1
    check-cast v1, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "input injection via "

    .line 80
    .line 81
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v0, "ScreenOnAutoPriv"

    .line 92
    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_3
    return-object v1
.end method

.method private final sendKey(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;Ljava/lang/reflect/Method;IIJIJ)Z
    .locals 13

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    :try_start_0
    new-instance v0, Landroid/view/KeyEvent;

    .line 7
    .line 8
    const/4 v10, 0x0

    .line 9
    const/16 v12, 0x101

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, -0x1

    .line 14
    move/from16 v6, p3

    .line 15
    .line 16
    move/from16 v5, p4

    .line 17
    .line 18
    move-wide/from16 v1, p5

    .line 19
    .line 20
    move/from16 v11, p7

    .line 21
    .line 22
    move-wide/from16 v3, p8

    .line 23
    .line 24
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 25
    .line 26
    .line 27
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;->getMethod()Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;->getTarget()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    new-instance p1, Lcy;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    move-object p0, p1

    .line 59
    :goto_0
    invoke-static {p0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "injectKey(code="

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move/from16 v6, p3

    .line 73
    .line 74
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", action="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move/from16 v5, p4

    .line 83
    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ") failed"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "ScreenOnAutoPriv"

    .line 97
    .line 98
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    :cond_0
    instance-of p0, p0, Lcy;

    .line 102
    .line 103
    xor-int/lit8 p0, p0, 0x1

    .line 104
    .line 105
    return p0
.end method

.method public static synthetic sendKey$default(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;Ljava/lang/reflect/Method;IIJIJILjava/lang/Object;)Z
    .locals 11

    .line 1
    and-int/lit8 v0, p10, 0x20

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    move v8, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move/from16 v8, p7

    .line 9
    .line 10
    :goto_0
    and-int/lit8 v0, p10, 0x40

    .line 11
    .line 12
    move-wide/from16 v6, p5

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-wide v9, v6

    .line 17
    :goto_1
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move-object v3, p2

    .line 20
    move v4, p3

    .line 21
    move v5, p4

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    move-wide/from16 v9, p8

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :goto_2
    invoke-direct/range {v1 .. v10}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->sendKey(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;Ljava/lang/reflect/Method;IIJIJ)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method private final servicesJarLoader()Ljava/lang/ClassLoader;
    .locals 11

    .line 1
    const-string p0, "ScreenOnAutoPriv"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v0, "SYSTEMSERVERCLASSPATH"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :goto_1
    move-object v3, v0

    .line 24
    goto :goto_3

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_4

    .line 27
    :cond_2
    :goto_2
    const-string v0, "/system/framework/services.jar"

    .line 28
    .line 29
    const-string v2, "SYSTEMSERVERCLASSPATH unset; using /system/framework/services.jar"

    .line 30
    .line 31
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :goto_3
    const-string v0, "com.android.internal.os.ClassLoaderFactory"

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "createClassLoader"

    .line 42
    .line 43
    const-class v4, Ljava/lang/String;

    .line 44
    .line 45
    const-class v5, Ljava/lang/String;

    .line 46
    .line 47
    const-class v6, Ljava/lang/String;

    .line 48
    .line 49
    const-class v7, Ljava/lang/ClassLoader;

    .line 50
    .line 51
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    const-class v10, Ljava/lang/String;

    .line 56
    .line 57
    filled-new-array/range {v4 .. v10}, [Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :goto_4
    new-instance v2, Lcy;

    .line 94
    .line 95
    invoke-direct {v2, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    move-object v0, v2

    .line 99
    :goto_5
    invoke-static {v0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-nez v2, :cond_3

    .line 104
    .line 105
    move-object v1, v0

    .line 106
    goto :goto_6

    .line 107
    :cond_3
    const-string v0, "could not build a system-server class loader"

    .line 108
    .line 109
    invoke-static {p0, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    :goto_6
    check-cast v1, Ljava/lang/ClassLoader;

    .line 113
    .line 114
    return-object v1
.end method

.method private static final setDisplayId_delegate$lambda$48(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    :try_start_0
    const-class p0, Landroid/view/InputEvent;

    .line 2
    .line 3
    const-string v0, "setDisplayId"

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

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
    nop

    .line 24
    instance-of v0, p0, Lcy;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    :cond_0
    check-cast p0, Ljava/lang/reflect/Method;

    .line 30
    .line 31
    return-object p0
.end method

.method private final tokenVia(Lrg;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrg;",
            ")",
            "Landroid/os/IBinder;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lrg;->a()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    instance-of v0, p1, Landroid/os/IBinder;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, p0

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    new-instance v0, Lcy;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    move-object p1, v0

    .line 23
    :goto_1
    nop

    .line 24
    instance-of v0, p1, Lcy;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    move-object p0, p1

    .line 30
    :goto_2
    check-cast p0, Landroid/os/IBinder;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public attachClient(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->releaseClient()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lyu;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1}, Lyu;-><init>(Landroid/os/Binder;I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lf60;->a:Lf60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    new-instance v2, Lcy;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    move-object v1, v2

    .line 26
    :goto_0
    nop

    .line 27
    instance-of v2, v1, Lcy;

    .line 28
    .line 29
    const-string v3, "ScreenOnAutoPriv"

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    move-object v2, v1

    .line 34
    check-cast v2, Lf60;

    .line 35
    .line 36
    iput-object p1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->client:Landroid/os/IBinder;

    .line 37
    .line 38
    iput-object v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->clientDeath:Landroid/os/IBinder$DeathRecipient;

    .line 39
    .line 40
    const-string p0, "client attached"

    .line 41
    .line 42
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {v1}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    const-string p1, "linkToDeath failed"

    .line 52
    .line 53
    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->cancelPendingPointers()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->cancelPendingKey()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->appliedMode:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->setDisplayPowerMode(I)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->releaseClient()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public displayPowerModeStatus()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->resolveDisplayPower()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public injectKeyCode(I)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getInputInjector()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getSetDisplayId()Ljava/lang/reflect/Method;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    const/16 v10, 0x60

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const-wide/16 v8, 0x0

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    move v3, p1

    .line 28
    invoke-static/range {v0 .. v11}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->sendKey$default(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;Ljava/lang/reflect/Method;IIJIJILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const-string p1, "injectKeyCode("

    .line 33
    .line 34
    const-string v12, "ScreenOnAutoPriv"

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "): DOWN failed; not sending UP"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v12, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    new-instance p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;

    .line 60
    .line 61
    invoke-direct {p0, v3, v5, v6}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;-><init>(IJ)V

    .line 62
    .line 63
    .line 64
    iput-object p0, v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->pendingKey:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;

    .line 65
    .line 66
    const/16 v10, 0x60

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v4, 0x1

    .line 70
    const/4 v7, 0x0

    .line 71
    const-wide/16 v8, 0x0

    .line 72
    .line 73
    invoke-static/range {v0 .. v11}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->sendKey$default(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;Ljava/lang/reflect/Method;IIJIJILjava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_3

    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    iput-object p0, v0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->pendingKey:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;

    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, "): UP failed; key left down for the fuse"

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v12, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public injectMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getInputInjector()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getSetDisplayId()Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "ScreenOnAutoPriv"

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;->getMethod()Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;->getTarget()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    new-instance v1, Lcy;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    move-object v0, v1

    .line 55
    :goto_0
    nop

    .line 56
    instance-of v1, v0, Lcy;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->rememberPointerState(Landroid/view/MotionEvent;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-static {v0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    const-string v0, "injectMotionEvent failed"

    .line 70
    .line 71
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    :catchall_1
    return-void

    .line 78
    :cond_3
    :goto_1
    const-string p0, "no InputManager injection entry point; touch injection unsupported"

    .line 79
    .line 80
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public isTouchInjectionSupported()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getInputInjector()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->getSetDisplayId()Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public setDisplayPowerMode(I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->resolveDisplayPower()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;->getEntry()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;->getMethod()Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;->getToken()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    new-instance v1, Lcy;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :goto_0
    nop

    .line 43
    instance-of v1, v0, Lcy;

    .line 44
    .line 45
    const-string v2, "ScreenOnAutoPriv"

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iput p1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->appliedMode:I

    .line 50
    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "display power mode \u2192 "

    .line 54
    .line 55
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    :cond_1
    invoke-static {v0}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-nez p0, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, "setDisplayPowerMode("

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, ") failed"

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 100
    .line 101
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    return p0
.end method
