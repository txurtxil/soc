.class public final Lidv/lzn/screenonauto/ScreenCaptureService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:Landroid/os/PowerManager$WakeLock;

.field public b:La7;

.field public c:Lus;

.field public d:Landroid/content/SharedPreferences;

.field public final e:Liq;

.field public final f:Ly6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Liq;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1, p0}, Liq;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->e:Liq;

    .line 11
    .line 12
    new-instance v0, Ly6;

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-direct {v0, v1, p0}, Ly6;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->f:Ly6;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    const-string v1, "prefs"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    const-string v3, "root_user_disconnected"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    if-eqz v0, :cond_d

    .line 26
    .line 27
    const-string v3, "root_screen_off"

    .line 28
    .line 29
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_7

    .line 34
    .line 35
    iget-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    const-string v3, "root_touch_injection"

    .line 40
    .line 41
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_7

    .line 46
    .line 47
    iget-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    const-string v3, "map_action_back"

    .line 52
    .line 53
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_7

    .line 58
    .line 59
    iget-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    const-string v3, "map_action_home"

    .line 64
    .line 65
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    iget-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    const-string v1, "map_action_recents"

    .line 76
    .line 77
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-void

    .line 85
    :cond_3
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v2

    .line 89
    :cond_4
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v2

    .line 93
    :cond_5
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v2

    .line 97
    :cond_6
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v2

    .line 101
    :cond_7
    :goto_0
    sget-object v3, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 102
    .line 103
    invoke-virtual {v3}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_8
    invoke-virtual {v3, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->presentBackends(Landroid/content/Context;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v3}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getLastConnectedKind()Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_a

    .line 119
    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    move-object v5, v1

    .line 127
    goto :goto_2

    .line 128
    :cond_9
    :goto_1
    move-object v5, v2

    .line 129
    goto :goto_2

    .line 130
    :cond_a
    invoke-static {v0}, Lv9;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    move-object v2, v0

    .line 135
    check-cast v2, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :goto_2
    if-nez v5, :cond_b

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_b
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;->SHIZUKU:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 142
    .line 143
    if-ne v5, v0, :cond_c

    .line 144
    .line 145
    invoke-virtual {v3, p0, v5}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isAuthorised(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_c

    .line 150
    .line 151
    :goto_3
    return-void

    .line 152
    :cond_c
    const/4 v7, 0x4

    .line 153
    const/4 v8, 0x0

    .line 154
    const/4 v6, 0x0

    .line 155
    move-object v4, p0

    .line 156
    invoke-static/range {v3 .. v8}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect$default(Lidv/lzn/screenonauto/privileged/PrivilegedManager;Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_d
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v2

    .line 164
    :cond_e
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v2
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    const-string v2, "keep_awake"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->a:Landroid/os/PowerManager$WakeLock;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string v0, "power"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    check-cast v0, Landroid/os/PowerManager;

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    const-string v2, "ScreenOnAuto:mirror"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->a:Landroid/os/PowerManager$WakeLock;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->a:Landroid/os/PowerManager$WakeLock;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 52
    .line 53
    .line 54
    :cond_1
    iput-object v1, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->a:Landroid/os/PowerManager$WakeLock;

    .line 55
    .line 56
    :cond_2
    return-void

    .line 57
    :cond_3
    const-string p0, "prefs"

    .line 58
    .line 59
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1
.end method

.method public final c()V
    .locals 4

    .line 1
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 24
    .line 25
    .line 26
    sget p0, Lb00;->a:I

    .line 27
    .line 28
    sget p0, Lb00;->c:I

    .line 29
    .line 30
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 31
    .line 32
    if-ne p0, v2, :cond_0

    .line 33
    .line 34
    sget p0, Lb00;->d:I

    .line 35
    .line 36
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    .line 38
    if-eq p0, v3, :cond_1

    .line 39
    .line 40
    :cond_0
    const/4 v0, 0x1

    .line 41
    :cond_1
    sput v2, Lb00;->c:I

    .line 42
    .line 43
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 44
    .line 45
    sput p0, Lb00;->d:I

    .line 46
    .line 47
    iget p0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 48
    .line 49
    sput p0, Lb00;->e:I

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    sget-object p0, Lb00;->k:Landroid/os/Handler;

    .line 54
    .line 55
    new-instance v0, Lou;

    .line 56
    .line 57
    const/4 v1, 0x3

    .line 58
    invoke-direct {v0, v1}, Lou;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lidv/lzn/screenonauto/ScreenCaptureService;->c()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 5
    .line 6
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 7
    .line 8
    const v2, 0x7f1000b8

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lur;

    .line 16
    .line 17
    invoke-direct {v3, p0}, Lur;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/16 v6, 0x1a

    .line 24
    .line 25
    if-ge v4, v6, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v7, "car_mirror_channel"

    .line 29
    .line 30
    const/4 v8, 0x2

    .line 31
    invoke-static {v7, v2, v8}, Lfr;->c(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2, v5}, Lfr;->p(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v5}, Lfr;->q(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    invoke-static {v2, v7}, Lfr;->s(Landroid/app/NotificationChannel;Z)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v0, v1}, Lfr;->t(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {v2, v0}, Lfr;->d(Landroid/app/NotificationChannel;Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v0}, Lfr;->r(Landroid/app/NotificationChannel;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v5}, Lfr;->u(Landroid/app/NotificationChannel;[J)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v0}, Lfr;->e(Landroid/app/NotificationChannel;Z)V

    .line 59
    .line 60
    .line 61
    move-object v5, v2

    .line 62
    :goto_0
    if-lt v4, v6, :cond_1

    .line 63
    .line 64
    iget-object v0, v3, Lur;->a:Landroid/app/NotificationManager;

    .line 65
    .line 66
    invoke-static {v0, v5}, Ltr;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 70
    .line 71
    iget-object p0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->f:Ly6;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->addOnBackendAvailableListener(Lrg;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->addOnConnectionLostListener(Lrg;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 5
    .line 6
    iget-object v1, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->f:Ly6;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnBackendAvailableListener(Lrg;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnConnectionLostListener(Lrg;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->e:Liq;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->a:Landroid/os/PowerManager$WakeLock;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->a:Landroid/os/PowerManager$WakeLock;

    .line 32
    .line 33
    sput-object v1, Lnq;->f:Lx6;

    .line 34
    .line 35
    iget-object v2, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->b:La7;

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    iget-object v3, v2, La7;->l:Lx6;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnStateChangedListener(Lch;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v2, La7;->m:Ly6;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnBeforeDisconnectListener(Lrg;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v2, La7;->c:Landroid/os/Handler;

    .line 50
    .line 51
    iget-object v4, v2, La7;->k:Lm1;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v3, v2, La7;->f:Z

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, La7;->c()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v3, v2, La7;->i:Landroid/view/View;

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    :try_start_0
    iget-object v4, v2, La7;->d:Landroid/view/WindowManager;

    .line 68
    .line 69
    invoke-interface {v4, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :catchall_0
    :cond_3
    iput-object v1, v2, La7;->i:Landroid/view/View;

    .line 73
    .line 74
    iget-object v2, v2, La7;->j:Landroid/view/WindowManager$LayoutParams;

    .line 75
    .line 76
    const/high16 v3, -0x40800000    # -1.0f

    .line 77
    .line 78
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 79
    .line 80
    :cond_4
    iput-object v1, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->b:La7;

    .line 81
    .line 82
    iget-object v2, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->c:Lus;

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    invoke-virtual {v2}, Lus;->c()V

    .line 87
    .line 88
    .line 89
    :cond_5
    iput-object v1, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->c:Lus;

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->disconnect(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    sput-boolean p0, Lb00;->f:Z

    .line 96
    .line 97
    sget-object p0, Lb00;->k:Landroid/os/Handler;

    .line 98
    .line 99
    new-instance v0, Lou;

    .line 100
    .line 101
    const/4 v1, 0x4

    .line 102
    invoke-direct {v0, v1}, Lou;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    const-string v3, "idv.lzn.screenonauto.STOP_CAPTURE"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 22
    .line 23
    .line 24
    return v4

    .line 25
    :cond_1
    sget v2, Lb00;->a:I

    .line 26
    .line 27
    sget-object v5, Lb00;->b:Landroid/content/Intent;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    sput v6, Lb00;->a:I

    .line 31
    .line 32
    sput-object v1, Lb00;->b:Landroid/content/Intent;

    .line 33
    .line 34
    const/4 v7, -0x1

    .line 35
    if-ne v2, v7, :cond_2

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v9, v6

    .line 42
    :goto_1
    new-instance v10, Landroid/content/Intent;

    .line 43
    .line 44
    const-class v11, Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 45
    .line 46
    invoke-direct {v10, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    const/high16 v3, 0xc000000

    .line 53
    .line 54
    invoke-static {v0, v6, v10, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    new-instance v11, Landroid/content/Intent;

    .line 59
    .line 60
    const-class v12, Lidv/lzn/screenonauto/MainActivity;

    .line 61
    .line 62
    invoke-direct {v11, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    const/high16 v12, 0x24000000

    .line 66
    .line 67
    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v6, v11, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-instance v11, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v12, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v13, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v14, Landroid/app/Notification;

    .line 90
    .line 91
    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    .line 92
    .line 93
    .line 94
    move/from16 p1, v4

    .line 95
    .line 96
    move-object/from16 p2, v5

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    iput-wide v4, v14, Landroid/app/Notification;->when:J

    .line 103
    .line 104
    iput v7, v14, Landroid/app/Notification;->audioStreamType:I

    .line 105
    .line 106
    new-instance v4, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    const v5, 0x7f1000b8

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const/16 v7, 0x1400

    .line 119
    .line 120
    if-nez v5, :cond_3

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    if-le v15, v7, :cond_4

    .line 128
    .line 129
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    :cond_4
    :goto_2
    const v15, 0x7f1000b7

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    if-nez v15, :cond_5

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-le v8, v7, :cond_6

    .line 148
    .line 149
    invoke-virtual {v15, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    :cond_6
    :goto_3
    const v7, 0x1080052

    .line 154
    .line 155
    .line 156
    iput v7, v14, Landroid/app/Notification;->icon:I

    .line 157
    .line 158
    const v7, 0x7f100121

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    new-instance v8, Lgr;

    .line 166
    .line 167
    invoke-direct {v8, v7, v10}, Lgr;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    new-instance v7, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v7, Landroid/os/Bundle;

    .line 179
    .line 180
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 181
    .line 182
    .line 183
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    const-string v10, "car_mirror_channel"

    .line 186
    .line 187
    const/16 v6, 0x1a

    .line 188
    .line 189
    if-lt v8, v6, :cond_7

    .line 190
    .line 191
    invoke-static {v0, v10}, Lor;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    :goto_4
    move-object/from16 v16, v7

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    new-instance v8, Landroid/app/Notification$Builder;

    .line 199
    .line 200
    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :goto_5
    iget-wide v6, v14, Landroid/app/Notification;->when:J

    .line 205
    .line 206
    invoke-virtual {v8, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    iget v7, v14, Landroid/app/Notification;->icon:I

    .line 211
    .line 212
    iget v1, v14, Landroid/app/Notification;->iconLevel:I

    .line 213
    .line 214
    invoke-virtual {v6, v7, v1}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iget-object v6, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 219
    .line 220
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget-object v6, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 225
    .line 226
    const/4 v7, 0x0

    .line 227
    invoke-virtual {v1, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    iget-object v6, v14, Landroid/app/Notification;->vibrate:[J

    .line 232
    .line 233
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    iget v6, v14, Landroid/app/Notification;->ledARGB:I

    .line 238
    .line 239
    iget v7, v14, Landroid/app/Notification;->ledOnMS:I

    .line 240
    .line 241
    move/from16 v18, v9

    .line 242
    .line 243
    iget v9, v14, Landroid/app/Notification;->ledOffMS:I

    .line 244
    .line 245
    invoke-virtual {v1, v6, v7, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    iget v6, v14, Landroid/app/Notification;->flags:I

    .line 250
    .line 251
    and-int/lit8 v6, v6, 0x2

    .line 252
    .line 253
    if-eqz v6, :cond_8

    .line 254
    .line 255
    const/4 v6, 0x1

    .line 256
    goto :goto_6

    .line 257
    :cond_8
    const/4 v6, 0x0

    .line 258
    :goto_6
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    iget v6, v14, Landroid/app/Notification;->flags:I

    .line 263
    .line 264
    and-int/lit8 v6, v6, 0x8

    .line 265
    .line 266
    if-eqz v6, :cond_9

    .line 267
    .line 268
    const/4 v6, 0x1

    .line 269
    goto :goto_7

    .line 270
    :cond_9
    const/4 v6, 0x0

    .line 271
    :goto_7
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iget v6, v14, Landroid/app/Notification;->flags:I

    .line 276
    .line 277
    and-int/lit8 v6, v6, 0x10

    .line 278
    .line 279
    if-eqz v6, :cond_a

    .line 280
    .line 281
    const/4 v6, 0x1

    .line 282
    goto :goto_8

    .line 283
    :cond_a
    const/4 v6, 0x0

    .line 284
    :goto_8
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iget v6, v14, Landroid/app/Notification;->defaults:I

    .line 289
    .line 290
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    const/4 v7, 0x0

    .line 303
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget-object v3, v14, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 312
    .line 313
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    iget v3, v14, Landroid/app/Notification;->flags:I

    .line 318
    .line 319
    and-int/lit16 v3, v3, 0x80

    .line 320
    .line 321
    if-eqz v3, :cond_b

    .line 322
    .line 323
    const/4 v3, 0x1

    .line 324
    goto :goto_9

    .line 325
    :cond_b
    const/4 v3, 0x0

    .line 326
    :goto_9
    invoke-virtual {v1, v7, v3}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    const/4 v3, 0x0

    .line 335
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v1, v3, v3, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 340
    .line 341
    .line 342
    invoke-static {v8, v7}, Lhr;->c(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-static {v1, v3}, Lhr;->d(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v1, v3}, Lhr;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    const/4 v3, 0x0

    .line 358
    :goto_a
    const-string v6, "android.support.allowGeneratedReplies"

    .line 359
    .line 360
    if-ge v3, v1, :cond_11

    .line 361
    .line 362
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    add-int/lit8 v3, v3, 0x1

    .line 367
    .line 368
    check-cast v9, Lgr;

    .line 369
    .line 370
    iget-object v15, v9, Lgr;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 371
    .line 372
    iget-object v15, v9, Lgr;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 373
    .line 374
    iget-boolean v5, v9, Lgr;->c:Z

    .line 375
    .line 376
    iget-object v7, v9, Lgr;->a:Landroid/os/Bundle;

    .line 377
    .line 378
    move/from16 v19, v1

    .line 379
    .line 380
    if-eqz v15, :cond_c

    .line 381
    .line 382
    const/4 v1, 0x0

    .line 383
    invoke-static {v15, v1}, Lri;->f(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 384
    .line 385
    .line 386
    move-result-object v15

    .line 387
    goto :goto_b

    .line 388
    :cond_c
    const/4 v15, 0x0

    .line 389
    :goto_b
    iget-object v1, v9, Lgr;->e:Ljava/lang/CharSequence;

    .line 390
    .line 391
    move/from16 v20, v3

    .line 392
    .line 393
    iget-object v3, v9, Lgr;->f:Landroid/app/PendingIntent;

    .line 394
    .line 395
    invoke-static {v15, v1, v3}, Lmr;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-eqz v7, :cond_d

    .line 400
    .line 401
    new-instance v3, Landroid/os/Bundle;

    .line 402
    .line 403
    invoke-direct {v3, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 404
    .line 405
    .line 406
    goto :goto_c

    .line 407
    :cond_d
    new-instance v3, Landroid/os/Bundle;

    .line 408
    .line 409
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 410
    .line 411
    .line 412
    :goto_c
    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    .line 414
    .line 415
    invoke-static {v1, v5}, Lnr;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 416
    .line 417
    .line 418
    const-string v5, "android.support.action.semanticAction"

    .line 419
    .line 420
    const/4 v7, 0x0

    .line 421
    invoke-virtual {v3, v5, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 422
    .line 423
    .line 424
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 425
    .line 426
    const/16 v6, 0x1c

    .line 427
    .line 428
    if-lt v5, v6, :cond_e

    .line 429
    .line 430
    invoke-static {v1, v7}, Lpr;->b(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    .line 431
    .line 432
    .line 433
    :cond_e
    const/16 v6, 0x1d

    .line 434
    .line 435
    if-lt v5, v6, :cond_f

    .line 436
    .line 437
    invoke-static {v1, v7}, Lqr;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 438
    .line 439
    .line 440
    :cond_f
    const/16 v6, 0x1f

    .line 441
    .line 442
    if-lt v5, v6, :cond_10

    .line 443
    .line 444
    invoke-static {v1, v7}, Lrr;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 445
    .line 446
    .line 447
    :cond_10
    const-string v5, "android.support.action.showsUserInterface"

    .line 448
    .line 449
    iget-boolean v6, v9, Lgr;->d:Z

    .line 450
    .line 451
    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    .line 453
    .line 454
    invoke-static {v1, v3}, Lkr;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 455
    .line 456
    .line 457
    invoke-static {v1}, Lkr;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-static {v8, v1}, Lkr;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 462
    .line 463
    .line 464
    move/from16 v1, v19

    .line 465
    .line 466
    move/from16 v3, v20

    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_11
    const/4 v1, 0x1

    .line 470
    const/4 v7, 0x0

    .line 471
    invoke-static {v8, v1}, Lir;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 472
    .line 473
    .line 474
    invoke-static {v8, v7}, Lkr;->i(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 475
    .line 476
    .line 477
    const/4 v1, 0x0

    .line 478
    invoke-static {v8, v1}, Lkr;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 479
    .line 480
    .line 481
    invoke-static {v8, v1}, Lkr;->j(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 482
    .line 483
    .line 484
    invoke-static {v8, v7}, Lkr;->h(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 485
    .line 486
    .line 487
    invoke-static {v8, v1}, Llr;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 488
    .line 489
    .line 490
    invoke-static {v8, v7}, Llr;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 491
    .line 492
    .line 493
    invoke-static {v8, v7}, Llr;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 494
    .line 495
    .line 496
    invoke-static {v8, v1}, Llr;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 497
    .line 498
    .line 499
    iget-object v1, v14, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 500
    .line 501
    iget-object v3, v14, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 502
    .line 503
    invoke-static {v8, v1, v3}, Llr;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    .line 504
    .line 505
    .line 506
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 507
    .line 508
    const/16 v3, 0x1c

    .line 509
    .line 510
    if-ge v1, v3, :cond_15

    .line 511
    .line 512
    new-instance v1, Ljava/util/ArrayList;

    .line 513
    .line 514
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    const/4 v5, 0x0

    .line 526
    :goto_d
    if-ge v5, v3, :cond_14

    .line 527
    .line 528
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    add-int/lit8 v5, v5, 0x1

    .line 533
    .line 534
    check-cast v7, Llt;

    .line 535
    .line 536
    iget-object v9, v7, Llt;->a:Ljava/lang/CharSequence;

    .line 537
    .line 538
    iget-object v7, v7, Llt;->c:Ljava/lang/String;

    .line 539
    .line 540
    if-eqz v7, :cond_12

    .line 541
    .line 542
    goto :goto_e

    .line 543
    :cond_12
    if-eqz v9, :cond_13

    .line 544
    .line 545
    new-instance v7, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string v11, "name:"

    .line 548
    .line 549
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    goto :goto_e

    .line 560
    :cond_13
    const-string v7, ""

    .line 561
    .line 562
    :goto_e
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    goto :goto_d

    .line 566
    :cond_14
    new-instance v3, Lv6;

    .line 567
    .line 568
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 573
    .line 574
    .line 575
    move-result v7

    .line 576
    add-int/2addr v7, v5

    .line 577
    invoke-direct {v3, v7}, Lv6;-><init>(I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3, v1}, Lv6;->addAll(Ljava/util/Collection;)Z

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3, v4}, Lv6;->addAll(Ljava/util/Collection;)Z

    .line 584
    .line 585
    .line 586
    new-instance v4, Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 589
    .line 590
    .line 591
    :cond_15
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-nez v1, :cond_16

    .line 596
    .line 597
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    const/4 v3, 0x0

    .line 602
    :goto_f
    if-ge v3, v1, :cond_16

    .line 603
    .line 604
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    add-int/lit8 v3, v3, 0x1

    .line 609
    .line 610
    check-cast v5, Ljava/lang/String;

    .line 611
    .line 612
    invoke-static {v8, v5}, Llr;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 613
    .line 614
    .line 615
    goto :goto_f

    .line 616
    :cond_16
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    if-lez v1, :cond_1b

    .line 621
    .line 622
    new-instance v1, Landroid/os/Bundle;

    .line 623
    .line 624
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 625
    .line 626
    .line 627
    const-string v3, "android.car.EXTENSIONS"

    .line 628
    .line 629
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    if-nez v4, :cond_17

    .line 634
    .line 635
    new-instance v4, Landroid/os/Bundle;

    .line 636
    .line 637
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 638
    .line 639
    .line 640
    :cond_17
    new-instance v5, Landroid/os/Bundle;

    .line 641
    .line 642
    invoke-direct {v5, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 643
    .line 644
    .line 645
    new-instance v7, Landroid/os/Bundle;

    .line 646
    .line 647
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 648
    .line 649
    .line 650
    const/4 v9, 0x0

    .line 651
    :goto_10
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 652
    .line 653
    .line 654
    move-result v11

    .line 655
    if-ge v9, v11, :cond_1a

    .line 656
    .line 657
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v11

    .line 661
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v14

    .line 665
    check-cast v14, Lgr;

    .line 666
    .line 667
    new-instance v15, Landroid/os/Bundle;

    .line 668
    .line 669
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 670
    .line 671
    .line 672
    move/from16 v19, v9

    .line 673
    .line 674
    iget-object v9, v14, Lgr;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 675
    .line 676
    iget-object v9, v14, Lgr;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 677
    .line 678
    move-object/from16 v20, v9

    .line 679
    .line 680
    iget-object v9, v14, Lgr;->a:Landroid/os/Bundle;

    .line 681
    .line 682
    if-eqz v20, :cond_18

    .line 683
    .line 684
    invoke-virtual/range {v20 .. v20}, Landroidx/core/graphics/drawable/IconCompat;->d()I

    .line 685
    .line 686
    .line 687
    move-result v20

    .line 688
    move/from16 v21, v20

    .line 689
    .line 690
    move-object/from16 v20, v10

    .line 691
    .line 692
    move/from16 v10, v21

    .line 693
    .line 694
    :goto_11
    move-object/from16 v21, v13

    .line 695
    .line 696
    goto :goto_12

    .line 697
    :cond_18
    move-object/from16 v20, v10

    .line 698
    .line 699
    const/4 v10, 0x0

    .line 700
    goto :goto_11

    .line 701
    :goto_12
    const-string v13, "icon"

    .line 702
    .line 703
    invoke-virtual {v15, v13, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 704
    .line 705
    .line 706
    const-string v10, "title"

    .line 707
    .line 708
    iget-object v13, v14, Lgr;->e:Ljava/lang/CharSequence;

    .line 709
    .line 710
    invoke-virtual {v15, v10, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 711
    .line 712
    .line 713
    const-string v10, "actionIntent"

    .line 714
    .line 715
    iget-object v13, v14, Lgr;->f:Landroid/app/PendingIntent;

    .line 716
    .line 717
    invoke-virtual {v15, v10, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 718
    .line 719
    .line 720
    if-eqz v9, :cond_19

    .line 721
    .line 722
    new-instance v10, Landroid/os/Bundle;

    .line 723
    .line 724
    invoke-direct {v10, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 725
    .line 726
    .line 727
    goto :goto_13

    .line 728
    :cond_19
    new-instance v10, Landroid/os/Bundle;

    .line 729
    .line 730
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 731
    .line 732
    .line 733
    :goto_13
    iget-boolean v9, v14, Lgr;->c:Z

    .line 734
    .line 735
    invoke-virtual {v10, v6, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    .line 737
    .line 738
    const-string v9, "extras"

    .line 739
    .line 740
    invoke-virtual {v15, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 741
    .line 742
    .line 743
    const-string v9, "remoteInputs"

    .line 744
    .line 745
    const/4 v10, 0x0

    .line 746
    invoke-virtual {v15, v9, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 747
    .line 748
    .line 749
    const-string v9, "showsUserInterface"

    .line 750
    .line 751
    iget-boolean v10, v14, Lgr;->d:Z

    .line 752
    .line 753
    invoke-virtual {v15, v9, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    .line 755
    .line 756
    const-string v9, "semanticAction"

    .line 757
    .line 758
    const/4 v10, 0x0

    .line 759
    invoke-virtual {v15, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v7, v11, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 763
    .line 764
    .line 765
    add-int/lit8 v9, v19, 0x1

    .line 766
    .line 767
    move-object/from16 v10, v20

    .line 768
    .line 769
    move-object/from16 v13, v21

    .line 770
    .line 771
    goto :goto_10

    .line 772
    :cond_1a
    move-object/from16 v20, v10

    .line 773
    .line 774
    const-string v6, "invisible_actions"

    .line 775
    .line 776
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 783
    .line 784
    .line 785
    move-object/from16 v4, v16

    .line 786
    .line 787
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 788
    .line 789
    .line 790
    goto :goto_14

    .line 791
    :cond_1b
    move-object/from16 v20, v10

    .line 792
    .line 793
    const/4 v1, 0x0

    .line 794
    :goto_14
    invoke-static {v8, v1}, Ljr;->a(Landroid/app/Notification$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 795
    .line 796
    .line 797
    const/4 v1, 0x0

    .line 798
    invoke-static {v8, v1}, Lnr;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 799
    .line 800
    .line 801
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 802
    .line 803
    const/16 v4, 0x1a

    .line 804
    .line 805
    if-lt v3, v4, :cond_1c

    .line 806
    .line 807
    const/4 v7, 0x0

    .line 808
    invoke-static {v8, v7}, Lor;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 809
    .line 810
    .line 811
    invoke-static {v8, v1}, Lor;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 812
    .line 813
    .line 814
    invoke-static {v8, v1}, Lor;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 815
    .line 816
    .line 817
    const-wide/16 v4, 0x0

    .line 818
    .line 819
    invoke-static {v8, v4, v5}, Lor;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    .line 820
    .line 821
    .line 822
    invoke-static {v8, v7}, Lor;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 823
    .line 824
    .line 825
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 826
    .line 827
    .line 828
    move-result v4

    .line 829
    if-nez v4, :cond_1c

    .line 830
    .line 831
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 836
    .line 837
    .line 838
    move-result-object v4

    .line 839
    invoke-virtual {v4, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 840
    .line 841
    .line 842
    move-result-object v4

    .line 843
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 844
    .line 845
    .line 846
    :cond_1c
    const/16 v6, 0x1c

    .line 847
    .line 848
    if-lt v3, v6, :cond_1d

    .line 849
    .line 850
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    const/4 v3, 0x0

    .line 855
    :goto_15
    if-ge v3, v1, :cond_1d

    .line 856
    .line 857
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v4

    .line 861
    add-int/lit8 v3, v3, 0x1

    .line 862
    .line 863
    check-cast v4, Llt;

    .line 864
    .line 865
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 866
    .line 867
    .line 868
    invoke-static {v4}, Lkt;->b(Llt;)Landroid/app/Person;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    invoke-static {v8, v4}, Lpr;->a(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 873
    .line 874
    .line 875
    goto :goto_15

    .line 876
    :cond_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 877
    .line 878
    const/16 v6, 0x1d

    .line 879
    .line 880
    if-lt v1, v6, :cond_1e

    .line 881
    .line 882
    const/4 v3, 0x1

    .line 883
    invoke-static {v8, v3}, Lqr;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 884
    .line 885
    .line 886
    const/4 v7, 0x0

    .line 887
    invoke-static {v8, v7}, Lqr;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 888
    .line 889
    .line 890
    :cond_1e
    const/16 v4, 0x1a

    .line 891
    .line 892
    if-lt v1, v4, :cond_1f

    .line 893
    .line 894
    invoke-static {v8}, Lhr;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    goto :goto_16

    .line 899
    :cond_1f
    invoke-static {v8}, Lhr;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 900
    .line 901
    .line 902
    move-result-object v3

    .line 903
    :goto_16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    if-eqz v18, :cond_20

    .line 907
    .line 908
    const/16 v6, 0x1d

    .line 909
    .line 910
    if-lt v1, v6, :cond_20

    .line 911
    .line 912
    invoke-static {v0, v3}, Lb0;->n(Lidv/lzn/screenonauto/ScreenCaptureService;Landroid/app/Notification;)V

    .line 913
    .line 914
    .line 915
    goto :goto_17

    .line 916
    :cond_20
    const/16 v1, 0x3e9

    .line 917
    .line 918
    invoke-virtual {v0, v1, v3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 919
    .line 920
    .line 921
    :goto_17
    if-nez v18, :cond_21

    .line 922
    .line 923
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 924
    .line 925
    .line 926
    return p1

    .line 927
    :cond_21
    const-class v1, Landroid/media/projection/MediaProjectionManager;

    .line 928
    .line 929
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    .line 934
    .line 935
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    move-object/from16 v3, p2

    .line 939
    .line 940
    invoke-virtual {v1, v2, v3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    .line 941
    .line 942
    .line 943
    move-result-object v1

    .line 944
    if-nez v1, :cond_22

    .line 945
    .line 946
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 947
    .line 948
    .line 949
    return p1

    .line 950
    :cond_22
    invoke-static {v0}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v2

    .line 954
    const/4 v7, 0x0

    .line 955
    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 960
    .line 961
    .line 962
    iput-object v2, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 963
    .line 964
    invoke-virtual {v0}, Lidv/lzn/screenonauto/ScreenCaptureService;->c()V

    .line 965
    .line 966
    .line 967
    sget v2, Lb00;->a:I

    .line 968
    .line 969
    iget-object v2, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 970
    .line 971
    const-string v3, "prefs"

    .line 972
    .line 973
    if-eqz v2, :cond_30

    .line 974
    .line 975
    const-string v4, "self_draw"

    .line 976
    .line 977
    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 978
    .line 979
    .line 980
    move-result v2

    .line 981
    sget-object v4, Lb00;->k:Landroid/os/Handler;

    .line 982
    .line 983
    new-instance v5, Lsu;

    .line 984
    .line 985
    const/4 v6, 0x1

    .line 986
    invoke-direct {v5, v6, v2}, Lsu;-><init>(IZ)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 990
    .line 991
    .line 992
    new-instance v2, Lm1;

    .line 993
    .line 994
    const/16 v5, 0xe

    .line 995
    .line 996
    invoke-direct {v2, v5, v1}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1000
    .line 1001
    .line 1002
    iget-object v1, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 1003
    .line 1004
    if-eqz v1, :cond_2f

    .line 1005
    .line 1006
    iget-object v2, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->e:Liq;

    .line 1007
    .line 1008
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v0}, Lidv/lzn/screenonauto/ScreenCaptureService;->a()V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v0}, Lidv/lzn/screenonauto/ScreenCaptureService;->b()V

    .line 1015
    .line 1016
    .line 1017
    iget-object v1, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->b:La7;

    .line 1018
    .line 1019
    if-eqz v1, :cond_25

    .line 1020
    .line 1021
    sget-object v2, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 1022
    .line 1023
    iget-object v4, v1, La7;->l:Lx6;

    .line 1024
    .line 1025
    invoke-virtual {v2, v4}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnStateChangedListener(Lch;)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v4, v1, La7;->m:Ly6;

    .line 1029
    .line 1030
    invoke-virtual {v2, v4}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnBeforeDisconnectListener(Lrg;)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v2, v1, La7;->c:Landroid/os/Handler;

    .line 1034
    .line 1035
    iget-object v4, v1, La7;->k:Lm1;

    .line 1036
    .line 1037
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1038
    .line 1039
    .line 1040
    iget-boolean v2, v1, La7;->f:Z

    .line 1041
    .line 1042
    if-eqz v2, :cond_23

    .line 1043
    .line 1044
    invoke-virtual {v1}, La7;->c()V

    .line 1045
    .line 1046
    .line 1047
    :cond_23
    iget-object v2, v1, La7;->i:Landroid/view/View;

    .line 1048
    .line 1049
    if-eqz v2, :cond_24

    .line 1050
    .line 1051
    :try_start_0
    iget-object v4, v1, La7;->d:Landroid/view/WindowManager;

    .line 1052
    .line 1053
    invoke-interface {v4, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    .line 1055
    .line 1056
    :catchall_0
    :cond_24
    const/4 v7, 0x0

    .line 1057
    iput-object v7, v1, La7;->i:Landroid/view/View;

    .line 1058
    .line 1059
    iget-object v1, v1, La7;->j:Landroid/view/WindowManager$LayoutParams;

    .line 1060
    .line 1061
    const/high16 v2, -0x40800000    # -1.0f

    .line 1062
    .line 1063
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1064
    .line 1065
    :cond_25
    new-instance v1, La7;

    .line 1066
    .line 1067
    iget-object v2, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 1068
    .line 1069
    if-eqz v2, :cond_2e

    .line 1070
    .line 1071
    invoke-direct {v1, v0, v2}, La7;-><init>(Lidv/lzn/screenonauto/ScreenCaptureService;Landroid/content/SharedPreferences;)V

    .line 1072
    .line 1073
    .line 1074
    iput-object v1, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->b:La7;

    .line 1075
    .line 1076
    iget-object v1, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->c:Lus;

    .line 1077
    .line 1078
    if-eqz v1, :cond_26

    .line 1079
    .line 1080
    invoke-virtual {v1}, Lus;->c()V

    .line 1081
    .line 1082
    .line 1083
    :cond_26
    new-instance v1, Lus;

    .line 1084
    .line 1085
    iget-object v2, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 1086
    .line 1087
    if-eqz v2, :cond_2d

    .line 1088
    .line 1089
    invoke-direct {v1, v0, v2}, Lus;-><init>(Lidv/lzn/screenonauto/ScreenCaptureService;Landroid/content/SharedPreferences;)V

    .line 1090
    .line 1091
    .line 1092
    iput-object v1, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->c:Lus;

    .line 1093
    .line 1094
    new-instance v1, Lx6;

    .line 1095
    .line 1096
    const/4 v2, 0x4

    .line 1097
    invoke-direct {v1, v2, v0}, Lx6;-><init>(ILjava/lang/Object;)V

    .line 1098
    .line 1099
    .line 1100
    sput-object v1, Lnq;->f:Lx6;

    .line 1101
    .line 1102
    sget-boolean v1, Lnq;->d:Z

    .line 1103
    .line 1104
    if-nez v1, :cond_27

    .line 1105
    .line 1106
    sget-boolean v1, Lnq;->e:Z

    .line 1107
    .line 1108
    if-eqz v1, :cond_29

    .line 1109
    .line 1110
    :cond_27
    iget-object v1, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->b:La7;

    .line 1111
    .line 1112
    const/4 v3, 0x1

    .line 1113
    if-eqz v1, :cond_28

    .line 1114
    .line 1115
    iput-boolean v3, v1, La7;->e:Z

    .line 1116
    .line 1117
    invoke-virtual {v1}, La7;->b()V

    .line 1118
    .line 1119
    .line 1120
    :cond_28
    iget-object v1, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->c:Lus;

    .line 1121
    .line 1122
    if-eqz v1, :cond_29

    .line 1123
    .line 1124
    invoke-virtual {v1, v3}, Lus;->b(Z)V

    .line 1125
    .line 1126
    .line 1127
    :cond_29
    sget-boolean v1, Lnq;->d:Z

    .line 1128
    .line 1129
    if-nez v1, :cond_2a

    .line 1130
    .line 1131
    sget-boolean v1, Lnq;->e:Z

    .line 1132
    .line 1133
    if-eqz v1, :cond_2c

    .line 1134
    .line 1135
    :cond_2a
    invoke-static {v0}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    const/4 v7, 0x0

    .line 1140
    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    const-string v2, "auto_launch_package"

    .line 1145
    .line 1146
    const/4 v7, 0x0

    .line 1147
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v1

    .line 1151
    if-eqz v1, :cond_2c

    .line 1152
    .line 1153
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1154
    .line 1155
    .line 1156
    move-result v2

    .line 1157
    if-nez v2, :cond_2b

    .line 1158
    .line 1159
    goto :goto_18

    .line 1160
    :cond_2b
    invoke-static {v0, v1}, Lz5;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    :cond_2c
    :goto_18
    return p1

    .line 1164
    :cond_2d
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    const/16 v17, 0x0

    .line 1168
    .line 1169
    throw v17

    .line 1170
    :cond_2e
    const/16 v17, 0x0

    .line 1171
    .line 1172
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    throw v17

    .line 1176
    :cond_2f
    const/16 v17, 0x0

    .line 1177
    .line 1178
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    throw v17

    .line 1182
    :cond_30
    const/16 v17, 0x0

    .line 1183
    .line 1184
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    throw v17
.end method
