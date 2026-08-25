.class public final Lgq;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/MirrorMediaService;


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/MirrorMediaService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lgq;->a:I

    iput-object p1, p0, Lgq;->b:Lidv/lzn/screenonauto/MirrorMediaService;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 1
    iget v0, p0, Lgq;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v1, "android.media.metadata.TITLE"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v0

    .line 21
    :goto_0
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object p0, p0, Lgq;->b:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 31
    .line 32
    iget-object v1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-static {p1}, Lidv/lzn/screenonauto/MirrorMediaService;->g(Landroid/media/MediaMetadata;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Lko;->L(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lvn;->b()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string p0, "mediaSession"

    .line 48
    .line 49
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_3
    :goto_1
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    .line 1
    iget v0, p0, Lgq;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lgq;->b:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x3

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Lidv/lzn/screenonauto/MirrorMediaService;->f(Lidv/lzn/screenonauto/MirrorMediaService;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_0
    iget-object p0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Lidv/lzn/screenonauto/MirrorMediaService;->h(Landroid/media/session/PlaybackState;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lko;->M(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string p0, "mediaSession"

    .line 34
    .line 35
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 3

    .line 1
    iget v0, p0, Lgq;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lgq;->b:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 11
    .line 12
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 13
    .line 14
    const-string v1, "mediaSession"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {p1}, Lidv/lzn/screenonauto/MirrorMediaService;->i(Ljava/util/List;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lko;->N(Ljava/util/ArrayList;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->i:Landroid/media/session/MediaController;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_0
    iget-object p0, p1, Lko;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lgo;

    .line 41
    .line 42
    iget-object p0, p0, Lgo;->a:Landroid/media/session/MediaSession;

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v2

    .line 52
    :cond_2
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v2

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSessionDestroyed()V
    .locals 1

    .line 1
    iget v0, p0, Lgq;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lgq;->b:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lidv/lzn/screenonauto/MirrorMediaService;->f(Lidv/lzn/screenonauto/MirrorMediaService;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-static {p0}, Lidv/lzn/screenonauto/MirrorMediaService;->f(Lidv/lzn/screenonauto/MirrorMediaService;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
