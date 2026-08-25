.class public final Lcom/google/android/apps/auto/sdk/service/a/a;
.super Lp90;


# instance fields
.field private a:Lcom/google/android/gms/car/CarMessageManager;

.field private b:Lcom/google/android/apps/auto/sdk/service/a/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/car/CarMessageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->a:Lcom/google/android/gms/car/CarMessageManager;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/apps/auto/sdk/service/a/b;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/google/android/apps/auto/sdk/service/a/b;-><init>(Lcom/google/android/apps/auto/sdk/service/a/a;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->a:Lcom/google/android/gms/car/CarMessageManager;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarMessageManager;->registerMessageListener(Lcom/google/android/gms/car/CarMessageManager$CarMessageListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static a(I)I
    .locals 2

    .line 2
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarAppFocusManagerGms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "invalid category type"

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private final a(IZ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->a:Lcom/google/android/gms/car/CarMessageManager;

    const-string v0, "invalid category"

    const-string v1, "CarAppFocusManagerGms"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p2, 0x1b

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown appType "

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lc2;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p2, 0x1c

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown category "

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    const/4 v2, 0x2

    :cond_5
    :goto_2
    invoke-interface {p0, p1, v3, v2}, Lcom/google/android/gms/car/CarMessageManager;->sendIntegerMessage(III)V

    return-void
.end method

.method private static b(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown appType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarAppFocusManagerGms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "invalid app type"

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public final abandonAppFocus(Lo90;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/auto/sdk/service/a/b;->a(Lo90;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/auto/sdk/service/a/a;->a(IZ)V

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->a:Lcom/google/android/gms/car/CarMessageManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/car/CarMessageManager;->releaseCategory(I)V
    :try_end_1
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :goto_1
    :try_start_2
    const-string v2, "CarAppFocusManagerGms"

    const-string v3, "Abandoned app focus but caller isn\'t the owner.  Ignoring."

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_3
    const-string v2, "CarAppFocusManagerGms"

    const-string v3, "Abandoned app focus but car is not connected"

    goto :goto_2

    :cond_0
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final abandonAppFocus(Lo90;I)V
    .locals 2

    .line 2
    invoke-static {p2}, Lcom/google/android/apps/auto/sdk/service/a/a;->b(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/auto/sdk/service/a/b;->a(I)Lo90;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    invoke-virtual {v1, p2, p1}, Lcom/google/android/apps/auto/sdk/service/a/b;->b(ILo90;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/google/android/apps/auto/sdk/service/a/a;->a(IZ)V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->a:Lcom/google/android/gms/car/CarMessageManager;

    invoke-interface {p0, p2}, Lcom/google/android/gms/car/CarMessageManager;->releaseCategory(I)V
    :try_end_1
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_0
    :try_start_2
    const-string p1, "CarAppFocusManagerGms"

    const-string p2, "Abandoned app focus but caller isn\'t the owner.  Ignoring."

    :goto_1
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    const-string p1, "CarAppFocusManagerGms"

    const-string p2, "Abandoned app focus but car is not connected"

    goto :goto_1

    :cond_0
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final addFocusListener(Ln90;I)V
    .locals 0

    invoke-static {p2}, Lcom/google/android/apps/auto/sdk/service/a/a;->b(I)I

    move-result p2

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/apps/auto/sdk/service/a/b;->b(ILn90;)V

    return-void
.end method

.method public final isOwningFocus(ILo90;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/apps/auto/sdk/service/a/a;->b(I)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/apps/auto/sdk/service/a/b;->a(Lo90;I)Z

    move-result p0

    return p0
.end method

.method public final onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public final removeFocusListener(Ln90;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/service/a/b;->a(Ln90;)V

    return-void
.end method

.method public final removeFocusListener(Ln90;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/android/apps/auto/sdk/service/a/a;->b(I)I

    move-result p2

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/apps/auto/sdk/service/a/b;->a(ILn90;)V

    return-void
.end method

.method public final requestAppFocus(ILo90;)I
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/google/android/apps/auto/sdk/service/a/a;->b(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/google/android/apps/auto/sdk/service/a/b;->a(I)Lo90;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->a:Lcom/google/android/gms/car/CarMessageManager;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Lcom/google/android/gms/car/CarMessageManager;->acquireCategory(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/service/a/a;->b:Lcom/google/android/apps/auto/sdk/service/a/b;

    .line 24
    .line 25
    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/auto/sdk/service/a/b;->a(ILo90;)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/auto/sdk/service/a/a;->a(IZ)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2}, Lo90;->b()V
    :try_end_1
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :goto_1
    new-instance p1, Lt90;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw p0

    .line 50
    :cond_1
    const-string p0, "null listener"

    .line 51
    .line 52
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return p0
.end method
