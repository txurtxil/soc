.class public abstract Ljy;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final CATEGORY_DAEMON_MODE:Ljava/lang/String; = "com.topjohnwu.superuser.DAEMON_MODE"


# direct methods
.method public static bind(Landroid/content/Intent;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 33
    sget-object v0, Le60;->b:Lcv;

    invoke-static {p0, v0, p1}, Ljy;->bind(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static bind(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)V
    .locals 2

    .line 1
    invoke-static {}, Lk60;->w()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1, p2}, Ljy;->bindOrTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Ll10;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sget-object p1, Lq10;->j:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    new-instance p2, Lm1;

    .line 23
    .line 24
    const/16 v0, 0xb

    .line 25
    .line 26
    invoke-direct {p2, v0, p0}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public static bindOrTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Ll10;
    .locals 4

    .line 1
    sget-object v0, Lsy;->g:Lsy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lsy;

    .line 6
    .line 7
    invoke-direct {v0}, Lsy;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lsy;->g:Lsy;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lsy;->g:Lsy;

    .line 13
    .line 14
    invoke-virtual {v0, p0, p1, p2}, Lsy;->a(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lqy;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    iget-object v2, v0, Lsy;->d:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v3, Lky;

    .line 23
    .line 24
    invoke-direct {v3, v0, p0, p1, p2}, Lky;-><init>(Lsy;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x1

    .line 43
    :goto_0
    iget p1, v0, Lsy;->c:I

    .line 44
    .line 45
    and-int p2, p1, p0

    .line 46
    .line 47
    if-nez p2, :cond_3

    .line 48
    .line 49
    or-int/2addr p0, p1

    .line 50
    iput p0, v0, Lsy;->c:I

    .line 51
    .line 52
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    const-string p0, "daemon"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string p0, "start"

    .line 66
    .line 67
    :goto_1
    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Landroid/content/ComponentName;

    .line 70
    .line 71
    invoke-virtual {v0, p1, p0}, Lsy;->d(Landroid/content/ComponentName;Ljava/lang/String;)Lly;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_3
    const/4 p0, 0x0

    .line 77
    return-object p0
.end method

.method public static createBindTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Ljava/lang/Runnable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Ljy;->bindOrTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Ll10;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p1, Lm1;

    .line 10
    .line 11
    const/16 p2, 0xb

    .line 12
    .line 13
    invoke-direct {p1, p2, p0}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public static stop(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-static {}, Lk60;->w()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Ljy;->stopOrTask(Landroid/content/Intent;)Ll10;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lq10;->j:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    new-instance v1, Lm1;

    .line 23
    .line 24
    const/16 v2, 0xb

    .line 25
    .line 26
    invoke-direct {v1, v2, p0}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public static stopOrTask(Landroid/content/Intent;)Ll10;
    .locals 5

    .line 1
    sget-object v0, Lsy;->g:Lsy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lsy;

    .line 6
    .line 7
    invoke-direct {v0}, Lsy;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lsy;->g:Lsy;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lsy;->g:Lsy;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne v1, v2, :cond_4

    .line 31
    .line 32
    invoke-static {p0}, Lsy;->c(Landroid/content/Intent;)Lqy;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, v0, Lsy;->b:Loy;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, v0, Lsy;->a:Loy;

    .line 50
    .line 51
    :goto_0
    if-nez v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Landroid/content/ComponentName;

    .line 66
    .line 67
    const-string v1, "stop"

    .line 68
    .line 69
    invoke-virtual {v0, p0, v1}, Lsy;->d(Landroid/content/ComponentName;Ljava/lang/String;)Lly;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_2
    return-object v3

    .line 75
    :cond_3
    :try_start_0
    iget-object v1, v1, Loy;->b:Lni;

    .line 76
    .line 77
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Landroid/content/ComponentName;

    .line 80
    .line 81
    const/4 v4, -0x1

    .line 82
    invoke-interface {v1, v4, v2}, Lni;->e(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    const-string v2, "IPC"

    .line 88
    .line 89
    invoke-static {v2, v1}, Lk60;->o(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v0, p0}, Lsy;->b(Lqy;)V

    .line 93
    .line 94
    .line 95
    return-object v3

    .line 96
    :cond_4
    const-string p0, "This method can only be called on the main thread"

    .line 97
    .line 98
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v3
.end method

.method public static unbind(Landroid/content/ServiceConnection;)V
    .locals 5

    .line 1
    sget-object v0, Lsy;->g:Lsy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lsy;

    .line 6
    .line 7
    invoke-direct {v0}, Lsy;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lsy;->g:Lsy;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lsy;->g:Lsy;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-ne v1, v2, :cond_3

    .line 30
    .line 31
    iget-object v1, v0, Lsy;->f:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lny;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lpy;

    .line 44
    .line 45
    iget v3, v2, Lpy;->d:I

    .line 46
    .line 47
    iget-object v4, v2, Lpy;->a:Lqy;

    .line 48
    .line 49
    add-int/lit8 v3, v3, -0x1

    .line 50
    .line 51
    iput v3, v2, Lpy;->d:I

    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    iget-object v0, v0, Lsy;->e:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :try_start_0
    iget-object v0, v2, Lpy;->c:Loy;

    .line 61
    .line 62
    iget-object v0, v0, Loy;->b:Lni;

    .line 63
    .line 64
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Landroid/content/ComponentName;

    .line 67
    .line 68
    invoke-interface {v0, v2}, Lni;->a(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v2, "IPC"

    .line 74
    .line 75
    invoke-static {v2, v0}, Lk60;->o(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Lny;->a(Landroid/content/ServiceConnection;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void

    .line 82
    :cond_3
    const-string p0, "This method can only be called on the main thread"

    .line 83
    .line 84
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    check-cast v0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v0}, Ljy;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-super {p0, v0}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lyy;->e:Lyy;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Lyy;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lyy;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lyy;->e:Lyy;

    .line 30
    .line 31
    :cond_1
    sget-object p1, Lyy;->e:Lyy;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v0, Lxy;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lxy;-><init>(Ljy;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lyy;->b:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljy;->getComponentName()Landroid/content/ComponentName;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljy;->onCreate()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 1
    sget-object p0, Lk60;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    return-object p1
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public onCreate()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final stopSelf()V
    .locals 3

    .line 1
    sget-object v0, Lyy;->e:Lyy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lyy;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lyy;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lyy;->e:Lyy;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lyy;->e:Lyy;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljy;->getComponentName()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Luy;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v0, p0, v2}, Luy;-><init>(Lyy;Landroid/content/ComponentName;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Le60;->a(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
