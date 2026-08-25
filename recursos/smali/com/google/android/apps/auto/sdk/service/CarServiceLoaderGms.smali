.class public Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;
.super Lw90;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;,
        Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAR.SVC.LOADER.GMS"


# instance fields
.field private mApiConnectionCallback:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;

.field mApiFactory:Lza0;

.field mCarApi:Lcom/google/android/gms/car/CarApi;

.field private mCarApiCallback:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;

.field mCarApiConnection:Lcom/google/android/gms/car/CarApiConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv90;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lw90;-><init>(Landroid/content/Context;Lv90;Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;-><init>(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;B)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mApiConnectionCallback:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;

    .line 11
    .line 12
    new-instance p1, Lza0;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mApiFactory:Lza0;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lv90;
    .locals 0

    invoke-virtual {p0}, Lw90;->getConnectionCallback()Lv90;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lv90;
    .locals 0

    invoke-virtual {p0}, Lw90;->getConnectionCallback()Lv90;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApiCallback:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;)Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApiCallback:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lv90;
    .locals 0

    invoke-virtual {p0}, Lw90;->getConnectionCallback()Lv90;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lv90;
    .locals 0

    invoke-virtual {p0}, Lw90;->getConnectionCallback()Lv90;

    move-result-object p0

    return-object p0
.end method

.method private getCarManagerInternal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sparse-switch v1, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :sswitch_0
    const-string v1, "app_focus"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/google/android/apps/auto/sdk/service/a/a;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 23
    .line 24
    invoke-interface {v2, p1}, Lcom/google/android/gms/car/CarApi;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/gms/car/CarMessageManager;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/google/android/apps/auto/sdk/service/a/a;-><init>(Lcom/google/android/gms/car/CarMessageManager;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    move-object v0, v1

    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v1, "audio"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 51
    .line 52
    invoke-interface {v1, p1}, Lcom/google/android/gms/car/CarApi;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/google/android/gms/car/CarAudioManager;

    .line 57
    .line 58
    new-instance v1, Lcom/google/android/apps/auto/sdk/service/a/a/a;

    .line 59
    .line 60
    invoke-virtual {p0}, Lw90;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "audio"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/media/AudioManager;

    .line 71
    .line 72
    invoke-direct {v1, v2, p1}, Lcom/google/android/apps/auto/sdk/service/a/a/a;-><init>(Landroid/media/AudioManager;Lcom/google/android/gms/car/CarAudioManager;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :sswitch_2
    const-string v1, "info"

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    new-instance v1, Lcom/google/android/apps/auto/sdk/service/a/c;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 87
    .line 88
    invoke-interface {v2, p1}, Lcom/google/android/gms/car/CarApi;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/google/android/gms/car/CarInfoManager;

    .line 93
    .line 94
    invoke-direct {v1, p1}, Lcom/google/android/apps/auto/sdk/service/a/c;-><init>(Lcom/google/android/gms/car/CarInfoManager;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :sswitch_3
    const-string v1, "sensor"

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    new-instance v1, Lcom/google/android/apps/auto/sdk/service/a/d;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 109
    .line 110
    invoke-interface {v2, p1}, Lcom/google/android/gms/car/CarApi;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/google/android/gms/car/CarSensorManager;

    .line 115
    .line 116
    invoke-direct {v1, p1}, Lcom/google/android/apps/auto/sdk/service/a/d;-><init>(Lcom/google/android/gms/car/CarSensorManager;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :sswitch_4
    const-string v1, "vec_loader"

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_0

    .line 127
    .line 128
    new-instance p1, Lcom/google/android/apps/auto/sdk/service/CarVendorExtensionManagerLoader;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 131
    .line 132
    invoke-direct {p1, v1}, Lcom/google/android/apps/auto/sdk/service/CarVendorExtensionManagerLoader;-><init>(Lcom/google/android/gms/car/CarApi;)V

    .line 133
    .line 134
    .line 135
    move-object v0, p1

    .line 136
    goto :goto_3

    .line 137
    :sswitch_5
    const-string v1, "car_navigation_service"

    .line 138
    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_0

    .line 144
    .line 145
    new-instance v1, Lcom/google/android/apps/auto/sdk/service/a/b/a;

    .line 146
    .line 147
    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 148
    .line 149
    invoke-interface {v2, p1}, Lcom/google/android/gms/car/CarApi;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/google/android/gms/car/CarNavigationStatusManager;

    .line 154
    .line 155
    invoke-direct {v1, p1}, Lcom/google/android/apps/auto/sdk/service/a/b/a;-><init>(Lcom/google/android/gms/car/CarNavigationStatusManager;)V
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :goto_1
    :try_start_1
    new-instance v0, Lt90;

    .line 160
    .line 161
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_2
    monitor-exit p0

    .line 166
    throw p1

    .line 167
    :catch_1
    :cond_0
    :goto_3
    monitor-exit p0

    .line 168
    return-object v0

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x6e7fee2b -> :sswitch_5
        -0x5b0c88e2 -> :sswitch_4
        -0x35ffac46 -> :sswitch_3
        0x3164ae -> :sswitch_2
        0x58d9bd6 -> :sswitch_1
        0x6d19553a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public connect()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mApiFactory:Lza0;

    invoke-virtual {p0}, Lw90;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mApiConnectionCallback:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;

    invoke-virtual {p0}, Lw90;->getEventHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lza0;->a(Landroid/content/Context;Lcom/google/android/gms/car/CarApiConnection$ApiConnectionCallback;Landroid/os/Looper;)Lcom/google/android/gms/car/CarApiConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApiConnection:Lcom/google/android/gms/car/CarApiConnection;
    :try_end_1
    .catch Lab0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lcom/google/android/gms/car/CarApiConnection;->connect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public disconnect()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApiCallback:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/car/CarApi;->unregisterCarConnectionListener(Lcom/google/android/gms/car/CarApi$CarConnectionCallback;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApiConnection:Lcom/google/android/gms/car/CarApiConnection;

    invoke-interface {v0}, Lcom/google/android/gms/car/CarApiConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApiConnection:Lcom/google/android/gms/car/CarApiConnection;

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCarConnectionType()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->isConnected()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/car/CarApi;->getCarConnectionType()I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_1
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :cond_1
    :goto_0
    monitor-exit p0

    .line 32
    return v1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :try_start_2
    new-instance v1, Lt90;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :cond_2
    new-instance v0, Lt90;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 45
    .line 46
    .line 47
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    throw v0
.end method

.method public getCarManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->isConnected()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->getCarManagerInternal(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_1
    .catch Lt90; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    :try_start_2
    new-instance v0, Lt90;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_0
    new-instance p1, Lt90;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :goto_0
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/car/CarApi;->isConnectedToCar()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
