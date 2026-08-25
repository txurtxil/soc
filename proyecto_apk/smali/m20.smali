.class public final Lm20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lvp;


# direct methods
.method public constructor <init>(Lvp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm20;->a:Lvp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lm20;->a:Lvp;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ln20;

    .line 12
    .line 13
    iget-object v0, p0, Lvp;->a:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lvp;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ln20;

    .line 19
    .line 20
    if-eq v1, p1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lvp;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ln20;

    .line 25
    .line 26
    if-ne v1, p1, :cond_2

    .line 27
    .line 28
    :cond_1
    const/4 v1, 0x2

    .line 29
    invoke-virtual {p0, p1, v1}, Lvp;->a(Ln20;I)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    monitor-exit v0

    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
