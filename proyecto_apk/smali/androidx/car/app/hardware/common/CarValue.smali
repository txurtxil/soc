.class public final Landroidx/car/app/hardware/common/CarValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Le9;
.end annotation


# static fields
.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_UNAVAILABLE:I = 0x3

.field public static final STATUS_UNIMPLEMENTED:I = 0x2

.field public static final STATUS_UNKNOWN:I

.field public static final UNIMPLEMENTED_FLOAT_LIST:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final UNIMPLEMENTED_INTEGER:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_BOOLEAN:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_FLOAT_LIST:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_INTEGER_ARRAY:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_INTEGER_LIST:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_STRING:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCarZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatus:I

.field private final mTimestampMillis:J

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unimplemented()Landroidx/car/app/hardware/common/CarValue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNIMPLEMENTED_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    .line 6
    .line 7
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    .line 12
    .line 13
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_BOOLEAN:Landroidx/car/app/hardware/common/CarValue;

    .line 18
    .line 19
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    .line 24
    .line 25
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_STRING:Landroidx/car/app/hardware/common/CarValue;

    .line 30
    .line 31
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unimplemented()Landroidx/car/app/hardware/common/CarValue;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNIMPLEMENTED_FLOAT_LIST:Landroidx/car/app/hardware/common/CarValue;

    .line 36
    .line 37
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT_LIST:Landroidx/car/app/hardware/common/CarValue;

    .line 42
    .line 43
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER_LIST:Landroidx/car/app/hardware/common/CarValue;

    .line 48
    .line 49
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER_ARRAY:Landroidx/car/app/hardware/common/CarValue;

    .line 54
    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 28
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 7
    .line 8
    iput p4, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 9
    .line 10
    sget-object p1, Landroidx/car/app/hardware/common/CarZone;->CAR_ZONE_GLOBAL:Landroidx/car/app/hardware/common/CarZone;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JI",
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    .line 21
    iput-wide p2, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 22
    iput p4, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 23
    iput-object p5, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    return-void
.end method

.method private static unimplemented()Landroidx/car/app/hardware/common/CarValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/car/app/hardware/common/CarValue;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/car/app/hardware/common/CarValue;-><init>(Ljava/lang/Object;JI)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static unknown()Landroidx/car/app/hardware/common/CarValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/car/app/hardware/common/CarValue;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/car/app/hardware/common/CarValue;-><init>(Ljava/lang/Object;JI)V

    .line 8
    .line 9
    .line 10
    return-object v0
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
    instance-of v1, p1, Landroidx/car/app/hardware/common/CarValue;

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
    check-cast p1, Landroidx/car/app/hardware/common/CarValue;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

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
    iget-wide v3, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 24
    .line 25
    iget-wide v5, p1, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 26
    .line 27
    cmp-long v1, v3, v5

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget v1, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 32
    .line 33
    iget v3, p1, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 34
    .line 35
    if-ne v1, v3, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    return v0

    .line 48
    :cond_2
    return v2
.end method

.method public getCarZones()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 10
    .line 11
    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 2
    .line 3
    return p0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p0, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 16
    .line 17
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[value: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", timestamp: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", Status: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", CarZones: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, "]"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
