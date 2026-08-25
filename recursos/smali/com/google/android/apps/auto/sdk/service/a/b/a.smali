.class public final Lcom/google/android/apps/auto/sdk/service/a/b/a;
.super Lxa0;


# instance fields
.field private final a:Lcom/google/android/gms/car/CarNavigationStatusManager;

.field private b:Lcom/google/android/apps/auto/sdk/service/a/b/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/car/CarNavigationStatusManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/b/a;->a:Lcom/google/android/gms/car/CarNavigationStatusManager;

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/apps/auto/sdk/service/a/b/b;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/android/apps/auto/sdk/service/a/b/b;-><init>(Lcom/google/android/apps/auto/sdk/service/a/b/a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/b/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b/b;

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/car/CarNavigationStatusManager;->registerListener(Lcom/google/android/gms/car/CarNavigationStatusManager$CarNavigationStatusListener;)V
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Lt90;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method


# virtual methods
.method public final addListener(Lwa0;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/b/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/b/b;->b:Lva0;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public final removeListener()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/b/a;->a:Lcom/google/android/gms/car/CarNavigationStatusManager;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarNavigationStatusManager;->unregisterListener()V

    return-void
.end method

.method public final sendNavigationStatus(I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/b/a;->a:Lcom/google/android/gms/car/CarNavigationStatusManager;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarNavigationStatusManager;->sendNavigationStatus(I)Z
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Lt90;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final sendNavigationTurnDistanceEvent(IIII)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p4, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p4, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p4, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    if-eq p4, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x7

    .line 14
    if-ne p4, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "The units provided are not supported."

    .line 18
    .line 19
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/b/a;->a:Lcom/google/android/gms/car/CarNavigationStatusManager;

    .line 24
    .line 25
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/google/android/gms/car/CarNavigationStatusManager;->sendNavigationTurnDistanceEvent(IIII)Z
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance p1, Lt90;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final sendNavigationTurnEvent(ILjava/lang/CharSequence;III)V
    .locals 7

    .line 50
    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/auto/sdk/service/a/b/a;->sendNavigationTurnEvent(ILjava/lang/CharSequence;IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public final sendNavigationTurnEvent(ILjava/lang/CharSequence;IILandroid/graphics/Bitmap;I)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 10
    .line 11
    const/16 v3, 0x64

    .line 12
    .line 13
    invoke-virtual {p5, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    move-object v6, p5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v6, v0

    .line 23
    :goto_0
    if-nez p2, :cond_1

    .line 24
    .line 25
    :goto_1
    move-object v3, v0

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_1

    .line 32
    :goto_2
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/b/a;->a:Lcom/google/android/gms/car/CarNavigationStatusManager;

    .line 33
    .line 34
    move v2, p1

    .line 35
    move v4, p3

    .line 36
    move v5, p4

    .line 37
    move v7, p6

    .line 38
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/car/CarNavigationStatusManager;->sendNavigationTurnEvent(ILjava/lang/String;II[BI)Z
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    new-instance p1, Lt90;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method
