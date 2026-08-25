.class public final Ltd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/Object;

.field public static volatile j:Ltd;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Lv6;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Lod;

.field public final f:Lsd;

.field public final g:I

.field public final h:Lsb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltd;->i:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lef;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Ltd;->c:I

    .line 13
    .line 14
    iget-object v1, p1, Lpd;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lsd;

    .line 17
    .line 18
    iput-object v1, p0, Ltd;->f:Lsd;

    .line 19
    .line 20
    iget v2, p1, Lpd;->a:I

    .line 21
    .line 22
    iput v2, p0, Ltd;->g:I

    .line 23
    .line 24
    iget-object p1, p1, Lpd;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lsb;

    .line 27
    .line 28
    iput-object p1, p0, Ltd;->h:Lsb;

    .line 29
    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Ltd;->d:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance p1, Lv6;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {p1, v3}, Lv6;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Ltd;->b:Lv6;

    .line 48
    .line 49
    new-instance p1, Lod;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lod;-><init>(Ltd;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Ltd;->e:Lod;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 61
    .line 62
    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    :try_start_0
    iput v3, p0, Ltd;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    iget-object p0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ltd;->b()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_1

    .line 91
    .line 92
    :try_start_1
    new-instance v0, Lnd;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Lnd;-><init>(Lod;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v1, v0}, Lsd;->c(Lqj;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catchall_1
    move-exception p1

    .line 102
    invoke-virtual {p0, p1}, Ltd;->d(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method

.method public static a()Ltd;
    .locals 4

    .line 1
    sget-object v0, Ltd;->i:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ltd;->j:Ltd;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget v0, p0, Ltd;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    iget-object p0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iget-object p0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Ltd;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Ltd;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget v0, p0, Ltd;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    :try_start_1
    iput v1, p0, Ltd;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    iget-object v0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Ltd;->e:Lod;

    .line 54
    .line 55
    iget-object v0, p0, Lod;->a:Ltd;

    .line 56
    .line 57
    :try_start_2
    new-instance v1, Lnd;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lnd;-><init>(Lod;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, v0, Ltd;->f:Lsd;

    .line 63
    .line 64
    invoke-interface {p0, v1}, Lsd;->c(Lqj;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    invoke-virtual {v0, p0}, Ltd;->d(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    iget-object p0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_3
    const-string p0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    .line 85
    .line 86
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_0
    iput v1, p0, Ltd;->c:I

    .line 17
    .line 18
    iget-object v1, p0, Ltd;->b:Lv6;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Ltd;->b:Lv6;

    .line 24
    .line 25
    invoke-virtual {v1}, Lv6;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Ltd;->d:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v2, Lrd;

    .line 40
    .line 41
    iget p0, p0, Ltd;->c:I

    .line 42
    .line 43
    invoke-direct {v2, v0, p0, p1}, Lrd;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iget-object p0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public final e(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ltd;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_22

    .line 14
    .line 15
    if-ltz p2, :cond_21

    .line 16
    .line 17
    if-ltz p3, :cond_20

    .line 18
    .line 19
    if-gt p2, p3, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_1
    if-eqz v0, :cond_1f

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    return-object v3

    .line 29
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-gt p2, v0, :cond_3

    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move v0, v1

    .line 38
    :goto_2
    if-eqz v0, :cond_1e

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-gt p3, v0, :cond_4

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move v0, v1

    .line 49
    :goto_3
    if-eqz v0, :cond_1d

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1c

    .line 56
    .line 57
    if-ne p2, p3, :cond_5

    .line 58
    .line 59
    goto/16 :goto_c

    .line 60
    .line 61
    :cond_5
    iget-object p0, p0, Ltd;->e:Lod;

    .line 62
    .line 63
    iget-object p0, p0, Lod;->b:Lko;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    instance-of v0, p1, Lp20;

    .line 69
    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    move-object v4, p1

    .line 73
    check-cast v4, Lp20;

    .line 74
    .line 75
    invoke-virtual {v4}, Lp20;->a()V

    .line 76
    .line 77
    .line 78
    :cond_6
    const-class v4, Lc60;

    .line 79
    .line 80
    if-nez v0, :cond_8

    .line 81
    .line 82
    :try_start_0
    instance-of v5, p1, Landroid/text/Spannable;

    .line 83
    .line 84
    if-eqz v5, :cond_7

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_7
    instance-of v5, p1, Landroid/text/Spanned;

    .line 88
    .line 89
    if-eqz v5, :cond_9

    .line 90
    .line 91
    move-object v5, p1

    .line 92
    check-cast v5, Landroid/text/Spanned;

    .line 93
    .line 94
    add-int/lit8 v6, p2, -0x1

    .line 95
    .line 96
    add-int/lit8 v7, p3, 0x1

    .line 97
    .line 98
    invoke-interface {v5, v6, v7, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-gt v5, p3, :cond_9

    .line 103
    .line 104
    new-instance v3, Li60;

    .line 105
    .line 106
    invoke-direct {v3, p1}, Li60;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto/16 :goto_b

    .line 112
    .line 113
    :cond_8
    :goto_4
    new-instance v3, Li60;

    .line 114
    .line 115
    move-object v5, p1

    .line 116
    check-cast v5, Landroid/text/Spannable;

    .line 117
    .line 118
    invoke-direct {v3, v5}, Li60;-><init>(Landroid/text/Spannable;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    :goto_5
    if-eqz v3, :cond_b

    .line 122
    .line 123
    iget-object v5, v3, Li60;->b:Landroid/text/Spannable;

    .line 124
    .line 125
    invoke-interface {v5, p2, p3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, [Lc60;

    .line 130
    .line 131
    if-eqz v4, :cond_b

    .line 132
    .line 133
    array-length v5, v4

    .line 134
    if-lez v5, :cond_b

    .line 135
    .line 136
    array-length v5, v4

    .line 137
    move v6, v1

    .line 138
    :goto_6
    if-ge v6, v5, :cond_b

    .line 139
    .line 140
    aget-object v7, v4, v6

    .line 141
    .line 142
    iget-object v8, v3, Li60;->b:Landroid/text/Spannable;

    .line 143
    .line 144
    invoke-interface {v8, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    iget-object v9, v3, Li60;->b:Landroid/text/Spannable;

    .line 149
    .line 150
    invoke-interface {v9, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eq v8, p3, :cond_a

    .line 155
    .line 156
    invoke-virtual {v3, v7}, Li60;->removeSpan(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_a
    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    invoke-static {v9, p3}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result p3

    .line 167
    add-int/lit8 v6, v6, 0x1

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_b
    if-eq p2, p3, :cond_1a

    .line 171
    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-lt p2, v4, :cond_c

    .line 177
    .line 178
    goto/16 :goto_a

    .line 179
    .line 180
    :cond_c
    new-instance v4, Lbe;

    .line 181
    .line 182
    iget-object v5, p0, Lko;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v5, Lvp;

    .line 185
    .line 186
    iget-object v5, v5, Lvp;->c:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v5, Lup;

    .line 189
    .line 190
    invoke-direct {v4, v5}, Lbe;-><init>(Lup;)V

    .line 191
    .line 192
    .line 193
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    move v6, v5

    .line 198
    move-object v5, v3

    .line 199
    move v3, v1

    .line 200
    :cond_d
    :goto_7
    move v1, p2

    .line 201
    :cond_e
    :goto_8
    const/16 v7, 0x21

    .line 202
    .line 203
    const/4 v8, 0x2

    .line 204
    const v9, 0x7fffffff

    .line 205
    .line 206
    .line 207
    if-ge p2, p3, :cond_14

    .line 208
    .line 209
    if-ge v3, v9, :cond_14

    .line 210
    .line 211
    invoke-virtual {v4, v6}, Lbe;->a(I)I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-eq v9, v2, :cond_12

    .line 216
    .line 217
    if-eq v9, v8, :cond_11

    .line 218
    .line 219
    const/4 v8, 0x3

    .line 220
    if-eq v9, v8, :cond_f

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_f
    iget-object v8, v4, Lbe;->d:Lup;

    .line 224
    .line 225
    iget-object v8, v8, Lup;->b:Lae;

    .line 226
    .line 227
    invoke-virtual {p0, p1, v1, p2, v8}, Lko;->w(Ljava/lang/CharSequence;IILae;)Z

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    if-nez v8, :cond_d

    .line 232
    .line 233
    if-nez v5, :cond_10

    .line 234
    .line 235
    new-instance v5, Li60;

    .line 236
    .line 237
    new-instance v8, Landroid/text/SpannableString;

    .line 238
    .line 239
    invoke-direct {v8, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v5, v8}, Li60;-><init>(Landroid/text/Spannable;)V

    .line 243
    .line 244
    .line 245
    :cond_10
    iget-object v8, v4, Lbe;->d:Lup;

    .line 246
    .line 247
    iget-object v8, v8, Lup;->b:Lae;

    .line 248
    .line 249
    new-instance v9, Lc60;

    .line 250
    .line 251
    invoke-direct {v9, v8}, Lc60;-><init>(Lae;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v9, v1, p2, v7}, Li60;->setSpan(Ljava/lang/Object;III)V

    .line 255
    .line 256
    .line 257
    add-int/lit8 v3, v3, 0x1

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_11
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    add-int/2addr p2, v7

    .line 265
    if-ge p2, p3, :cond_e

    .line 266
    .line 267
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    goto :goto_8

    .line 272
    :cond_12
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    add-int/2addr v1, p2

    .line 281
    if-ge v1, p3, :cond_13

    .line 282
    .line 283
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    move v6, p2

    .line 288
    :cond_13
    move p2, v1

    .line 289
    goto :goto_8

    .line 290
    :cond_14
    iget p3, v4, Lbe;->a:I

    .line 291
    .line 292
    if-ne p3, v8, :cond_17

    .line 293
    .line 294
    iget-object p3, v4, Lbe;->c:Lup;

    .line 295
    .line 296
    iget-object p3, p3, Lup;->b:Lae;

    .line 297
    .line 298
    if-eqz p3, :cond_17

    .line 299
    .line 300
    iget p3, v4, Lbe;->f:I

    .line 301
    .line 302
    if-gt p3, v2, :cond_15

    .line 303
    .line 304
    invoke-virtual {v4}, Lbe;->c()Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    if-eqz p3, :cond_17

    .line 309
    .line 310
    :cond_15
    if-ge v3, v9, :cond_17

    .line 311
    .line 312
    iget-object p3, v4, Lbe;->c:Lup;

    .line 313
    .line 314
    iget-object p3, p3, Lup;->b:Lae;

    .line 315
    .line 316
    invoke-virtual {p0, p1, v1, p2, p3}, Lko;->w(Ljava/lang/CharSequence;IILae;)Z

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    if-nez p0, :cond_17

    .line 321
    .line 322
    if-nez v5, :cond_16

    .line 323
    .line 324
    new-instance p0, Li60;

    .line 325
    .line 326
    invoke-direct {p0, p1}, Li60;-><init>(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    move-object v5, p0

    .line 330
    :cond_16
    iget-object p0, v4, Lbe;->c:Lup;

    .line 331
    .line 332
    iget-object p0, p0, Lup;->b:Lae;

    .line 333
    .line 334
    new-instance p3, Lc60;

    .line 335
    .line 336
    invoke-direct {p3, p0}, Lc60;-><init>(Lae;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5, p3, v1, p2, v7}, Li60;->setSpan(Ljava/lang/Object;III)V

    .line 340
    .line 341
    .line 342
    :cond_17
    if-eqz v5, :cond_19

    .line 343
    .line 344
    iget-object p0, v5, Li60;->b:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .line 346
    if-eqz v0, :cond_18

    .line 347
    .line 348
    check-cast p1, Lp20;

    .line 349
    .line 350
    invoke-virtual {p1}, Lp20;->b()V

    .line 351
    .line 352
    .line 353
    :cond_18
    return-object p0

    .line 354
    :cond_19
    if-eqz v0, :cond_1c

    .line 355
    .line 356
    :goto_9
    move-object p0, p1

    .line 357
    check-cast p0, Lp20;

    .line 358
    .line 359
    invoke-virtual {p0}, Lp20;->b()V

    .line 360
    .line 361
    .line 362
    return-object p1

    .line 363
    :cond_1a
    :goto_a
    if-eqz v0, :cond_1c

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :goto_b
    if-eqz v0, :cond_1b

    .line 367
    .line 368
    check-cast p1, Lp20;

    .line 369
    .line 370
    invoke-virtual {p1}, Lp20;->b()V

    .line 371
    .line 372
    .line 373
    :cond_1b
    throw p0

    .line 374
    :cond_1c
    :goto_c
    return-object p1

    .line 375
    :cond_1d
    const-string p0, "end should be < than charSequence length"

    .line 376
    .line 377
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    return-object v3

    .line 381
    :cond_1e
    const-string p0, "start should be < than charSequence length"

    .line 382
    .line 383
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    return-object v3

    .line 387
    :cond_1f
    const-string p0, "start should be <= than end"

    .line 388
    .line 389
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    return-object v3

    .line 393
    :cond_20
    const-string p0, "end cannot be negative"

    .line 394
    .line 395
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    return-object v3

    .line 399
    :cond_21
    const-string p0, "start cannot be negative"

    .line 400
    .line 401
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    return-object v3

    .line 405
    :cond_22
    const-string p0, "Not initialized yet"

    .line 406
    .line 407
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    return-object v3
.end method

.method public final f(Lqd;)V
    .locals 4

    .line 1
    const-string v0, "initCallback cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lqj;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget v0, p0, Ltd;->c:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Ltd;->c:I

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Ltd;->b:Lv6;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lv6;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Ltd;->d:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v1, Lrd;

    .line 37
    .line 38
    iget v2, p0, Ltd;->c:I

    .line 39
    .line 40
    filled-new-array {p1}, [Lqd;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v1, p1, v2, v3}, Lrd;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object p0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_2
    iget-object p0, p0, Ltd;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    .line 73
    .line 74
    throw p1
.end method
