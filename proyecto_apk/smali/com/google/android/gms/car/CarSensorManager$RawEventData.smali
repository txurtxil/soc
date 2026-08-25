.class public Lcom/google/android/gms/car/CarSensorManager$RawEventData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/car/CarSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawEventData"
.end annotation


# instance fields
.field public final byteValues:[B

.field public final floatValues:[F

.field public final sensorType:I

.field public final timeStamp:J


# direct methods
.method public constructor <init>(IJ[F[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/car/CarSensorManager$RawEventData;->sensorType:I

    iput-wide p2, p0, Lcom/google/android/gms/car/CarSensorManager$RawEventData;->timeStamp:J

    iput-object p4, p0, Lcom/google/android/gms/car/CarSensorManager$RawEventData;->floatValues:[F

    iput-object p5, p0, Lcom/google/android/gms/car/CarSensorManager$RawEventData;->byteValues:[B

    return-void
.end method
