.class public final Landroidx/car/app/model/Distance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Le9;
.end annotation


# static fields
.field public static final UNIT_FEET:I = 0x6

.field public static final UNIT_KILOMETERS:I = 0x2

.field public static final UNIT_KILOMETERS_P1:I = 0x3

.field public static final UNIT_METERS:I = 0x1

.field public static final UNIT_MILES:I = 0x4

.field public static final UNIT_MILES_P1:I = 0x5

.field public static final UNIT_YARDS:I = 0x7


# instance fields
.field private final mDisplayDistance:D

.field private final mDisplayUnit:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/car/app/model/Distance;->mDisplayDistance:D

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Landroidx/car/app/model/Distance;->mDisplayUnit:I

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>(DI)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Landroidx/car/app/model/Distance;->mDisplayDistance:D

    .line 14
    iput p3, p0, Landroidx/car/app/model/Distance;->mDisplayUnit:I

    return-void
.end method

.method public static create(DI)Landroidx/car/app/model/Distance;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/car/app/model/Distance;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2}, Landroidx/car/app/model/Distance;-><init>(DI)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string p0, "displayDistance must be a positive value"

    .line 14
    .line 15
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method private static unitToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "?"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "yd"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "ft"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "mi_p1"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "mi"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "km_p1"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "km"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "m"

    .line 26
    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/Distance;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/car/app/model/Distance;

    .line 12
    .line 13
    iget v1, p0, Landroidx/car/app/model/Distance;->mDisplayUnit:I

    .line 14
    .line 15
    iget v3, p1, Landroidx/car/app/model/Distance;->mDisplayUnit:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-wide v3, p0, Landroidx/car/app/model/Distance;->mDisplayDistance:D

    .line 20
    .line 21
    iget-wide p0, p1, Landroidx/car/app/model/Distance;->mDisplayDistance:D

    .line 22
    .line 23
    cmpl-double p0, v3, p0

    .line 24
    .line 25
    if-nez p0, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    return v2
.end method

.method public getDisplayDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/car/app/model/Distance;->mDisplayDistance:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDisplayUnit()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/car/app/model/Distance;->mDisplayUnit:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/car/app/model/Distance;->mDisplayDistance:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Landroidx/car/app/model/Distance;->mDisplayUnit:I

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/car/app/model/Distance;->mDisplayDistance:D

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget p0, p0, Landroidx/car/app/model/Distance;->mDisplayUnit:I

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/car/app/model/Distance;->unitToString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v1, "%.04f%s"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
