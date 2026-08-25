.class public final Lidv/lzn/screenonauto/MirrorMediaService;
.super Lvn;
.source "SourceFile"


# static fields
.field public static q:Lidv/lzn/screenonauto/MirrorMediaService;


# instance fields
.field public h:Lko;

.field public i:Landroid/media/session/MediaController;

.field public final j:Landroid/os/Handler;

.field public final k:Lgq;

.field public final l:Ljava/util/LinkedHashMap;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Lgq;

.field public final o:Lfq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lvn;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->j:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lgq;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Lgq;-><init>(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->k:Lgq;

    .line 22
    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->l:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->m:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    new-instance v0, Lgq;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, p0, v1}, Lgq;-><init>(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->n:Lgq;

    .line 44
    .line 45
    new-instance v0, Lfq;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lfq;-><init>(Lidv/lzn/screenonauto/MirrorMediaService;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->o:Lfq;

    .line 51
    .line 52
    return-void
.end method

.method public static final e(Lidv/lzn/screenonauto/MirrorMediaService;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->i:Landroid/media/session/MediaController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_3

    .line 13
    .line 14
    const/16 p0, 0x7e

    .line 15
    .line 16
    if-eq p1, p0, :cond_2

    .line 17
    .line 18
    const/16 p0, 0x7f

    .line 19
    .line 20
    if-eq p1, p0, :cond_1

    .line 21
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_2
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_3
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_4
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    const-string v0, "audio"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast v0, Landroid/media/AudioManager;

    .line 64
    .line 65
    iget-object v2, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 66
    .line 67
    const-string v3, "mediaSession"

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-virtual {v2, v4}, Lko;->J(Z)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Landroid/view/KeyEvent;

    .line 76
    .line 77
    invoke-direct {v2, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Landroid/view/KeyEvent;

    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-direct {v2, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 93
    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0, v4}, Lko;->J(Z)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1

    .line 104
    :cond_5
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v1

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final f(Lidv/lzn/screenonauto/MirrorMediaService;)V
    .locals 3

    .line 1
    const-string v0, "media_session"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 11
    .line 12
    new-instance v1, Landroid/content/ComponentName;

    .line 13
    .line 14
    const-class v2, Lidv/lzn/screenonauto/MirrorNotificationListenerService;

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lidv/lzn/screenonauto/MirrorMediaService;->l(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    return-void
.end method

.method public static g(Landroid/media/MediaMetadata;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 6

    .line 1
    new-instance v0, Ljn;

    .line 2
    .line 3
    invoke-direct {v0}, Ljn;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.media.metadata.TITLE"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v1, "android.media.metadata.ARTIST"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    const-string v1, "android.media.metadata.ALBUM"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ljn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    const-string v1, "android.media.metadata.DURATION"

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    sget-object v4, Landroid/support/v4/media/MediaMetadataCompat;->c:Lu6;

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Lj20;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v4, v1, v5}, Lj20;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string p0, "The android.media.metadata.DURATION key cannot be used to put a long"

    .line 68
    .line 69
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v5

    .line 73
    :cond_4
    :goto_0
    iget-object v4, v0, Ljn;->a:Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-virtual {v4, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 76
    .line 77
    .line 78
    const-string v1, "android.media.metadata.ART"

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "android.media.metadata.ALBUM_ART"

    .line 85
    .line 86
    if-nez v2, :cond_5

    .line 87
    .line 88
    const-string v2, "android.media.metadata.DISPLAY_ICON"

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-nez v2, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_5
    if-eqz v2, :cond_6

    .line 101
    .line 102
    invoke-static {v2}, Lidv/lzn/screenonauto/MirrorMediaService;->j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Ljn;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3, v2}, Ljn;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    const-string v1, "android.media.metadata.ART_URI"

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Ljn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-eqz p0, :cond_8

    .line 130
    .line 131
    invoke-virtual {v0, v1, p0}, Ljn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    new-instance p0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 135
    .line 136
    invoke-direct {p0, v4}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    return-object p0
.end method

.method public static h(Landroid/media/session/PlaybackState;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 18

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/PlaybackState;->getState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/PlaybackState;->getState()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :goto_1
    move v2, v0

    .line 34
    goto :goto_3

    .line 35
    :cond_2
    :goto_2
    const/4 v0, 0x2

    .line 36
    goto :goto_1

    .line 37
    :goto_3
    new-instance v14, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    :goto_4
    move-wide v3, v0

    .line 49
    goto :goto_5

    .line 50
    :cond_3
    const-wide/16 v0, 0x0

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :goto_5
    if-eqz p0, :cond_4

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :goto_6
    move v7, v0

    .line 60
    goto :goto_7

    .line 61
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    .line 63
    goto :goto_6

    .line 64
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v12

    .line 68
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 69
    .line 70
    const-wide/16 v5, 0x0

    .line 71
    .line 72
    const-wide/16 v8, 0x1036

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const-wide/16 v15, -0x1

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    invoke-direct/range {v1 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public static i(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 14

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p0}, Lx9;->z(Ljava/lang/Iterable;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/media/session/MediaSession$QueueItem;

    .line 27
    .line 28
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    new-instance v5, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    invoke-direct/range {v5 .. v13}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    invoke-direct {v2, v5, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-object v0

    .line 83
    :cond_1
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method public static j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x44000000    # 512.0f

    .line 7
    .line 8
    div-float v0, v1, v0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    div-float/2addr v1, v2

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpl-float v1, v0, v1

    .line 23
    .line 24
    if-ltz v1, :cond_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    mul-float/2addr v1, v0

    .line 33
    float-to-int v1, v1

    .line 34
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    int-to-float v2, v2

    .line 39
    mul-float/2addr v2, v0

    .line 40
    float-to-int v0, v2

    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lqn;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->i:Landroid/media/session/MediaController;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p0, p1

    .line 15
    :goto_0
    if-nez p0, :cond_1

    .line 16
    .line 17
    sget-object p0, Lje;->a:Lje;

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Lqn;->b(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string v0, "android.media.metadata.ART"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const-string v0, "android.media.metadata.DISPLAY_ICON"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_2
    const-string v1, "android.media.metadata.TITLE"

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v1, "android.media.metadata.ARTIST"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-static {v0}, Lidv/lzn/screenonauto/MirrorMediaService;->j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :cond_3
    move-object v7, p1

    .line 64
    new-instance v2, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 65
    .line 66
    const-string v3, "now_playing"

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-direct/range {v2 .. v10}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 73
    .line 74
    .line 75
    new-instance p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 76
    .line 77
    invoke-direct {p0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Lqj;->o(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p2, p0}, Lqn;->b(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->o:Lfq;

    .line 2
    .line 3
    const-string v1, "media_session"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 13
    .line 14
    new-instance v2, Landroid/content/ComponentName;

    .line 15
    .line 16
    const-class v3, Lidv/lzn/screenonauto/MirrorNotificationListenerService;

    .line 17
    .line 18
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lidv/lzn/screenonauto/MirrorMediaService;->j:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lidv/lzn/screenonauto/MirrorMediaService;->l(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v5, v1

    .line 24
    check-cast v5, Landroid/media/session/MediaController;

    .line 25
    .line 26
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-static {v6, v7}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_0

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v6, p0, Lidv/lzn/screenonauto/MirrorMediaService;->m:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-nez v7, :cond_5

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/16 v8, 0x80

    .line 60
    .line 61
    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 69
    .line 70
    if-eqz v7, :cond_1

    .line 71
    .line 72
    const-string v8, "com.google.android.gms.car.application"

    .line 73
    .line 74
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v7, v2

    .line 80
    :goto_1
    if-nez v7, :cond_2

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-eq v8, v3, :cond_4

    .line 106
    .line 107
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    const/4 v9, 0x2

    .line 112
    if-ne v8, v9, :cond_3

    .line 113
    .line 114
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    const-string v9, "uses"

    .line 119
    .line 120
    invoke-static {v8, v9}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_3

    .line 125
    .line 126
    const-string v8, "name"

    .line 127
    .line 128
    invoke-interface {v7, v4, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    const-string v9, "media"

    .line 133
    .line 134
    invoke-static {v8, v9}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_3

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    move v3, v2

    .line 142
    :goto_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    move v2, v3

    .line 146
    :catch_0
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_5
    check-cast v7, Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_0

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-static {v0}, Lx9;->z(Ljava/lang/Iterable;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    move v5, v2

    .line 180
    :goto_4
    if-ge v5, v1, :cond_7

    .line 181
    .line 182
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    add-int/lit8 v5, v5, 0x1

    .line 187
    .line 188
    check-cast v6, Landroid/media/session/MediaController;

    .line 189
    .line 190
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_9

    .line 203
    .line 204
    if-eq v1, v3, :cond_8

    .line 205
    .line 206
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-static {v3}, Lpm;->L(I)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    move v5, v2

    .line 224
    :goto_5
    if-ge v5, v3, :cond_a

    .line 225
    .line 226
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 231
    .line 232
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_8
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_9
    sget-object v1, Lle;->a:Lle;

    .line 249
    .line 250
    :cond_a
    :goto_6
    iget-object p1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->l:Ljava/util/LinkedHashMap;

    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    new-instance v5, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    :cond_b
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_c

    .line 270
    .line 271
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    move-object v7, v6

    .line 276
    check-cast v7, Landroid/media/session/MediaSession$Token;

    .line 277
    .line 278
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    if-nez v7, :cond_b

    .line 283
    .line 284
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    move v3, v2

    .line 293
    :cond_d
    :goto_8
    iget-object v6, p0, Lidv/lzn/screenonauto/MirrorMediaService;->n:Lgq;

    .line 294
    .line 295
    if-ge v3, v1, :cond_e

    .line 296
    .line 297
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 302
    .line 303
    check-cast v7, Landroid/media/session/MediaSession$Token;

    .line 304
    .line 305
    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    check-cast v7, Landroid/media/session/MediaController;

    .line 310
    .line 311
    if-eqz v7, :cond_d

    .line 312
    .line 313
    invoke-virtual {v7, v6}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 314
    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    move v5, v2

    .line 327
    :cond_f
    :goto_9
    if-ge v5, v3, :cond_10

    .line 328
    .line 329
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 334
    .line 335
    move-object v8, v7

    .line 336
    check-cast v8, Landroid/media/session/MediaController;

    .line 337
    .line 338
    invoke-virtual {v8}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    if-nez v8, :cond_f

    .line 347
    .line 348
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    move v5, v2

    .line 357
    :goto_a
    iget-object v7, p0, Lidv/lzn/screenonauto/MirrorMediaService;->j:Landroid/os/Handler;

    .line 358
    .line 359
    if-ge v5, v3, :cond_11

    .line 360
    .line 361
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    add-int/lit8 v5, v5, 0x1

    .line 366
    .line 367
    check-cast v8, Landroid/media/session/MediaController;

    .line 368
    .line 369
    invoke-virtual {v8, v6, v7}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v8}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    goto :goto_a

    .line 380
    :cond_11
    iget-object p1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->i:Landroid/media/session/MediaController;

    .line 381
    .line 382
    if-eqz p1, :cond_12

    .line 383
    .line 384
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    goto :goto_b

    .line 389
    :cond_12
    move-object p1, v4

    .line 390
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    move v3, v2

    .line 395
    :cond_13
    if-ge v3, v1, :cond_14

    .line 396
    .line 397
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    add-int/lit8 v3, v3, 0x1

    .line 402
    .line 403
    move-object v6, v5

    .line 404
    check-cast v6, Landroid/media/session/MediaController;

    .line 405
    .line 406
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    invoke-static {v6, p1}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    if-eqz v6, :cond_13

    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_14
    move-object v5, v4

    .line 418
    :goto_c
    check-cast v5, Landroid/media/session/MediaController;

    .line 419
    .line 420
    const/4 p1, 0x3

    .line 421
    if-eqz v5, :cond_15

    .line 422
    .line 423
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    if-eqz v1, :cond_15

    .line 428
    .line 429
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-ne v1, p1, :cond_15

    .line 434
    .line 435
    goto :goto_e

    .line 436
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    :cond_16
    if-ge v2, v1, :cond_17

    .line 441
    .line 442
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    add-int/lit8 v2, v2, 0x1

    .line 447
    .line 448
    move-object v6, v3

    .line 449
    check-cast v6, Landroid/media/session/MediaController;

    .line 450
    .line 451
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    if-eqz v6, :cond_16

    .line 456
    .line 457
    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-ne v6, p1, :cond_16

    .line 462
    .line 463
    goto :goto_d

    .line 464
    :cond_17
    move-object v3, v4

    .line 465
    :goto_d
    check-cast v3, Landroid/media/session/MediaController;

    .line 466
    .line 467
    if-eqz v3, :cond_18

    .line 468
    .line 469
    move-object v5, v3

    .line 470
    goto :goto_e

    .line 471
    :cond_18
    if-eqz v5, :cond_19

    .line 472
    .line 473
    goto :goto_e

    .line 474
    :cond_19
    invoke-static {v0}, Lv9;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    move-object v5, p1

    .line 479
    check-cast v5, Landroid/media/session/MediaController;

    .line 480
    .line 481
    :goto_e
    if-eqz v5, :cond_1a

    .line 482
    .line 483
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    goto :goto_f

    .line 488
    :cond_1a
    move-object p1, v4

    .line 489
    :goto_f
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->i:Landroid/media/session/MediaController;

    .line 490
    .line 491
    if-eqz v0, :cond_1b

    .line 492
    .line 493
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    goto :goto_10

    .line 498
    :cond_1b
    move-object v0, v4

    .line 499
    :goto_10
    invoke-static {p1, v0}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result p1

    .line 503
    if-eqz p1, :cond_1c

    .line 504
    .line 505
    goto :goto_14

    .line 506
    :cond_1c
    iget-object p1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->i:Landroid/media/session/MediaController;

    .line 507
    .line 508
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->k:Lgq;

    .line 509
    .line 510
    if-eqz p1, :cond_1d

    .line 511
    .line 512
    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 513
    .line 514
    .line 515
    :cond_1d
    iput-object v5, p0, Lidv/lzn/screenonauto/MirrorMediaService;->i:Landroid/media/session/MediaController;

    .line 516
    .line 517
    if-eqz v5, :cond_1e

    .line 518
    .line 519
    invoke-virtual {v5, v0, v7}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 520
    .line 521
    .line 522
    :cond_1e
    iget-object p1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 523
    .line 524
    const-string v0, "mediaSession"

    .line 525
    .line 526
    if-eqz p1, :cond_26

    .line 527
    .line 528
    if-eqz v5, :cond_1f

    .line 529
    .line 530
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    if-eqz v1, :cond_1f

    .line 535
    .line 536
    invoke-static {v1}, Lidv/lzn/screenonauto/MirrorMediaService;->g(Landroid/media/MediaMetadata;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    goto :goto_11

    .line 541
    :cond_1f
    move-object v1, v4

    .line 542
    :goto_11
    invoke-virtual {p1, v1}, Lko;->L(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 543
    .line 544
    .line 545
    iget-object p1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 546
    .line 547
    if-eqz p1, :cond_25

    .line 548
    .line 549
    if-eqz v5, :cond_20

    .line 550
    .line 551
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    goto :goto_12

    .line 556
    :cond_20
    move-object v1, v4

    .line 557
    :goto_12
    invoke-static {v1}, Lidv/lzn/screenonauto/MirrorMediaService;->i(Ljava/util/List;)Ljava/util/ArrayList;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {p1, v1}, Lko;->N(Ljava/util/ArrayList;)V

    .line 562
    .line 563
    .line 564
    iget-object p1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 565
    .line 566
    if-eqz p1, :cond_24

    .line 567
    .line 568
    if-eqz v5, :cond_21

    .line 569
    .line 570
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    goto :goto_13

    .line 575
    :cond_21
    move-object v1, v4

    .line 576
    :goto_13
    iget-object p1, p1, Lko;->b:Ljava/lang/Object;

    .line 577
    .line 578
    check-cast p1, Lgo;

    .line 579
    .line 580
    iget-object p1, p1, Lgo;->a:Landroid/media/session/MediaSession;

    .line 581
    .line 582
    invoke-virtual {p1, v1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    .line 583
    .line 584
    .line 585
    iget-object p1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 586
    .line 587
    if-eqz p1, :cond_23

    .line 588
    .line 589
    if-eqz v5, :cond_22

    .line 590
    .line 591
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 592
    .line 593
    .line 594
    move-result-object v4

    .line 595
    :cond_22
    invoke-static {v4}, Lidv/lzn/screenonauto/MirrorMediaService;->h(Landroid/media/session/PlaybackState;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {p1, v0}, Lko;->M(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p0}, Lvn;->b()V

    .line 603
    .line 604
    .line 605
    :goto_14
    return-void

    .line 606
    :cond_23
    invoke-static {v0}, Lqj;->v(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    throw v4

    .line 610
    :cond_24
    invoke-static {v0}, Lqj;->v(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    throw v4

    .line 614
    :cond_25
    invoke-static {v0}, Lqj;->v(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    throw v4

    .line 618
    :cond_26
    invoke-static {v0}, Lqj;->v(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    throw v4
.end method

.method public final onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Lvn;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lko;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lko;-><init>(Lidv/lzn/screenonauto/MirrorMediaService;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lhq;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lhq;-><init>(Lidv/lzn/screenonauto/MirrorMediaService;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lko;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lgo;

    .line 17
    .line 18
    new-instance v3, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1, v3}, Lgo;->c(Lfo;Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lko;->J(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v2, Lgo;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lvn;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    iput-object v1, p0, Lvn;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 39
    .line 40
    iget-object v2, p0, Lvn;->a:Lcf;

    .line 41
    .line 42
    iget-object v3, v2, Lcf;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lvn;

    .line 45
    .line 46
    iget-object v3, v3, Lvn;->e:Ldb0;

    .line 47
    .line 48
    new-instance v4, Lc1;

    .line 49
    .line 50
    const/4 v5, 0x6

    .line 51
    invoke-direct {v4, v2, v5, v1}, Lc1;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 58
    .line 59
    sput-object p0, Lidv/lzn/screenonauto/MirrorMediaService;->q:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 60
    .line 61
    invoke-virtual {p0}, Lidv/lzn/screenonauto/MirrorMediaService;->k()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    const-string p0, "The session token has already been set"

    .line 66
    .line 67
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    const-string p0, "Session token may not be null"

    .line 72
    .line 73
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lidv/lzn/screenonauto/MirrorMediaService;->q:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 3
    .line 4
    iget-object v1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->i:Landroid/media/session/MediaController;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lidv/lzn/screenonauto/MirrorMediaService;->k:Lgq;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lidv/lzn/screenonauto/MirrorMediaService;->l:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/media/session/MediaController;

    .line 34
    .line 35
    iget-object v4, p0, Lidv/lzn/screenonauto/MirrorMediaService;->n:Lgq;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 42
    .line 43
    .line 44
    const-string v1, "media_session"

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 54
    .line 55
    iget-object v2, p0, Lidv/lzn/screenonauto/MirrorMediaService;->o:Lfq;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 58
    .line 59
    .line 60
    invoke-super {p0}, Lvn;->onDestroy()V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->h:Lko;

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    iget-object p0, p0, Lko;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lgo;

    .line 70
    .line 71
    iget-object v1, p0, Lgo;->a:Landroid/media/session/MediaSession;

    .line 72
    .line 73
    iget-object v2, p0, Lgo;->e:Landroid/os/RemoteCallbackList;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 76
    .line 77
    .line 78
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    const/16 v3, 0x1b

    .line 81
    .line 82
    if-ne v2, v3, :cond_2

    .line 83
    .line 84
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v3, "mCallback"

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const/4 v3, 0x1

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroid/os/Handler;

    .line 103
    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v2

    .line 111
    const-string v3, "MediaSessionCompat"

    .line 112
    .line 113
    const-string v4, "Exception happened while accessing MediaSession.mCallback."

    .line 114
    .line 115
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lgo;->b:Landroid/support/v4/media/session/b;

    .line 122
    .line 123
    iget-object p0, p0, Landroid/support/v4/media/session/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_3
    const-string p0, "mediaSession"

    .line 133
    .line 134
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0
.end method

.method public final onLowMemory()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->m:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
