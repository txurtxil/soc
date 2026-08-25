.class public final Landroidx/car/app/hardware/info/EnergyProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Le9;
.end annotation


# static fields
.field public static final EVCONNECTOR_TYPE_CHADEMO:I = 0x3

.field public static final EVCONNECTOR_TYPE_COMBO_1:I = 0x4

.field public static final EVCONNECTOR_TYPE_COMBO_2:I = 0x5

.field public static final EVCONNECTOR_TYPE_GBT:I = 0x9

.field public static final EVCONNECTOR_TYPE_GBT_DC:I = 0xa

.field public static final EVCONNECTOR_TYPE_J1772:I = 0x1

.field public static final EVCONNECTOR_TYPE_MENNEKES:I = 0x2

.field public static final EVCONNECTOR_TYPE_OTHER:I = 0x65

.field public static final EVCONNECTOR_TYPE_SCAME:I = 0xb

.field public static final EVCONNECTOR_TYPE_TESLA_HPWC:I = 0x7

.field public static final EVCONNECTOR_TYPE_TESLA_ROADSTER:I = 0x6

.field public static final EVCONNECTOR_TYPE_TESLA_SUPERCHARGER:I = 0x8

.field public static final EVCONNECTOR_TYPE_UNKNOWN:I = 0x0

.field public static final FUEL_TYPE_BIODIESEL:I = 0x5

.field public static final FUEL_TYPE_CNG:I = 0x8

.field public static final FUEL_TYPE_DIESEL_1:I = 0x3

.field public static final FUEL_TYPE_DIESEL_2:I = 0x4

.field public static final FUEL_TYPE_E85:I = 0x6

.field public static final FUEL_TYPE_ELECTRIC:I = 0xa

.field public static final FUEL_TYPE_HYDROGEN:I = 0xb

.field public static final FUEL_TYPE_LEADED:I = 0x2

.field public static final FUEL_TYPE_LNG:I = 0x9

.field public static final FUEL_TYPE_LPG:I = 0x7

.field public static final FUEL_TYPE_OTHER:I = 0xc

.field public static final FUEL_TYPE_UNKNOWN:I = 0x0

.field public static final FUEL_TYPE_UNLEADED:I = 0x1


# instance fields
.field private final mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFuelTypes:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER_LIST:Landroidx/car/app/hardware/common/CarValue;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mFuelTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lne;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    .line 12
    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/car/app/hardware/info/EnergyProfile;

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
    check-cast p1, Landroidx/car/app/hardware/info/EnergyProfile;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/car/app/hardware/info/EnergyProfile;->mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;

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
    iget-object p0, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mFuelTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/car/app/hardware/info/EnergyProfile;->mFuelTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 26
    .line 27
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    return v2
.end method

.method public getEvConnectorTypes()Landroidx/car/app/hardware/common/CarValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public getFuelTypes()Landroidx/car/app/hardware/common/CarValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mFuelTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mFuelTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 4
    .line 5
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[ evConnectorTypes: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", fuelTypes: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/car/app/hardware/info/EnergyProfile;->mFuelTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "]"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
