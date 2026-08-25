.class public final Landroidx/car/app/model/DistanceSpan;
.super Landroidx/car/app/model/CarSpan;
.source "SourceFile"


# annotations
.annotation runtime Le9;
.end annotation


# instance fields
.field private final mDistance:Landroidx/car/app/model/Distance;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/Distance;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    return-void
.end method

.method public static create(Landroidx/car/app/model/Distance;)Landroidx/car/app/model/DistanceSpan;
    .locals 1

    .line 1
    new-instance v0, Landroidx/car/app/model/DistanceSpan;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/car/app/model/DistanceSpan;-><init>(Landroidx/car/app/model/Distance;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/DistanceSpan;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Landroidx/car/app/model/DistanceSpan;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public getDistance()Landroidx/car/app/model/Distance;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[distance: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "]"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
