.class public final Lcom/google/android/apps/auto/sdk/service/a/d;
.super Lsa0;


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/car/CarSensorManager;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:[I

.field private e:Lcom/google/android/apps/auto/sdk/service/a/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/auto/sdk/service/a/c/b<",
            "Lra0;",
            "Lcom/google/android/apps/auto/sdk/service/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/auto/sdk/service/a/d;->b:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/car/CarSensorManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->a:Lcom/google/android/gms/car/CarSensorManager;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/apps/auto/sdk/service/a/c/b;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/apps/auto/sdk/service/a/e;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/apps/auto/sdk/service/a/e;-><init>(Lcom/google/android/apps/auto/sdk/service/a/d;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/google/android/apps/auto/sdk/service/a/c/b;-><init>(Lcom/google/android/apps/auto/sdk/service/a/c/d;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->e:Lcom/google/android/apps/auto/sdk/service/a/c/b;

    .line 17
    .line 18
    return-void
.end method

.method private final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->a:Lcom/google/android/gms/car/CarSensorManager;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/car/CarSensorManager;->getSupportedSensors()[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    array-length v1, v0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_2

    .line 24
    .line 25
    aget v3, v0, v2

    .line 26
    .line 27
    :try_start_1
    sget-object v4, Lcom/google/android/apps/auto/sdk/service/a/d;->b:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iget-object v4, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->c:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->c:Ljava/util/ArrayList;

    .line 52
    .line 53
    return-object p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string v0, "CSL.CarSensorManagerGms"

    .line 56
    .line 57
    const-string v1, "Car Not Connected"

    .line 58
    .line 59
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    new-instance v0, Lt90;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method


# virtual methods
.method public final addListener(Lra0;II)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/apps/auto/sdk/service/a/d;->isSensorSupported(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->e:Lcom/google/android/apps/auto/sdk/service/a/c/b;

    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/auto/sdk/service/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/google/android/apps/auto/sdk/service/a/f;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->a:Lcom/google/android/gms/car/CarSensorManager;

    .line 22
    .line 23
    invoke-interface {v1, v0, p2, p3}, Lcom/google/android/gms/car/CarSensorManager;->registerListener(Lcom/google/android/gms/car/CarSensorManager$CarSensorEventListener;II)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return p0

    .line 28
    :catch_0
    move-exception p3

    .line 29
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->e:Lcom/google/android/apps/auto/sdk/service/a/c/b;

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p2, p1}, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;

    .line 36
    .line 37
    .line 38
    new-instance p0, Lt90;

    .line 39
    .line 40
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final getLatestSensorEvent(I)Lpa0;
    .locals 6

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->a:Lcom/google/android/gms/car/CarSensorManager;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarSensorManager;->getLatestSensorEvent(I)Lcom/google/android/gms/car/CarSensorManager$RawEventData;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lpa0;

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/gms/car/CarSensorManager$RawEventData;->sensorType:I

    .line 10
    .line 11
    iget-wide v2, p0, Lcom/google/android/gms/car/CarSensorManager$RawEventData;->timeStamp:J

    .line 12
    .line 13
    iget-object v4, p0, Lcom/google/android/gms/car/CarSensorManager$RawEventData;->floatValues:[F

    .line 14
    .line 15
    iget-object v5, p0, Lcom/google/android/gms/car/CarSensorManager$RawEventData;->byteValues:[B

    .line 16
    .line 17
    invoke-direct/range {v0 .. v5}, Lpa0;-><init>(IJ[F[B)V
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move-object p0, v0

    .line 23
    const-string p1, "CSL.CarSensorManagerGms"

    .line 24
    .line 25
    const-string v0, "Car Not Connected"

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
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

.method public final getSupportedSensors()[I
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->d:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/service/a/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->d:[I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->d:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->d:[I

    return-object p0
.end method

.method public final isSensorSupported(I)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/service/a/d;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onCarDisconnected()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->e:Lcom/google/android/apps/auto/sdk/service/a/c/b;

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/c/b;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeListener(Lra0;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->e:Lcom/google/android/apps/auto/sdk/service/a/c/b;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/auto/sdk/service/a/c/b;->a(Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/auto/sdk/service/a/f;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->a:Lcom/google/android/gms/car/CarSensorManager;

    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarSensorManager;->unregisterListener(Lcom/google/android/gms/car/CarSensorManager$CarSensorEventListener;)V

    return-void
.end method

.method public final removeListener(Lra0;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->e:Lcom/google/android/apps/auto/sdk/service/a/c/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/auto/sdk/service/a/c/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/auto/sdk/service/a/f;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/d;->a:Lcom/google/android/gms/car/CarSensorManager;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/car/CarSensorManager;->unregisterListener(Lcom/google/android/gms/car/CarSensorManager$CarSensorEventListener;I)V

    return-void
.end method
