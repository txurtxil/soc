.class public final Landroidx/car/app/navigation/model/MapTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le40;


# annotations
.annotation runtime Le9;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mHeader:Landroidx/car/app/model/Header;

.field private final mItemList:Landroidx/car/app/model/ItemList;

.field private final mMapController:Landroidx/car/app/navigation/model/MapController;

.field private final mPane:Landroidx/car/app/model/Pane;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lmm;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    .line 17
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
    instance-of v1, p1, Landroidx/car/app/navigation/model/MapTemplate;

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
    check-cast p1, Landroidx/car/app/navigation/model/MapTemplate;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

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
    iget-object v1, p0, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 24
    .line 25
    iget-object v3, p1, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

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
    iget-object v1, p0, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 34
    .line 35
    iget-object v3, p1, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 36
    .line 37
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 44
    .line 45
    iget-object v3, p1, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 46
    .line 47
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 56
    .line 57
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    return v0

    .line 64
    :cond_2
    return v2
.end method

.method public getActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHeader()Landroidx/car/app/model/Header;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemList()Landroidx/car/app/model/ItemList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMapController()Landroidx/car/app/navigation/model/MapController;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPane()Landroidx/car/app/model/Pane;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method
