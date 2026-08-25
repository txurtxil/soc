.class final Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/car/CarApi$CarConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;-><init>(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)V

    return-void
.end method


# virtual methods
.method public final onConnected(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->access$100(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lv90;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lh90;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final onDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms$b;->a:Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;

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
    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;->access$200(Lcom/google/android/apps/auto/sdk/service/CarServiceLoaderGms;)Lv90;

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
