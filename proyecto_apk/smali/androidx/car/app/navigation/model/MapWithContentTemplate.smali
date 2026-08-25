.class public final Landroidx/car/app/navigation/model/MapWithContentTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le40;


# annotations
.annotation runtime Le9;
.end annotation


# instance fields
.field private final mActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mContentTemplate:Le40;

.field private final mMapController:Landroidx/car/app/navigation/model/MapController;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 6
    .line 7
    new-instance v1, Lnm;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mContentTemplate:Le40;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lom;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    .line 18
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
    instance-of v1, p1, Landroidx/car/app/navigation/model/MapWithContentTemplate;

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
    check-cast p1, Landroidx/car/app/navigation/model/MapWithContentTemplate;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mContentTemplate:Le40;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mContentTemplate:Le40;

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
    iget-object v1, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 24
    .line 25
    iget-object v3, p1, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 36
    .line 37
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    return v2
.end method

.method public getActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 2
    .line 3
    return-object p0
.end method

.method public getContentTemplate()Le40;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mContentTemplate:Le40;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMapController()Landroidx/car/app/navigation/model/MapController;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mContentTemplate:Le40;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapWithContentTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 6
    .line 7
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method
