.class public abstract Lfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Leo;

.field public c:Z

.field public d:Ljava/lang/ref/WeakReference;

.field public e:Ldb0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfo;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Leo;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Leo;-><init>(Lfo;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lfo;->b:Leo;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lfo;->d:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lgo;Landroid/os/Handler;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lfo;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lfo;->c:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lgo;->f:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    move-wide v4, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-wide v4, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    .line 22
    .line 23
    :goto_0
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget p1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    .line 26
    .line 27
    const/4 p2, 0x3

    .line 28
    if-ne p1, p2, :cond_2

    .line 29
    .line 30
    move p1, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move p1, v0

    .line 33
    :goto_1
    const-wide/16 v6, 0x204

    .line 34
    .line 35
    and-long/2addr v6, v4

    .line 36
    cmp-long p2, v6, v2

    .line 37
    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    move p2, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move p2, v0

    .line 43
    :goto_2
    const-wide/16 v6, 0x202

    .line 44
    .line 45
    and-long/2addr v4, v6

    .line 46
    cmp-long v2, v4, v2

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    move v0, v1

    .line 51
    :cond_4
    if-eqz p1, :cond_5

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0}, Lfo;->d()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    if-nez p1, :cond_6

    .line 60
    .line 61
    if-eqz p2, :cond_6

    .line 62
    .line 63
    invoke-virtual {p0}, Lfo;->e()V

    .line 64
    .line 65
    .line 66
    :cond_6
    :goto_3
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Landroid/content/Intent;)Z
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lfo;->a:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lfo;->d:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lgo;

    .line 20
    .line 21
    iget-object v3, p0, Lfo;->e:Ldb0;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v1, :cond_8

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/view/KeyEvent;

    .line 36
    .line 37
    if-eqz p1, :cond_8

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v1}, Lgo;->b()Llo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const/16 v5, 0x4f

    .line 55
    .line 56
    if-eq v4, v5, :cond_3

    .line 57
    .line 58
    const/16 v5, 0x55

    .line 59
    .line 60
    if-eq v4, v5, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0, v1, v3}, Lfo;->a(Lgo;Landroid/os/Handler;)V

    .line 63
    .line 64
    .line 65
    return v2

    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const/4 v4, 0x1

    .line 71
    if-nez p1, :cond_7

    .line 72
    .line 73
    iget-boolean p1, p0, Lfo;->c:Z

    .line 74
    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    .line 79
    .line 80
    iput-boolean v2, p0, Lfo;->c:Z

    .line 81
    .line 82
    iget-object p1, v1, Lgo;->f:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 83
    .line 84
    const-wide/16 v0, 0x0

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    move-wide v2, v0

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-wide v2, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    .line 91
    .line 92
    :goto_0
    const-wide/16 v5, 0x20

    .line 93
    .line 94
    and-long/2addr v2, v5

    .line 95
    cmp-long p1, v2, v0

    .line 96
    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0}, Lfo;->g()V

    .line 100
    .line 101
    .line 102
    :cond_5
    return v4

    .line 103
    :cond_6
    iput-boolean v4, p0, Lfo;->c:Z

    .line 104
    .line 105
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    int-to-long v0, p1

    .line 114
    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 115
    .line 116
    .line 117
    return v4

    .line 118
    :cond_7
    invoke-virtual {p0, v1, v3}, Lfo;->a(Lgo;Landroid/os/Handler;)V

    .line 119
    .line 120
    .line 121
    return v4

    .line 122
    :cond_8
    :goto_1
    return v2

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public i(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method
