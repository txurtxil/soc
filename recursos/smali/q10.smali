.class public final Lq10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final j:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public volatile a:I

.field public final b:Ljava/lang/Process;

.field public final c:Lo10;

.field public final d:Ln10;

.field public final e:Ln10;

.field public final f:Ljava/util/concurrent/locks/ReentrantLock;

.field public final g:Ljava/util/concurrent/locks/Condition;

.field public final h:Ljava/util/ArrayDeque;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lq10;->j:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lu7;Ljava/lang/Process;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq10;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lq10;->g:Ljava/util/concurrent/locks/Condition;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lq10;->h:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lq10;->i:Z

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lq10;->a:I

    .line 29
    .line 30
    iput-object p2, p0, Lq10;->b:Ljava/lang/Process;

    .line 31
    .line 32
    new-instance v0, Lo10;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    instance-of v2, v1, Ljava/io/BufferedOutputStream;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    .line 47
    .line 48
    move-object v1, v2

    .line 49
    :goto_0
    invoke-direct {v0, v1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lq10;->c:Lo10;

    .line 53
    .line 54
    new-instance v0, Ln10;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ln10;-><init>(Ljava/io/InputStream;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lq10;->d:Ln10;

    .line 64
    .line 65
    new-instance v0, Ln10;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {v0, p2}, Ln10;-><init>(Ljava/io/InputStream;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lq10;->e:Ln10;

    .line 75
    .line 76
    new-instance p2, Ljava/util/concurrent/FutureTask;

    .line 77
    .line 78
    new-instance v0, Lm10;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lm10;-><init>(Lq10;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lq10;->j:Ljava/util/concurrent/ExecutorService;

    .line 87
    .line 88
    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    :try_start_0
    iget-wide v0, p1, Lu7;->a:J

    .line 92
    .line 93
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 94
    .line 95
    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput p1, p0, Lq10;->a:I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    return-void

    .line 108
    :catch_0
    move-exception p1

    .line 109
    goto :goto_4

    .line 110
    :catch_1
    move-exception p1

    .line 111
    goto :goto_1

    .line 112
    :catch_2
    move-exception p1

    .line 113
    goto :goto_2

    .line 114
    :catch_3
    move-exception p1

    .line 115
    goto :goto_3

    .line 116
    :goto_1
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    .line 117
    .line 118
    const-string v0, "Shell check interrupted"

    .line 119
    .line 120
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p2

    .line 124
    :goto_2
    new-instance p2, Ljava/io/IOException;

    .line 125
    .line 126
    const-string v0, "Shell check timeout"

    .line 127
    .line 128
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw p2

    .line 132
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    instance-of p2, p1, Ljava/io/IOException;

    .line 137
    .line 138
    if-eqz p2, :cond_1

    .line 139
    .line 140
    check-cast p1, Ljava/io/IOException;

    .line 141
    .line 142
    throw p1

    .line 143
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 144
    .line 145
    const-string v0, "Unknown ExecutionException"

    .line 146
    .line 147
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :goto_4
    invoke-virtual {p0}, Lq10;->e()V

    .line 152
    .line 153
    .line 154
    throw p1
.end method

.method public static c()Lq10;
    .locals 7

    .line 1
    const-class v0, Lem;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lem;->a:[Lq10;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_1
    aget-object v3, v1, v2

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget v5, v3, Lq10;->a:I

    .line 14
    .line 15
    if-gez v5, :cond_0

    .line 16
    .line 17
    aput-object v4, v1, v2

    .line 18
    .line 19
    move-object v3, v4

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v2

    .line 22
    goto :goto_6

    .line 23
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    if-nez v3, :cond_6

    .line 25
    .line 26
    :try_start_2
    sget-boolean v1, Lem;->b:Z

    .line 27
    .line 28
    if-nez v1, :cond_5

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    sput-boolean v1, Lem;->b:Z

    .line 32
    .line 33
    sget-object v3, Lem;->c:Lu7;

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    new-instance v3, Lu7;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    const-wide/16 v5, 0x14

    .line 43
    .line 44
    iput-wide v5, v3, Lu7;->a:J

    .line 45
    .line 46
    sput-object v3, Lem;->c:Lu7;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    move-exception v1

    .line 50
    goto :goto_7

    .line 51
    :cond_1
    :goto_1
    sget-object v3, Lem;->c:Lu7;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_3
    const-string v5, "su"

    .line 57
    .line 58
    filled-new-array {v5}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v3, v5}, Lu7;->b([Ljava/lang/String;)Lq10;

    .line 63
    .line 64
    .line 65
    move-result-object v5
    :try_end_3
    .catch Ler; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    :try_start_4
    iget v6, v5, Lq10;->a:I
    :try_end_4
    .catch Ler; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    .line 68
    if-lt v6, v1, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move v1, v2

    .line 72
    :goto_2
    if-nez v1, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :catch_0
    :cond_3
    move-object v4, v5

    .line 76
    :catch_1
    :goto_3
    if-nez v4, :cond_4

    .line 77
    .line 78
    :try_start_5
    const-class v1, Lk60;

    .line 79
    .line 80
    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 81
    :try_start_6
    sput v2, Lk60;->a:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 82
    .line 83
    :try_start_7
    monitor-exit v1

    .line 84
    const-string v1, "sh"

    .line 85
    .line 86
    filled-new-array {v1}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v3, v1}, Lu7;->b([Ljava/lang/String;)Lq10;

    .line 91
    .line 92
    .line 93
    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 94
    move-object v3, v1

    .line 95
    goto :goto_4

    .line 96
    :catchall_2
    move-exception v2

    .line 97
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 98
    :try_start_9
    throw v2

    .line 99
    :cond_4
    move-object v3, v4

    .line 100
    :goto_4
    sput-boolean v2, Lem;->b:Z

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_5
    new-instance v1, Ler;

    .line 104
    .line 105
    const-string v2, "The main shell died during initialization"

    .line 106
    .line 107
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 111
    :cond_6
    :goto_5
    monitor-exit v0

    .line 112
    return-object v3

    .line 113
    :goto_6
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 114
    :try_start_b
    throw v2

    .line 115
    :goto_7
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 116
    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Ll10;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lq10;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lq10;->d:Ln10;

    .line 9
    .line 10
    invoke-static {v0}, Lqj;->f(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lq10;->e:Ln10;

    .line 14
    .line 15
    invoke-static {v0}, Lqj;->f(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    iget-object v0, p0, Lq10;->c:Lo10;

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lq10;->c:Lo10;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_3
    iget-object v0, p0, Lq10;->c:Lo10;

    .line 31
    .line 32
    invoke-interface {p1, v0}, Ll10;->a(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    :try_start_4
    invoke-virtual {p0}, Lq10;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 45
    throw p1
.end method

.method public final b(Ll10;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq10;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Lq10;->i:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lp10;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Lp10;-><init>(Ljava/util/concurrent/locks/Condition;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lq10;->h:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :catch_0
    :goto_0
    iget-boolean v2, v1, Lp10;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    :try_start_1
    iget-object v2, v1, Lp10;->a:Ljava/util/concurrent/locks/Condition;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v1, 0x1

    .line 37
    :try_start_2
    iput-boolean v1, p0, Lq10;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lq10;->a(Ll10;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lq10;->d(Z)Ll10;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget v0, p0, Lq10;->a:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lq10;->e()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d(Z)Ll10;
    .locals 5

    .line 1
    iget-object v0, p0, Lq10;->h:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    iget-object v1, p0, Lq10;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ll10;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lq10;->i:Z

    .line 19
    .line 20
    iget-object p0, p0, Lq10;->g:Ljava/util/concurrent/locks/Condition;

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-object v3

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_1
    instance-of v4, v2, Lp10;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    check-cast v2, Lp10;

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    iput-boolean p0, v2, Lp10;->b:Z

    .line 39
    .line 40
    iget-object p0, v2, Lp10;->a:Ljava/util/concurrent/locks/Condition;

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->offerFirst(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lm1;

    .line 58
    .line 59
    const/16 v0, 0xf

    .line 60
    .line 61
    invoke-direct {p1, v0, p0}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lq10;->j:Ljava/util/concurrent/ExecutorService;

    .line 65
    .line 66
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lq10;->a:I

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lq10;->c:Lo10;

    .line 5
    .line 6
    invoke-virtual {v0}, Lo10;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    :try_start_1
    iget-object v0, p0, Lq10;->e:Ln10;

    .line 10
    .line 11
    invoke-virtual {v0}, Ln10;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    :catch_1
    :try_start_2
    iget-object v0, p0, Lq10;->d:Ln10;

    .line 15
    .line 16
    invoke-virtual {v0}, Ln10;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 17
    .line 18
    .line 19
    :catch_2
    iget-object p0, p0, Lq10;->b:Ljava/lang/Process;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
