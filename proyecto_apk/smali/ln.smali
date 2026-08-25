.class public Lln;
.super Landroid/service/media/MediaBrowserService;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcf;


# direct methods
.method public constructor <init>(Lcf;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lln;->a:Lcf;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 7

    .line 1
    invoke-static {p3}, Lko;->r(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lln;->a:Lcf;

    .line 5
    .line 6
    iget-object v0, p0, Lcf;->e:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, v0

    .line 9
    check-cast v2, Lvn;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    const/4 p3, -0x1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-string v4, "extra_client_version"

    .line 26
    .line 27
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Landroid/os/Messenger;

    .line 37
    .line 38
    iget-object v4, v2, Lvn;->e:Ldb0;

    .line 39
    .line 40
    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Lcf;->d:Ljava/lang/Object;

    .line 44
    .line 45
    new-instance v3, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "extra_service_version"

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcf;->d:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Landroid/os/Messenger;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "extra_messenger"

    .line 65
    .line 66
    invoke-static {v3, v5, v4}, Lv7;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 67
    .line 68
    .line 69
    iget-object v4, v2, Lvn;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Lji;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-nez v4, :cond_1

    .line 78
    .line 79
    move-object v4, v0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :goto_1
    const-string v5, "extra_session_binder"

    .line 86
    .line 87
    invoke-static {v3, v5, v4}, Lv7;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    iget-object v4, p0, Lcf;->b:Ljava/io/Serializable;

    .line 92
    .line 93
    check-cast v4, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :goto_2
    const-string v4, "extra_calling_pid"

    .line 99
    .line 100
    invoke-virtual {v1, v4, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move v4, p3

    .line 108
    move-object p3, v3

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    move v4, p3

    .line 111
    move-object p3, v0

    .line 112
    :goto_3
    new-instance v1, Lkn;

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    move-object v3, p1

    .line 116
    move v5, p2

    .line 117
    invoke-direct/range {v1 .. v6}, Lkn;-><init>(Lvn;Ljava/lang/String;IILc9;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcf;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Landroid/os/Messenger;

    .line 123
    .line 124
    if-eqz p0, :cond_4

    .line 125
    .line 126
    iget-object p0, v2, Lvn;->c:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_4
    if-nez p3, :cond_5

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    move-object v0, p3

    .line 135
    :goto_4
    new-instance p0, Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 136
    .line 137
    const-string p1, "root"

    .line 138
    .line 139
    invoke-direct {p0, p1, v0}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    return-object p0
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2

    .line 1
    new-instance v0, Lc9;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lin;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p2, p1, v1, v0}, Lin;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lln;->a:Lcf;

    .line 15
    .line 16
    iget-object p0, p0, Lcf;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lvn;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lvn;->c(Ljava/lang/String;Lqn;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 1
    new-instance p0, Lc9;

    .line 2
    .line 3
    const/16 p1, 0x13

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lc9;->w(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
