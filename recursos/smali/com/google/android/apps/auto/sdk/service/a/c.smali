.class public final Lcom/google/android/apps/auto/sdk/service/a/c;
.super Ls90;


# instance fields
.field private a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/car/CarInfoManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/car/CarInfoManager;->loadCarInfo()Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/car/CarInfoManager;->loadCarUiInfo()Lcom/google/android/gms/car/CarInfoManager$CarUiInfo;
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Lt90;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_0
    const-string p0, "carInfoManager must be non-null."

    .line 24
    .line 25
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0
.end method


# virtual methods
.method public final getDriverPosition()I
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->getDriverPosition()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public final getHeadunitManufacturer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->getManufacturer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHeadunitModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->getHeadUnitModel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHeadunitSoftwareBuild()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->getHeadUnitSoftwareBuild()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHeadunitSoftwareVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->getHeadUnitSoftwareVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->getManufacturer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->getModel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getModelYear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->getModelYear()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVehicleId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarInfoManager$CarInfo;->getVehicleId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onCarDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/c;->a:Lcom/google/android/gms/car/CarInfoManager$CarInfo;

    return-void
.end method
