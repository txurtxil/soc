.class final Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/car/CarApiConnection$ApiConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;-><init>(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->access$600(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lv90;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lh90;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    throw v1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
.end method


# virtual methods
.method public final onConnected()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApiConnection:Lcom/google/android/gms/car/CarApiConnection;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/car/CarApiConnection;->getCarApi()Lcom/google/android/gms/car/CarApi;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, v1, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->access$300(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    new-instance v2, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;-><init>(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;B)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->access$300(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->access$302(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;)Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/google/android/gms/car/CarApi;->isConnectedToCar()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->mCarApi:Lcom/google/android/gms/car/CarApi;

    .line 60
    .line 61
    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->access$300(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {v0, p0}, Lcom/google/android/gms/car/CarApi;->registerCarConnectionListener(Lcom/google/android/gms/car/CarApi$CarConnectionCallback;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->access$500(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lv90;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lh90;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    throw p0

    .line 80
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final onConnectionFailed()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a()V

    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$a;->a()V

    return-void
.end method
