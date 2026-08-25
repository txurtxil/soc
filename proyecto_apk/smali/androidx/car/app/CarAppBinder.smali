.class final Landroidx/car/app/CarAppBinder;
.super Landroidx/car/app/ICarApp$Stub;
.source "SourceFile"


# instance fields
.field private mCurrentSession:Landroidx/car/app/l;

.field private final mCurrentSessionInfo:Landroidx/car/app/SessionInfo;

.field private mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

.field private mHostValidator:Lei;

.field private mService:Landroidx/car/app/CarAppService;


# direct methods
.method public constructor <init>(Landroidx/car/app/CarAppService;Landroidx/car/app/SessionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/car/app/ICarApp$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/car/app/CarAppBinder;->mCurrentSessionInfo:Landroidx/car/app/SessionInfo;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic g(Landroidx/car/app/CarAppBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->lambda$onAppStop$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentLifecycle()Lnk;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 8
    .line 9
    return-object p0
.end method

.method private getHostValidator()Lei;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mHostValidator:Lei;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/car/app/CarAppService;->a()Lei;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mHostValidator:Lei;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mHostValidator:Lei;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic h(Landroidx/car/app/CarAppBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->lambda$onAppResume$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/car/app/CarAppBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->lambda$onAppPause$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroidx/car/app/CarAppBinder;Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/car/app/CarAppBinder;->lambda$getManager$7(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V

    return-void
.end method

.method public static synthetic k(Landroidx/car/app/CarAppBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->lambda$onAppStart$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/car/app/CarAppBinder;Landroid/content/res/Configuration;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/car/app/CarAppBinder;->lambda$onConfigurationChanged$6(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private lambda$getManager$7(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/car/app/l;->c:Landroidx/car/app/i;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "app"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "getManager"

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "navigation"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p0, "%s is not a valid manager"

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "CarApp"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 41
    .line 42
    const-string v0, " is not a valid manager type"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2, v1, p0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-class p1, Landroidx/car/app/navigation/b;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Landroidx/car/app/navigation/b;

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/car/app/navigation/b;->a:Landroidx/car/app/navigation/INavigationManager$Stub;

    .line 67
    .line 68
    invoke-static {p2, v1, p0}, Landroidx/car/app/utils/e;->g(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const-class p1, Landroidx/car/app/b;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Landroidx/car/app/b;

    .line 82
    .line 83
    iget-object p0, p0, Landroidx/car/app/b;->b:Landroidx/car/app/IAppManager$Stub;

    .line 84
    .line 85
    invoke-static {p2, v1, p0}, Landroidx/car/app/utils/e;->g(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private lambda$onAppCreate$0(Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 7
    .line 8
    sget-object v2, Lmk;->a:Lmk;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v3, v1, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 13
    .line 14
    iget-object v3, v3, Landroidx/lifecycle/a;->c:Lmk;

    .line 15
    .line 16
    if-ne v3, v2, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/car/app/CarAppBinder;->mCurrentSessionInfo:Landroidx/car/app/SessionInfo;

    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/car/app/CarAppService;->b()Landroidx/car/app/l;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/car/app/CarAppBinder;->getHandshakeInfo()Landroidx/car/app/HandshakeInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Landroidx/car/app/CarAppService;->c:Ln2;

    .line 37
    .line 38
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v4, v1, Landroidx/car/app/l;->c:Landroidx/car/app/i;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/car/app/HandshakeInfo;->getHostCarAppApiLevel()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iput v3, v4, Landroidx/car/app/i;->d:I

    .line 51
    .line 52
    invoke-virtual {v4, v0, p2}, Landroidx/car/app/i;->a(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ln40;->a()V

    .line 56
    .line 57
    .line 58
    iget-object p2, v4, Landroidx/car/app/i;->b:Landroidx/car/app/j;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Ln40;->a()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ln40;->a()V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    iput-object v0, p2, Landroidx/car/app/j;->b:Landroidx/car/app/IAppHost;

    .line 74
    .line 75
    iput-object p1, p2, Landroidx/car/app/j;->a:Landroidx/car/app/ICarHost;

    .line 76
    .line 77
    iget-object p1, v1, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 78
    .line 79
    iget-object p2, p1, Landroidx/lifecycle/a;->c:Lmk;

    .line 80
    .line 81
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-class v3, Landroidx/car/app/k;

    .line 85
    .line 86
    invoke-virtual {v4, v3}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Landroidx/car/app/k;

    .line 91
    .line 92
    iget-object v5, v5, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    sget-object v6, Lmk;->c:Lmk;

    .line 99
    .line 100
    invoke-virtual {p2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    const/4 v6, 0x3

    .line 105
    const/4 v7, 0x1

    .line 106
    const-string v8, "CarApp"

    .line 107
    .line 108
    if-ltz p2, :cond_4

    .line 109
    .line 110
    if-ge v5, v7, :cond_2

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    const-string p1, "onAppCreate the app was already created"

    .line 120
    .line 121
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-direct {p0, v1, p3}, Landroidx/car/app/CarAppBinder;->onNewIntentInternal(Landroidx/car/app/l;Landroid/content/Intent;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_4

    .line 128
    .line 129
    :cond_4
    :goto_0
    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_5

    .line 134
    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string p2, "onAppCreate the app was not yet created or the screen stack was empty state: "

    .line 138
    .line 139
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p1, Landroidx/lifecycle/a;->c:Lmk;

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p1, ", stack size: "

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :cond_5
    sget-object p0, Llk;->ON_CREATE:Llk;

    .line 163
    .line 164
    invoke-virtual {v1, p0}, Landroidx/car/app/l;->b(Llk;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v3}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Landroidx/car/app/k;

    .line 172
    .line 173
    check-cast v1, Lnq;

    .line 174
    .line 175
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lhd;->d()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    sput-boolean v7, Lnq;->d:Z

    .line 183
    .line 184
    invoke-static {}, Lhd;->d()Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eq p1, p2, :cond_6

    .line 189
    .line 190
    sget-object p1, Lnq;->f:Lx6;

    .line 191
    .line 192
    if-eqz p1, :cond_6

    .line 193
    .line 194
    invoke-static {}, Lhd;->d()Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {p1, p2}, Lx6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    :cond_6
    iget-object p1, v1, Landroidx/car/app/l;->c:Landroidx/car/app/i;

    .line 206
    .line 207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    const-class p3, Landroid/os/PowerManager;

    .line 222
    .line 223
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    check-cast p2, Landroid/os/PowerManager;

    .line 228
    .line 229
    const/4 p3, 0x0

    .line 230
    if-nez p2, :cond_7

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_7
    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_8

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_8
    sget-object v3, Lk60;->i:Landroid/os/PowerManager$WakeLock;

    .line 241
    .line 242
    if-nez v3, :cond_9

    .line 243
    .line 244
    const v3, 0x1000000a

    .line 245
    .line 246
    .line 247
    const-string v4, "ScreenOnAuto:wake"

    .line 248
    .line 249
    invoke-virtual {p2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v3, p3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 254
    .line 255
    .line 256
    sput-object v3, Lk60;->i:Landroid/os/PowerManager$WakeLock;

    .line 257
    .line 258
    :cond_9
    const-wide/16 v4, 0x4e20

    .line 259
    .line 260
    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 261
    .line 262
    .line 263
    :goto_1
    sget-boolean p2, Lb00;->f:Z

    .line 264
    .line 265
    if-nez p2, :cond_b

    .line 266
    .line 267
    sget-object p2, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 268
    .line 269
    if-eqz p2, :cond_a

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    new-instance v3, Landroid/content/Intent;

    .line 277
    .line 278
    const-class v4, Lidv/lzn/screenonauto/MainActivity;

    .line 279
    .line 280
    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .line 282
    .line 283
    const/high16 v4, 0x30000000

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    const-string v4, "extra_auto_start"

    .line 289
    .line 290
    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_b
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-static {p2}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {p2, v3, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    const-string v4, "auto_launch_package"

    .line 313
    .line 314
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    if-eqz v3, :cond_d

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-nez v4, :cond_c

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_c
    invoke-static {p2, v3}, Lz5;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    :cond_d
    :goto_3
    new-instance p2, Landroid/content/Intent;

    .line 331
    .line 332
    const-class v3, Lidv/lzn/screenonauto/MirrorMediaService;

    .line 333
    .line 334
    invoke-direct {p2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 338
    .line 339
    .line 340
    iget-object p2, v1, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 341
    .line 342
    new-instance v3, Lidv/lzn/screenonauto/car/MirrorSession$onCreateScreen$2;

    .line 343
    .line 344
    invoke-direct {v3, v1}, Lidv/lzn/screenonauto/car/MirrorSession$onCreateScreen$2;-><init>(Lnq;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2, v3}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 348
    .line 349
    .line 350
    new-instance p2, Lmq;

    .line 351
    .line 352
    invoke-direct {p2, p1}, Lmq;-><init>(Landroidx/car/app/i;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-static {}, Ln40;->a()V

    .line 359
    .line 360
    .line 361
    iget-object p1, p0, Landroidx/car/app/k;->c:Landroidx/lifecycle/a;

    .line 362
    .line 363
    iget-object v1, p1, Landroidx/lifecycle/a;->c:Lmk;

    .line 364
    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_e

    .line 370
    .line 371
    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 372
    .line 373
    .line 374
    move-result p0

    .line 375
    if-eqz p0, :cond_14

    .line 376
    .line 377
    const-string p0, "Pushing screens after the DESTROYED state is a no-op"

    .line 378
    .line 379
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    goto/16 :goto_4

    .line 383
    .line 384
    :cond_e
    iget-object v1, p2, Lmq;->b:Landroidx/lifecycle/a;

    .line 385
    .line 386
    iget-object v1, v1, Landroidx/lifecycle/a;->c:Lmk;

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-nez v1, :cond_15

    .line 393
    .line 394
    iget-object v1, p0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 395
    .line 396
    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-eqz v2, :cond_f

    .line 401
    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v3, "Pushing screen "

    .line 405
    .line 406
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v3, " to the top of the screen stack"

    .line 413
    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    :cond_f
    invoke-virtual {v1, p2}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    sget-object v3, Lmk;->e:Lmk;

    .line 429
    .line 430
    if-eqz v2, :cond_11

    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    check-cast v2, Lmq;

    .line 437
    .line 438
    if-eqz v2, :cond_14

    .line 439
    .line 440
    if-ne v2, p2, :cond_10

    .line 441
    .line 442
    goto :goto_4

    .line 443
    :cond_10
    invoke-virtual {v1, p2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0, p2, p3}, Landroidx/car/app/k;->a(Lmq;Z)V

    .line 447
    .line 448
    .line 449
    invoke-static {v2, p3}, Landroidx/car/app/k;->b(Lmq;Z)V

    .line 450
    .line 451
    .line 452
    iget-object p0, p1, Landroidx/lifecycle/a;->c:Lmk;

    .line 453
    .line 454
    invoke-virtual {p0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 455
    .line 456
    .line 457
    move-result p0

    .line 458
    if-ltz p0, :cond_14

    .line 459
    .line 460
    sget-object p0, Llk;->ON_RESUME:Llk;

    .line 461
    .line 462
    invoke-virtual {p2, p0}, Lmq;->c(Llk;)V

    .line 463
    .line 464
    .line 465
    goto :goto_4

    .line 466
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    check-cast v2, Lmq;

    .line 471
    .line 472
    invoke-virtual {p0, p2, v7}, Landroidx/car/app/k;->a(Lmq;Z)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, p2}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result p0

    .line 479
    if-nez p0, :cond_12

    .line 480
    .line 481
    goto :goto_4

    .line 482
    :cond_12
    if-eqz v2, :cond_13

    .line 483
    .line 484
    invoke-static {v2, p3}, Landroidx/car/app/k;->b(Lmq;Z)V

    .line 485
    .line 486
    .line 487
    :cond_13
    iget-object p0, p1, Landroidx/lifecycle/a;->c:Lmk;

    .line 488
    .line 489
    invoke-virtual {p0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 490
    .line 491
    .line 492
    move-result p0

    .line 493
    if-ltz p0, :cond_14

    .line 494
    .line 495
    sget-object p0, Llk;->ON_RESUME:Llk;

    .line 496
    .line 497
    invoke-virtual {p2, p0}, Lmq;->c(Llk;)V

    .line 498
    .line 499
    .line 500
    :cond_14
    :goto_4
    return-object v0

    .line 501
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 502
    .line 503
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 504
    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    const-string p3, "Failed to push screen ("

    .line 508
    .line 509
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const-string p2, "), because it has already been destroyed. Please note that screens are single-use, so a fresh instance is required every time you call screenManager.push()."

    .line 516
    .line 517
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    throw p0
.end method

.method private synthetic lambda$onAppPause$3()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Llk;->ON_PAUSE:Llk;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/car/app/l;->b(Llk;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method private synthetic lambda$onAppResume$2()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Llk;->ON_RESUME:Llk;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/car/app/l;->b(Llk;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method private synthetic lambda$onAppStart$1()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Llk;->ON_START:Llk;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/car/app/l;->b(Llk;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method private synthetic lambda$onAppStop$4()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Llk;->ON_STOP:Llk;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/car/app/l;->b(Llk;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method private synthetic lambda$onConfigurationChanged$6(Landroid/content/res/Configuration;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Landroidx/car/app/CarAppBinder;->onConfigurationChangedInternal(Landroidx/car/app/l;Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method private synthetic lambda$onNewIntent$5(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Landroidx/car/app/CarAppBinder;->onNewIntentInternal(Landroidx/car/app/l;Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public static synthetic m(Landroidx/car/app/CarAppBinder;Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/car/app/CarAppBinder;->lambda$onAppCreate$0(Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/car/app/CarAppBinder;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/car/app/CarAppBinder;->lambda$onNewIntent$5(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private onConfigurationChangedInternal(Landroidx/car/app/l;Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-static {}, Ln40;->a()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x3

    .line 5
    const-string v0, "CarApp"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "onCarConfigurationChanged configuration: "

    .line 16
    .line 17
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p1, Landroidx/car/app/l;->c:Landroidx/car/app/i;

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroidx/car/app/i;->c(Landroid/content/res/Configuration;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private onNewIntentInternal(Landroidx/car/app/l;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {}, Ln40;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/car/app/CarAppBinder;->onDestroyLifecycle()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mHostValidator:Lei;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    .line 12
    .line 13
    return-void
.end method

.method public getAppInfo(Landroidx/car/app/IOnDoneCallback;)V
    .locals 2

    .line 1
    const-string v0, "getAppInfo"

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/car/app/CarAppService;->b:Landroidx/car/app/AppInfo;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/car/app/AppInfo;->create(Landroid/content/Context;)Landroidx/car/app/AppInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Landroidx/car/app/CarAppService;->b:Landroidx/car/app/AppInfo;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/car/app/CarAppService;->b:Landroidx/car/app/AppInfo;

    .line 19
    .line 20
    invoke-static {p1, v0, p0}, Landroidx/car/app/utils/e;->g(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-static {p1, v0, p0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getCarAppService()Landroidx/car/app/CarAppService;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCurrentSession()Landroidx/car/app/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCurrentSessionInfo()Landroidx/car/app/SessionInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSessionInfo:Landroidx/car/app/SessionInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHandshakeInfo()Landroidx/car/app/HandshakeInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getManager(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/car/app/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/car/app/f;-><init>(Landroidx/car/app/CarAppBinder;Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ln40;->b(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAppCreate(Landroidx/car/app/ICarHost;Landroid/content/Intent;Landroid/content/res/Configuration;Landroidx/car/app/IOnDoneCallback;)V
    .locals 4

    .line 1
    const-string v0, "CarApp"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "onAppCreate intent: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v2, Landroidx/car/app/e;

    .line 28
    .line 29
    invoke-direct {v2, p0, p1, p3, p2}, Landroidx/car/app/e;-><init>(Landroidx/car/app/CarAppBinder;Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    const-string p0, "onAppCreate"

    .line 33
    .line 34
    invoke-static {p4, p0, v2}, Landroidx/car/app/utils/e;->c(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    const-string p0, "onAppCreate completed"

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public onAppPause(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Lnk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/car/app/d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Landroidx/car/app/d;-><init>(Landroidx/car/app/CarAppBinder;I)V

    .line 9
    .line 10
    .line 11
    const-string p0, "onAppPause"

    .line 12
    .line 13
    invoke-static {v0, p1, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAppResume(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Lnk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/car/app/d;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, p0, v2}, Landroidx/car/app/d;-><init>(Landroidx/car/app/CarAppBinder;I)V

    .line 9
    .line 10
    .line 11
    const-string p0, "onAppResume"

    .line 12
    .line 13
    invoke-static {v0, p1, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAppStart(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Lnk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/car/app/d;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Landroidx/car/app/d;-><init>(Landroidx/car/app/CarAppBinder;I)V

    .line 9
    .line 10
    .line 11
    const-string p0, "onAppStart"

    .line 12
    .line 13
    invoke-static {v0, p1, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAppStop(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Lnk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/car/app/d;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, p0, v2}, Landroidx/car/app/d;-><init>(Landroidx/car/app/CarAppBinder;I)V

    .line 9
    .line 10
    .line 11
    const-string p0, "onAppStop"

    .line 12
    .line 13
    invoke-static {v0, p1, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAutoDriveEnabled()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/car/app/l;->c:Landroidx/car/app/i;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-class v0, Landroidx/car/app/navigation/b;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/car/app/navigation/b;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ln40;->a()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    const-string v0, "CarApp.Nav"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const-string p0, "Executing onAutoDriveEnabled"

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string p0, "NavigationManagerCallback not set, skipping onAutoDriveEnabled"

    .line 39
    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Lnk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/car/app/c;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Landroidx/car/app/c;-><init>(Landroidx/car/app/CarAppBinder;Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    const-string p0, "onConfigurationChanged"

    .line 12
    .line 13
    invoke-static {v0, p2, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDestroyLifecycle()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Llk;->ON_DESTROY:Llk;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/car/app/l;->b(Llk;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/car/app/CarAppBinder;->mCurrentSession:Landroidx/car/app/l;

    .line 12
    .line 13
    return-void
.end method

.method public onHandshakeCompleted(Lx7;Landroidx/car/app/IOnDoneCallback;)V
    .locals 9

    .line 1
    const-string v0, "onHandshakeCompleted"

    .line 2
    .line 3
    const-string v1, "Unknown host \'"

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/car/app/CarAppBinder;->mService:Landroidx/car/app/CarAppService;

    .line 6
    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lx7;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/car/app/HandshakeInfo;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/car/app/HandshakeInfo;->getHostPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    new-instance v6, Ln2;

    .line 26
    .line 27
    invoke-direct {v6, v4, v5}, Ln2;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getHostValidator()Lei;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7, v6}, Lei;->b(Ln2;)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_0

    .line 39
    .line 40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "\', uid:"

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p2, v0, p0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_0

    .line 71
    :catch_1
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, v2, Landroidx/car/app/CarAppService;->b:Landroidx/car/app/AppInfo;

    .line 74
    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    invoke-static {v2}, Landroidx/car/app/AppInfo;->create(Landroid/content/Context;)Landroidx/car/app/AppInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v2, Landroidx/car/app/CarAppService;->b:Landroidx/car/app/AppInfo;

    .line 82
    .line 83
    :cond_1
    iget-object v1, v2, Landroidx/car/app/CarAppService;->b:Landroidx/car/app/AppInfo;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/car/app/AppInfo;->getMinCarAppApiLevel()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v1}, Landroidx/car/app/AppInfo;->getLatestCarAppApiLevel()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {p1}, Landroidx/car/app/HandshakeInfo;->getHostCarAppApiLevel()I

    .line 94
    .line 95
    .line 96
    move-result v5
    :try_end_0
    .catch Lb8; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const-string v7, ")"

    .line 98
    .line 99
    const-string v8, "Host API level ("

    .line 100
    .line 101
    if-le v4, v5, :cond_2

    .line 102
    .line 103
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ") is less than the app\'s min API level ("

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p2, v0, p0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_2
    if-ge v1, v5, :cond_3

    .line 136
    .line 137
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v4, ") is greater than the app\'s max API level ("

    .line 148
    .line 149
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p2, v0, p0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_3
    iput-object v6, v2, Landroidx/car/app/CarAppService;->c:Ln2;

    .line 170
    .line 171
    iput-object p1, p0, Landroidx/car/app/CarAppBinder;->mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

    .line 172
    .line 173
    invoke-static {p2, v0, v3}, Landroidx/car/app/utils/e;->g(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lb8; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :goto_0
    iput-object v3, v2, Landroidx/car/app/CarAppService;->c:Ln2;

    .line 178
    .line 179
    invoke-static {p2, v0, p0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/car/app/CarAppBinder;->getCurrentLifecycle()Lnk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/car/app/c;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Landroidx/car/app/c;-><init>(Landroidx/car/app/CarAppBinder;Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    const-string p0, "onNewIntent"

    .line 12
    .line 13
    invoke-static {v0, p2, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setHandshakeInfo(Landroidx/car/app/HandshakeInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/car/app/HandshakeInfo;->getHostCarAppApiLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ls8;->r()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/car/app/CarAppBinder;->mHandshakeInfo:Landroidx/car/app/HandshakeInfo;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "Invalid Car App API level received: "

    .line 18
    .line 19
    invoke-static {v0, p0}, Lt20;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
