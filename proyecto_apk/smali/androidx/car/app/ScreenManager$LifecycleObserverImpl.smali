.class Landroidx/car/app/ScreenManager$LifecycleObserverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac;


# instance fields
.field public final synthetic a:Landroidx/car/app/k;


# direct methods
.method public constructor <init>(Landroidx/car/app/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->a:Landroidx/car/app/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->a:Landroidx/car/app/k;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lmq;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "CarApp"

    .line 14
    .line 15
    const-string p1, "Screen stack was empty during lifecycle onPause"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object p1, Llk;->ON_PAUSE:Llk;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lmq;->c(Llk;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final b(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->a:Landroidx/car/app/k;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lmq;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "CarApp"

    .line 14
    .line 15
    const-string p1, "Screen stack was empty during lifecycle onStop"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object p1, Llk;->ON_STOP:Llk;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lmq;->c(Llk;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final c(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->a:Landroidx/car/app/k;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lmq;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "CarApp"

    .line 14
    .line 15
    const-string p1, "Screen stack was empty during lifecycle onStart"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object p1, Llk;->ON_START:Llk;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lmq;->c(Llk;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final d(Lsk;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->a:Landroidx/car/app/k;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lmq;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-static {v2, v3}, Landroidx/car/app/k;->b(Lmq;Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Lsk;->f()Landroidx/lifecycle/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->b(Lrk;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final e(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;->a:Landroidx/car/app/k;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lmq;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "CarApp"

    .line 14
    .line 15
    const-string p1, "Screen stack was empty during lifecycle onResume"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object p1, Llk;->ON_RESUME:Llk;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lmq;->c(Llk;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final f(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method
