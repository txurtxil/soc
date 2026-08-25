.class public abstract Lv50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk60;

.field public static final b:Lbm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, La60;

    .line 8
    .line 9
    invoke-direct {v0}, Lk60;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lv50;->a:Lk60;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x1c

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lz50;

    .line 20
    .line 21
    invoke-direct {v0}, Ly50;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lv50;->a:Lk60;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x1a

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v0, Ly50;

    .line 32
    .line 33
    invoke-direct {v0}, Ly50;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lv50;->a:Lk60;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-object v0, Lx50;->u:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    const-string v1, "TypefaceCompatApi24Impl"

    .line 44
    .line 45
    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_3
    if-eqz v0, :cond_4

    .line 51
    .line 52
    new-instance v0, Lx50;

    .line 53
    .line 54
    invoke-direct {v0}, Lk60;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lv50;->a:Lk60;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    new-instance v0, Lw50;

    .line 61
    .line 62
    invoke-direct {v0}, Lk60;-><init>()V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lv50;->a:Lk60;

    .line 66
    .line 67
    :goto_0
    new-instance v0, Lbm;

    .line 68
    .line 69
    const/16 v1, 0x10

    .line 70
    .line 71
    invoke-direct {v0, v1}, Lbm;-><init>(I)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lv50;->b:Lbm;

    .line 75
    .line 76
    return-void
.end method

.method public static a(Landroid/content/Context;Llf;Landroid/content/res/Resources;ILjava/lang/String;IILb5;)Landroid/graphics/Typeface;
    .locals 11

    move/from16 v4, p6

    move-object/from16 v0, p7

    .line 1
    instance-of v1, p1, Lof;

    const/4 v2, 0x4

    if-eqz v1, :cond_a

    .line 2
    check-cast p1, Lof;

    .line 3
    iget-object v1, p1, Lof;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 6
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 8
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    new-instance p1, Ly5;

    invoke-direct {p1, v0, v2, v1}, Ly5;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 10
    :cond_2
    iget v1, p1, Lof;->c:I

    const/4 v7, 0x1

    if-nez v1, :cond_3

    move v1, v7

    goto :goto_2

    :cond_3
    move v1, v3

    .line 11
    :goto_2
    iget v8, p1, Lof;->b:I

    .line 12
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    new-instance v9, Lc9;

    .line 14
    invoke-direct {v9}, Lc9;-><init>()V

    .line 15
    iput-object v0, v9, Lc9;->b:Ljava/lang/Object;

    .line 16
    iget-object p1, p1, Lof;->a:Lcf;

    .line 17
    new-instance v10, Lko;

    const/4 v0, 0x5

    invoke-direct {v10, v9, v5, v0, v3}, Lko;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    if-eqz v1, :cond_6

    .line 18
    sget-object v0, Ljf;->a:Lbm;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    iget-object v1, p1, Lcf;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    sget-object v0, Ljf;->a:Lbm;

    invoke-virtual {v0, v1}, Lbm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_4

    .line 23
    new-instance p0, Lc1;

    invoke-direct {p0, v9, v0, v2, v3}, Lc1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v5, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    move-object v6, v0

    goto/16 :goto_8

    :cond_4
    const/4 v0, -0x1

    if-ne v8, v0, :cond_5

    .line 24
    invoke-static {v1, p0, p1, v4}, Ljf;->a(Ljava/lang/String;Landroid/content/Context;Lcf;I)Lhf;

    move-result-object p0

    .line 25
    invoke-virtual {v10, p0}, Lko;->F(Lhf;)V

    .line 26
    iget-object v6, p0, Lhf;->a:Landroid/graphics/Typeface;

    goto/16 :goto_8

    .line 27
    :cond_5
    new-instance v0, Lff;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lff;-><init>(Ljava/lang/String;Landroid/content/Context;Lcf;II)V

    .line 28
    :try_start_0
    sget-object p0, Ljf;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v0, v8

    .line 30
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 31
    :try_start_2
    check-cast p0, Lhf;

    .line 32
    invoke-virtual {v10, p0}, Lko;->F(Lhf;)V

    .line 33
    iget-object v6, p0, Lhf;->a:Landroid/graphics/Typeface;

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 34
    :catch_2
    new-instance p0, Ljava/lang/InterruptedException;

    const-string p1, "timeout"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :goto_4
    throw p0

    .line 36
    :goto_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 37
    :catch_3
    iget-object p0, v10, Lko;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 38
    iget-object p1, v10, Lko;->b:Ljava/lang/Object;

    check-cast p1, Lc9;

    .line 39
    new-instance v0, Ld8;

    const/4 v1, -0x3

    invoke-direct {v0, p1, v1}, Ld8;-><init>(Lc9;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    .line 40
    :cond_6
    sget-object v0, Ljf;->a:Lbm;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    iget-object v1, p1, Lcf;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    sget-object v0, Ljf;->a:Lbm;

    invoke-virtual {v0, v1}, Lbm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_7

    .line 45
    new-instance p0, Lc1;

    invoke-direct {p0, v9, v0, v2, v3}, Lc1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v5, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 46
    :cond_7
    new-instance v0, Lgf;

    invoke-direct {v0, v3, v10}, Lgf;-><init>(ILjava/lang/Object;)V

    .line 47
    sget-object v3, Ljf;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 48
    :try_start_3
    sget-object v2, Ljf;->d:Lj20;

    .line 49
    invoke-virtual {v2, v1, v6}, Lj20;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 50
    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    .line 51
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v3

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    .line 53
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v2, v1, v5}, Lj20;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    new-instance v0, Lff;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lff;-><init>(Ljava/lang/String;Landroid/content/Context;Lcf;II)V

    .line 58
    sget-object p0, Ljf;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 59
    new-instance p1, Lgf;

    invoke-direct {p1, v7, v1}, Lgf;-><init>(ILjava/lang/Object;)V

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_9

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_6

    .line 62
    :cond_9
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 63
    :goto_6
    new-instance v2, Lox;

    .line 64
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, v2, Lox;->a:Lff;

    .line 66
    iput-object p1, v2, Lox;->b:Lgf;

    .line 67
    iput-object v1, v2, Lox;->c:Landroid/os/Handler;

    .line 68
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 69
    :goto_7
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 70
    :cond_a
    sget-object v3, Lv50;->a:Lk60;

    check-cast p1, Lmf;

    invoke-virtual {v3, p0, p1, p2, v4}, Lk60;->j(Landroid/content/Context;Lmf;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 71
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    new-instance p1, Ly5;

    invoke-direct {p1, v0, v2, v6}, Ly5;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 73
    :cond_b
    invoke-virtual {v0}, Lb5;->a()V

    :goto_8
    if-eqz v6, :cond_c

    .line 74
    sget-object p0, Lv50;->b:Lbm;

    invoke-static/range {p2 .. p6}, Lv50;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lbm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v6
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p0, 0x2d

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
