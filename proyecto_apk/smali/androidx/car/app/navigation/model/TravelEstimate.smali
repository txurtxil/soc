.class public final Landroidx/car/app/navigation/model/TravelEstimate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Le9;
.end annotation


# static fields
.field public static final REMAINING_TIME_UNKNOWN:J = -0x1L


# instance fields
.field private final mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

.field private final mRemainingDistance:Landroidx/car/app/model/Distance;

.field private final mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

.field private final mRemainingTimeColor:Landroidx/car/app/model/CarColor;

.field private final mRemainingTimeSeconds:J

.field private final mTripIcon:Landroidx/car/app/model/CarIcon;

.field private final mTripText:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 12
    .line 13
    sget-object v1, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    .line 14
    .line 15
    iput-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 16
    .line 17
    iput-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lo50;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    .line 25
    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/TravelEstimate;

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
    check-cast p1, Landroidx/car/app/navigation/model/TravelEstimate;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-wide v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    .line 24
    .line 25
    iget-wide v5, p1, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    .line 26
    .line 27
    cmp-long v1, v3, v5

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 32
    .line 33
    iget-object v3, p1, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 34
    .line 35
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 42
    .line 43
    iget-object v3, p1, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 44
    .line 45
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 52
    .line 53
    iget-object v3, p1, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 54
    .line 55
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    .line 62
    .line 63
    iget-object v3, p1, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    .line 64
    .line 65
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    .line 72
    .line 73
    iget-object p1, p1, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    .line 74
    .line 75
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    return v0

    .line 82
    :cond_2
    return v2
.end method

.method public getArrivalTimeAtDestination()Landroidx/car/app/model/DateTimeWithZone;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRemainingDistance()Landroidx/car/app/model/Distance;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRemainingDistanceColor()Landroidx/car/app/model/CarColor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRemainingTimeColor()Landroidx/car/app/model/CarColor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRemainingTimeSeconds()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    return-wide v0
.end method

.method public getTripIcon()Landroidx/car/app/model/CarIcon;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTripText()Landroidx/car/app/model/CarText;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 14
    .line 15
    iget-object v5, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    .line 16
    .line 17
    iget-object v6, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[ remaining distance: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", time (s): "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", ETA: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "]"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
