.class public final Lidv/lzn/screenonauto/tile/MirrorTileService;
.super Landroid/service/quicksettings/TileService;
.source "MirrorTileService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016"
    }
    d2 = {
        "Lidv/lzn/screenonauto/tile/MirrorTileService;",
        "Landroid/service/quicksettings/TileService;",
        "<init>",
        "()V",
        "onStartListening",
        "",
        "onClick"
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

    .line 8
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 20
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, v0

    .local v1, "$this$onClick_u24lambda_u240":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 22
    .local v2, "$i$a$-apply-MirrorTileService$onClick$intent$1":I
    invoke-virtual {p0}, Lidv/lzn/screenonauto/tile/MirrorTileService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "idv.lzn.screenonauto.MainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    const-string v3, "extra_auto_start"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    nop

    .line 21
    .end local v1    # "$this$onClick_u24lambda_u240":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-MirrorTileService$onClick$intent$1":I
    nop

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 28
    nop

    .line 29
    nop

    .line 30
    nop

    .line 26
    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 32
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Lidv/lzn/screenonauto/tile/MirrorTileService;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    .line 33
    return-void
.end method

.method public onStartListening()V
    .locals 3

    .line 11
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 12
    invoke-virtual {p0}, Lidv/lzn/screenonauto/tile/MirrorTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onStartListening_u24lambda_u240":Landroid/service/quicksettings/Tile;
    const/4 v1, 0x0

    .line 13
    .local v1, "$i$a$-apply-MirrorTileService$onStartListening$1":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 14
    const-string v2, "Iniciar mirroring"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 16
    nop

    .line 12
    .end local v0    # "$this$onStartListening_u24lambda_u240":Landroid/service/quicksettings/Tile;
    .end local v1    # "$i$a$-apply-MirrorTileService$onStartListening$1":I
    nop

    .line 17
    :cond_0
    return-void
.end method
