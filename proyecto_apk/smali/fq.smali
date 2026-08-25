.class public final synthetic Lfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic a:Lidv/lzn/screenonauto/MirrorMediaService;


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/MirrorMediaService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfq;->a:Lidv/lzn/screenonauto/MirrorMediaService;

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1

    .line 1
    sget-object v0, Lidv/lzn/screenonauto/MirrorMediaService;->q:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lje;->a:Lje;

    .line 6
    .line 7
    :cond_0
    iget-object p0, p0, Lfq;->a:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/MirrorMediaService;->l(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
