.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/support/v4/media/session/a;

    .line 8
    .line 9
    if-eqz p0, :cond_8

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/a;->a:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/a;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 19
    .line 20
    const-string v1, "android.support.v4.media.session.EXTRA_BINDER"

    .line 21
    .line 22
    invoke-static {p2, v1}, Lv7;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget v2, Landroid/support/v4/media/session/b;->b:I

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    move-object v3, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v3, "android.support.v4.media.session.IMediaSession"

    .line 34
    .line 35
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    instance-of v4, v3, Lji;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    check-cast v3, Lji;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance v3, Lii;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, v3, Lii;->a:Landroid/os/IBinder;

    .line 54
    .line 55
    :goto_0
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iput-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->c:Lji;

    .line 59
    .line 60
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 61
    :try_start_2
    iget-object v0, p0, Landroid/support/v4/media/session/a;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 62
    .line 63
    const-string v1, "android.support.v4.media.session.SESSION_TOKEN2"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    :try_start_3
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroid/os/Bundle;

    .line 70
    .line 71
    if-nez p2, :cond_3

    .line 72
    .line 73
    :catch_0
    move-object p2, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-class v1, Lgt;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "a"

    .line 85
    .line 86
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    instance-of v1, p2, Landroidx/versionedparcelable/ParcelImpl;

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    check-cast p2, Landroidx/versionedparcelable/ParcelImpl;

    .line 95
    .line 96
    iget-object p2, p2, Landroidx/versionedparcelable/ParcelImpl;->a:Ly60;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string v1, "Invalid parcel"

    .line 102
    .line 103
    invoke-direct {p2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :goto_1
    :try_start_4
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    :try_start_5
    iput-object p2, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->d:Ly60;

    .line 111
    .line 112
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    :try_start_6
    iget-object p2, p0, Landroid/support/v4/media/session/a;->b:Ljava/util/ArrayList;

    .line 114
    .line 115
    iget-object v0, p0, Landroid/support/v4/media/session/a;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Lji;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-nez v0, :cond_5

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_6

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    if-eqz p2, :cond_7

    .line 143
    .line 144
    invoke-static {}, Lc2;->l()V

    .line 145
    .line 146
    .line 147
    :goto_2
    monitor-exit p1

    .line 148
    goto :goto_4

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    goto :goto_3

    .line 151
    :cond_7
    new-instance p2, Lxn;

    .line 152
    .line 153
    invoke-direct {p2}, Lxn;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Landroid/support/v4/media/session/a;->c:Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-virtual {p0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    :catchall_1
    move-exception p0

    .line 163
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 164
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 165
    :catchall_2
    move-exception p0

    .line 166
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 167
    :try_start_a
    throw p0

    .line 168
    :goto_3
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 169
    throw p0

    .line 170
    :cond_8
    :goto_4
    return-void
.end method
