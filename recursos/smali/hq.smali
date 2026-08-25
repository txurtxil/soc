.class public final Lhq;
.super Lfo;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lidv/lzn/screenonauto/MirrorMediaService;


# direct methods
.method public constructor <init>(Lidv/lzn/screenonauto/MirrorMediaService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    invoke-direct {p0}, Lfo;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object p0, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    const/16 v0, 0x5a

    .line 4
    .line 5
    invoke-static {p0, v0}, Lidv/lzn/screenonauto/MirrorMediaService;->e(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(Landroid/content/Intent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lt7;->a:I

    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x21

    .line 9
    .line 10
    const-string v2, "android.intent.extra.KEY_EVENT"

    .line 11
    .line 12
    const-class v3, Landroid/view/KeyEvent;

    .line 13
    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "REL"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v4, "UpsideDownCake"

    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ltz v0, :cond_1

    .line 44
    .line 45
    invoke-static {p1, v2, v3}, Loj;->c(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    :goto_1
    check-cast v0, Landroid/view/KeyEvent;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    iget-object p0, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p0, p1}, Lidv/lzn/screenonauto/MirrorMediaService;->e(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x1

    .line 82
    return p0

    .line 83
    :cond_3
    invoke-super {p0, p1}, Lfo;->c(Landroid/content/Intent;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object p0, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    const/16 v0, 0x7f

    .line 4
    .line 5
    invoke-static {p0, v0}, Lidv/lzn/screenonauto/MirrorMediaService;->e(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object p0, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    const/16 v0, 0x7e

    .line 4
    .line 5
    invoke-static {p0, v0}, Lidv/lzn/screenonauto/MirrorMediaService;->e(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object p0, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    const/16 v0, 0x59

    .line 4
    .line 5
    invoke-static {p0, v0}, Lidv/lzn/screenonauto/MirrorMediaService;->e(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object p0, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    const/16 v0, 0x57

    .line 4
    .line 5
    invoke-static {p0, v0}, Lidv/lzn/screenonauto/MirrorMediaService;->e(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object p0, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    const/16 v0, 0x58

    .line 4
    .line 5
    invoke-static {p0, v0}, Lidv/lzn/screenonauto/MirrorMediaService;->e(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    iget-object p0, p0, Lidv/lzn/screenonauto/MirrorMediaService;->i:Landroid/media/session/MediaController;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->skipToQueueItem(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object p0, p0, Lhq;->f:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    const/16 v0, 0x56

    .line 4
    .line 5
    invoke-static {p0, v0}, Lidv/lzn/screenonauto/MirrorMediaService;->e(Lidv/lzn/screenonauto/MirrorMediaService;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
