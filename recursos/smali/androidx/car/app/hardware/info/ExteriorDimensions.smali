.class public Landroidx/car/app/hardware/info/ExteriorDimensions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Le9;
.end annotation


# static fields
.field public static final CURB_TO_CURB_TURNING_RADIUS_INDEX:I = 0x7

.field public static final HEIGHT_INDEX:I = 0x0

.field public static final LENGTH_INDEX:I = 0x1

.field public static final TRACK_WIDTH_FRONT_INDEX:I = 0x5

.field public static final TRACK_WIDTH_REAR_INDEX:I = 0x6

.field public static final WHEEL_BASE_INDEX:I = 0x4

.field public static final WIDTH_INCLUDING_MIRRORS_INDEX:I = 0x3

.field public static final WIDTH_INDEX:I = 0x2


# instance fields
.field private final mExteriorDimensions:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER_ARRAY:Landroidx/car/app/hardware/common/CarValue;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/car/app/hardware/info/ExteriorDimensions;->mExteriorDimensions:Landroidx/car/app/hardware/common/CarValue;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "[",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroidx/car/app/hardware/info/ExteriorDimensions;->mExteriorDimensions:Landroidx/car/app/hardware/common/CarValue;

    return-void
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
    instance-of v0, p1, Landroidx/car/app/hardware/info/ExteriorDimensions;

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
    check-cast p1, Landroidx/car/app/hardware/info/ExteriorDimensions;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/car/app/hardware/info/ExteriorDimensions;->mExteriorDimensions:Landroidx/car/app/hardware/common/CarValue;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/car/app/hardware/info/ExteriorDimensions;->mExteriorDimensions:Landroidx/car/app/hardware/common/CarValue;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/car/app/hardware/common/CarValue;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public getExteriorDimensions()Landroidx/car/app/hardware/common/CarValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/car/app/hardware/info/ExteriorDimensions;->mExteriorDimensions:Landroidx/car/app/hardware/common/CarValue;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/hardware/info/ExteriorDimensions;->mExteriorDimensions:Landroidx/car/app/hardware/common/CarValue;

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[ exteriorDimensions: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/car/app/hardware/info/ExteriorDimensions;->mExteriorDimensions:Landroidx/car/app/hardware/common/CarValue;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, " ]"

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
