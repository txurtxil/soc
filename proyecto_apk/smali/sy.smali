.class public final Lsy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static g:Lsy;


# instance fields
.field public a:Loy;

.field public b:Loy;

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/util/ArrayMap;

.field public final f:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lsy;->c:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lsy;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lsy;->e:Landroid/util/ArrayMap;

    .line 20
    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lsy;->f:Landroid/util/ArrayMap;

    .line 27
    .line 28
    return-void
.end method

.method public static c(Landroid/content/Intent;)Lqy;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {}, Lk60;->r()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Lqy;

    .line 27
    .line 28
    const-string v2, "com.topjohnwu.superuser.DAEMON_MODE"

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-direct {v1, v0, p0}, Lqy;-><init>(Landroid/content/ComponentName;Z)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    const-string p0, "RootServices outside of the app are not supported"

    .line 39
    .line 40
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    const-string p0, "The intent does not have a component set"

    .line 45
    .line 46
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lqy;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_5

    .line 15
    .line 16
    invoke-static {p1}, Lsy;->c(Landroid/content/Intent;)Lqy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lsy;->e:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lpy;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    iget-object v5, p0, Lsy;->f:Landroid/util/ArrayMap;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    new-instance p0, Lny;

    .line 34
    .line 35
    invoke-direct {p0, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget p0, v3, Lpy;->d:I

    .line 42
    .line 43
    add-int/2addr p0, v4

    .line 44
    iput p0, v3, Lpy;->d:I

    .line 45
    .line 46
    iget-object p0, v3, Lpy;->b:Landroid/os/IBinder;

    .line 47
    .line 48
    new-instance p1, Lmy;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-direct {p1, p3, v0, p0, v1}, Lmy;-><init>(Landroid/content/ServiceConnection;Lqy;Landroid/os/IBinder;I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_0
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    iget-object p0, p0, Lsy;->b:Loy;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p0, p0, Lsy;->a:Loy;

    .line 72
    .line 73
    :goto_0
    if-nez p0, :cond_2

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_2
    :try_start_0
    iget-object v3, p0, Loy;->b:Lni;

    .line 77
    .line 78
    invoke-interface {v3, p1}, Lni;->d(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    new-instance v3, Lpy;

    .line 85
    .line 86
    invoke-direct {v3, v0, p1, p0}, Lpy;-><init>(Lqy;Landroid/os/IBinder;Loy;)V

    .line 87
    .line 88
    .line 89
    new-instance v6, Lny;

    .line 90
    .line 91
    invoke-direct {v6, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, p3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    new-instance v1, Lmy;

    .line 101
    .line 102
    invoke-direct {v1, p3, v0, p1, v4}, Lmy;-><init>(Landroid/content/ServiceConnection;Lqy;Landroid/os/IBinder;I)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    return-object v2

    .line 109
    :catch_0
    move-exception p1

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    .line 113
    const/16 v1, 0x1c

    .line 114
    .line 115
    if-lt p1, v1, :cond_4

    .line 116
    .line 117
    new-instance p1, Ly5;

    .line 118
    .line 119
    const/4 v1, 0x5

    .line 120
    invoke-direct {p1, p3, v1, v0}, Ly5;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    :cond_4
    return-object v2

    .line 127
    :goto_1
    const-string p2, "IPC"

    .line 128
    .line 129
    invoke-static {p2, p1}, Lk60;->o(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lq7;->binderDied()V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_5
    const-string p0, "This method can only be called on the main thread"

    .line 137
    .line 138
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object v2
.end method

.method public final b(Lqy;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsy;->e:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lpy;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lsy;->f:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lny;

    .line 38
    .line 39
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lpy;

    .line 42
    .line 43
    if-eq p1, v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/content/ServiceConnection;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lny;->a(Landroid/content/ServiceConnection;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public final d(Landroid/content/ComponentName;Ljava/lang/String;)Lly;
    .locals 5

    .line 1
    invoke-static {}, Lk60;->r()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lsy;->c:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x4

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v2, "com.topjohnwu.superuser.RECEIVER_BROADCAST"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v3, 0x1a

    .line 21
    .line 22
    if-lt v2, v3, :cond_0

    .line 23
    .line 24
    new-instance v2, Lry;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lry;-><init>(Lsy;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Ld0;->g(Landroid/content/Context;Lry;Landroid/content/IntentFilter;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v2, Lry;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lry;-><init>(Lsy;)V

    .line 36
    .line 37
    .line 38
    const-string v3, "android.permission.BROADCAST_PACKAGE_REMOVED"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    :goto_0
    iget v1, p0, Lsy;->c:I

    .line 45
    .line 46
    or-int/lit8 v1, v1, 0x4

    .line 47
    .line 48
    iput v1, p0, Lsy;->c:I

    .line 49
    .line 50
    :cond_1
    new-instance p0, Lly;

    .line 51
    .line 52
    invoke-direct {p0, v0, p2, p1}, Lly;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    new-instance v0, Lqy;

    .line 8
    .line 9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Landroid/content/ComponentName;

    .line 12
    .line 13
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v1

    .line 19
    :goto_0
    invoke-direct {v0, v3, v2}, Lqy;-><init>(Landroid/content/ComponentName;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lsy;->b(Lqy;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return v1
.end method
