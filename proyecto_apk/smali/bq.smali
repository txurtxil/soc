.class public final synthetic Lbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Leq;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Leq;IILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lbq;->a:I

    iput-object p1, p0, Lbq;->b:Leq;

    iput p2, p0, Lbq;->c:I

    iput p3, p0, Lbq;->d:I

    iput-object p4, p0, Lbq;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lbq;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lbq;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lbq;->d:I

    .line 6
    .line 7
    iget v3, p0, Lbq;->c:I

    .line 8
    .line 9
    iget-object p0, p0, Lbq;->b:Leq;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 15
    .line 16
    :try_start_0
    iget-boolean v0, p0, Leq;->w:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Leq;->f()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v3, v2}, Leq;->c(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    :try_start_1
    const-string v0, "MirrorCompositor"

    .line 37
    .line 38
    const-string v2, "start: GL init failed"

    .line 39
    .line 40
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_2
    return-void

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :pswitch_0
    check-cast v1, Landroid/view/Surface;

    .line 51
    .line 52
    iget-boolean v0, p0, Leq;->w:Z

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_1
    iput v3, p0, Leq;->u:I

    .line 58
    .line 59
    iput v2, p0, Leq;->v:I

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Leq;->a(Landroid/view/Surface;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Leq;->e(Z)V

    .line 66
    .line 67
    .line 68
    :goto_3
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
