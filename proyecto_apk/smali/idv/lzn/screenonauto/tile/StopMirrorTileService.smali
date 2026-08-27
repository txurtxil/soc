.class public final Lidv/lzn/screenonauto/tile/StopMirrorTileService;
.super Landroid/service/quicksettings/TileService;
.source "StopMirrorTileService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0002"
    }
    d2 = {
        "Lidv/lzn/screenonauto/tile/StopMirrorTileService;",
        "Landroid/service/quicksettings/TileService;",
        "<init>",
        "()V",
        "onStartListening",
        "",
        "onClick",
        "stopByName",
        "className",
        ""
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private final stopByName(Ljava/lang/String;)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, v0

    .local v1, "$this$stopByName_u24lambda_u240":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 26
    .local v2, "$i$a$-apply-StopMirrorTileService$stopByName$intent$1":I
    invoke-virtual {p0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    nop

    .line 25
    .end local v1    # "$this$stopByName_u24lambda_u240":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-StopMirrorTileService$stopByName$intent$1":I
    nop

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->stopService(Landroid/content/Intent;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 19
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 20
    const-string v0, "idv.lzn.screenonauto.ScreenCaptureService"

    invoke-direct {p0, v0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->stopByName(Ljava/lang/String;)V

    .line 21
    const-string v0, "idv.lzn.screenonauto.MirrorMediaService"

    invoke-direct {p0, v0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->stopByName(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onStartListening()V
    .locals 3

    .line 10
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 11
    invoke-virtual {p0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onStartListening_u24lambda_u240":Landroid/service/quicksettings/Tile;
    const/4 v1, 0x0

    .line 12
    .local v1, "$i$a$-apply-StopMirrorTileService$onStartListening$1":I
    const-string v2, "Detener mirroring"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 13
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 14
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 15
    nop

    .line 11
    .end local v0    # "$this$onStartListening_u24lambda_u240":Landroid/service/quicksettings/Tile;
    .end local v1    # "$i$a$-apply-StopMirrorTileService$onStartListening$1":I
    nop

    .line 16
    :cond_0
    return-void
.end method
