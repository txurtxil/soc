.class public final Lidv/lzn/screenonauto/tile/StopMirrorTileService;
.super Landroid/service/quicksettings/TileService;
.source "StopMirrorTileService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStopMirrorTileService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StopMirrorTileService.kt\nidv/lzn/screenonauto/tile/StopMirrorTileService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n1960#2,3:46\n*S KotlinDebug\n*F\n+ 1 StopMirrorTileService.kt\nidv/lzn/screenonauto/tile/StopMirrorTileService\n*L\n14#1:46,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u0007H\u0016"
    }
    d2 = {
        "Lidv/lzn/screenonauto/tile/StopMirrorTileService;",
        "Landroid/service/quicksettings/TileService;",
        "<init>",
        "()V",
        "isCaptureRunning",
        "",
        "stopByName",
        "",
        "className",
        "",
        "onStartListening",
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

    .line 9
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private final isCaptureRunning()Z
    .locals 10

    .line 12
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    .line 13
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v1, "idv.lzn.screenonauto.ScreenCaptureService"

    .line 14
    .local v1, "target":Ljava/lang/String;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    const-string v3, "getRunningServices(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$f$any":I
    instance-of v4, v2, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroid/app/ActivityManager$RunningServiceInfo;

    .local v7, "it":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v8, 0x0

    .line 15
    .local v8, "$i$a$-any-StopMirrorTileService$isCaptureRunning$1":I
    iget-object v9, v7, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 47
    .end local v7    # "it":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v8    # "$i$a$-any-StopMirrorTileService$isCaptureRunning$1":I
    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    .line 48
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 14
    .end local v2    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$any":I
    :goto_0
    return v5
.end method

.method private final stopByName(Ljava/lang/String;)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, v0

    .local v1, "$this$stopByName_u24lambda_u240":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-apply-StopMirrorTileService$stopByName$intent$1":I
    invoke-virtual {p0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    nop

    .line 20
    .end local v1    # "$this$stopByName_u24lambda_u240":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-StopMirrorTileService$stopByName$intent$1":I
    nop

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->stopService(Landroid/content/Intent;)Z

    .line 24
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 36
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 37
    const-string v0, "idv.lzn.screenonauto.ScreenCaptureService"

    invoke-direct {p0, v0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->stopByName(Ljava/lang/String;)V

    .line 38
    const-string v0, "idv.lzn.screenonauto.MirrorMediaService"

    invoke-direct {p0, v0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->stopByName(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onClick_u24lambda_u240":Landroid/service/quicksettings/Tile;
    const/4 v1, 0x0

    .line 40
    .local v1, "$i$a$-apply-StopMirrorTileService$onClick$1":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 41
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 42
    nop

    .line 39
    .end local v0    # "$this$onClick_u24lambda_u240":Landroid/service/quicksettings/Tile;
    .end local v1    # "$i$a$-apply-StopMirrorTileService$onClick$1":I
    nop

    .line 43
    :cond_0
    return-void
.end method

.method public onStartListening()V
    .locals 3

    .line 27
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 28
    invoke-virtual {p0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "$this$onStartListening_u24lambda_u240":Landroid/service/quicksettings/Tile;
    const/4 v1, 0x0

    .line 29
    .local v1, "$i$a$-apply-StopMirrorTileService$onStartListening$1":I
    const-string v2, "Detener mirroring"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 30
    invoke-direct {p0}, Lidv/lzn/screenonauto/tile/StopMirrorTileService;->isCaptureRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 31
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 32
    nop

    .line 28
    .end local v0    # "$this$onStartListening_u24lambda_u240":Landroid/service/quicksettings/Tile;
    .end local v1    # "$i$a$-apply-StopMirrorTileService$onStartListening$1":I
    nop

    .line 33
    :cond_1
    return-void
.end method
