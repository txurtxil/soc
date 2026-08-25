.class public final Lcom/google/android/apps/auto/sdk/service/vec/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager;


# instance fields
.field private final a:Lcom/google/android/gms/car/CarVendorExtensionManager;

.field private b:Lcom/google/android/apps/auto/sdk/service/vec/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/car/CarVendorExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->a:Lcom/google/android/gms/car/CarVendorExtensionManager;

    return-void
.end method


# virtual methods
.method public final getServiceData()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->a:Lcom/google/android/gms/car/CarVendorExtensionManager;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/car/CarVendorExtensionManager;->getServiceData()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Lt90;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->a:Lcom/google/android/gms/car/CarVendorExtensionManager;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/car/CarVendorExtensionManager;->getServiceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Lt90;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public final registerListener(Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->b:Lcom/google/android/apps/auto/sdk/service/vec/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/auto/sdk/service/vec/b;->a:Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/apps/auto/sdk/service/vec/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/auto/sdk/service/vec/b;-><init>(Lcom/google/android/apps/auto/sdk/service/vec/a;Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->b:Lcom/google/android/apps/auto/sdk/service/vec/b;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->a:Lcom/google/android/gms/car/CarVendorExtensionManager;

    invoke-interface {p0, v0}, Lcom/google/android/gms/car/CarVendorExtensionManager;->registerListener(Lcom/google/android/gms/car/CarVendorExtensionManager$CarVendorExtensionListener;)V

    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->a:Lcom/google/android/gms/car/CarVendorExtensionManager;

    invoke-interface {v0}, Lcom/google/android/gms/car/CarVendorExtensionManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->b:Lcom/google/android/apps/auto/sdk/service/vec/b;

    return-void
.end method

.method public final sendData([B)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->a:Lcom/google/android/gms/car/CarVendorExtensionManager;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarVendorExtensionManager;->sendData([B)V
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

.method public final sendData([BII)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->a:Lcom/google/android/gms/car/CarVendorExtensionManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/car/CarVendorExtensionManager;->sendData([BII)V
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lt90;

    .line 14
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 15
    throw p1
.end method

.method public final unregisterListener()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->a:Lcom/google/android/gms/car/CarVendorExtensionManager;

    invoke-interface {v0}, Lcom/google/android/gms/car/CarVendorExtensionManager;->unregisterListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/vec/a;->b:Lcom/google/android/apps/auto/sdk/service/vec/b;

    return-void
.end method
