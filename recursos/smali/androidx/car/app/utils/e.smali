.class public abstract Landroidx/car/app/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Landroidx/car/app/IOnDoneCallback;
    .locals 2

    .line 1
    new-instance v0, Landroidx/car/app/utils/RemoteUtils$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/car/app/utils/RemoteUtils$1;-><init>(Lks;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V
    .locals 1

    .line 1
    new-instance v0, Lgx;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lgx;-><init>(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ln40;->b(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static c(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V
    .locals 2

    .line 1
    new-instance v0, Lx5;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lx5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ln40;->b(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static d(Ljava/lang/String;Lix;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroidx/car/app/utils/e;->e(Ljava/lang/String;Lix;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const-string v0, "Host unresponsive when dispatching call "

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "CarApp.Dispatch"

    .line 13
    .line 14
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static e(Ljava/lang/String;Lix;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "CarApp"

    .line 2
    .line 3
    const-string v1, "Dispatching call "

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " to host"

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    invoke-interface {p1}, Lix;->call()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    :goto_1
    new-instance v0, Lci;

    .line 41
    .line 42
    const-string v1, "Remote "

    .line 43
    .line 44
    const-string v2, " call failed"

    .line 45
    .line 46
    invoke-static {v1, p0, v2}, Lt20;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :catch_1
    move-exception p0

    .line 55
    throw p0
.end method

.method public static f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    const-string v0, " onFailure"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lbi;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, p0, p2, p1, v2}, Lbi;-><init>(Landroidx/car/app/IOnDoneCallback;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/car/app/utils/e;->d(Ljava/lang/String;Lix;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static g(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, " onSuccess"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lbi;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, p2, p1, v2}, Lbi;-><init>(Landroidx/car/app/IOnDoneCallback;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/car/app/utils/e;->d(Ljava/lang/String;Lix;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static h(Landroidx/lifecycle/a;Lko;)Landroidx/car/app/ISurfaceCallback;
    .locals 1

    .line 1
    new-instance v0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;-><init>(Lnk;Lt30;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
