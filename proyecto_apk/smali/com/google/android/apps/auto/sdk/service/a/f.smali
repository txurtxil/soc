.class final Lcom/google/android/apps/auto/sdk/service/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/auto/sdk/service/a/c/a;
.implements Lcom/google/android/gms/car/CarSensorManager$CarSensorEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/auto/sdk/service/a/c/a<",
        "Lra0;",
        ">;",
        "Lcom/google/android/gms/car/CarSensorManager$CarSensorEventListener;"
    }
.end annotation


# instance fields
.field private a:Lra0;

.field private b:Lcom/google/android/apps/auto/sdk/service/a/d;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/service/a/d;Lra0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/f;->b:Lcom/google/android/apps/auto/sdk/service/a/d;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onSensorChanged(IJ[F[B)V
    .locals 0

    new-instance p0, Lpa0;

    invoke-direct/range {p0 .. p5}, Lpa0;-><init>(IJ[F[B)V

    const/4 p0, 0x0

    throw p0
.end method
