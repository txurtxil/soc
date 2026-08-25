.class public final Lnd;
.super Lqj;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lod;


# direct methods
.method public constructor <init>(Lod;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnd;->g:Lod;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lnd;->g:Lod;

    .line 2
    .line 3
    iget-object p0, p0, Lod;->a:Ltd;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ltd;->d(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final s(Lvp;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lnd;->g:Lod;

    .line 2
    .line 3
    iput-object p1, p0, Lod;->c:Lvp;

    .line 4
    .line 5
    new-instance p1, Lko;

    .line 6
    .line 7
    iget-object v0, p0, Lod;->c:Lvp;

    .line 8
    .line 9
    new-instance v1, Lhd;

    .line 10
    .line 11
    const/16 v2, 0x9

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lhd;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lod;->a:Ltd;

    .line 17
    .line 18
    iget-object v2, v2, Ltd;->h:Lsb;

    .line 19
    .line 20
    invoke-direct {p1, v0, v1, v2}, Lko;-><init>(Lvp;Lhd;Lsb;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lod;->b:Lko;

    .line 24
    .line 25
    iget-object p0, p0, Lod;->a:Ltd;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    :try_start_0
    iput v0, p0, Ltd;->c:I

    .line 43
    .line 44
    iget-object v0, p0, Ltd;->b:Lv6;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Ltd;->b:Lv6;

    .line 50
    .line 51
    invoke-virtual {v0}, Lv6;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Ltd;->d:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v1, Lrd;

    .line 66
    .line 67
    iget p0, p0, Ltd;->c:I

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-direct {v1, p1, p0, v2}, Lrd;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    iget-object p0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
