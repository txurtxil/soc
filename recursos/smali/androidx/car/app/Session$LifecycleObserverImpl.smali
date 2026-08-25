.class Landroidx/car/app/Session$LifecycleObserverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac;


# instance fields
.field public final synthetic a:Landroidx/car/app/l;


# direct methods
.method public constructor <init>(Landroidx/car/app/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/car/app/Session$LifecycleObserverImpl;->a:Landroidx/car/app/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/Session$LifecycleObserverImpl;->a:Landroidx/car/app/l;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 4
    .line 5
    sget-object p1, Llk;->ON_PAUSE:Llk;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/Session$LifecycleObserverImpl;->a:Landroidx/car/app/l;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 4
    .line 5
    sget-object p1, Llk;->ON_STOP:Llk;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/Session$LifecycleObserverImpl;->a:Landroidx/car/app/l;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 4
    .line 5
    sget-object p1, Llk;->ON_START:Llk;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d(Lsk;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/car/app/Session$LifecycleObserverImpl;->a:Landroidx/car/app/l;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 4
    .line 5
    sget-object v1, Llk;->ON_DESTROY:Llk;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lsk;->f()Landroidx/lifecycle/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->b(Lrk;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final e(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/Session$LifecycleObserverImpl;->a:Landroidx/car/app/l;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 4
    .line 5
    sget-object p1, Llk;->ON_RESUME:Llk;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f(Lsk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/Session$LifecycleObserverImpl;->a:Landroidx/car/app/l;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 4
    .line 5
    sget-object p1, Llk;->ON_CREATE:Llk;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
