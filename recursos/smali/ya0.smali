.class public abstract Lya0;
.super Lcb0;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lza0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    :try_start_0
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lbb0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/car/CarInfoManager;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager;->loadCarInfo()Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->isHidePhoneSignal()Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/car/CarNotConnectedException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final g()Z
    .locals 1

    :try_start_0
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lbb0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/car/CarInfoManager;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager;->loadCarInfo()Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->isHideBatteryLevel()Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/car/CarNotConnectedException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final h()Z
    .locals 1

    :try_start_0
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lbb0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/car/CarInfoManager;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager;->loadCarInfo()Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->isHideProjectedClock()Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/car/CarNotConnectedException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
