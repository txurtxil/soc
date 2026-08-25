.class final Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk;
.implements Lp8;


# instance fields
.field public final a:Lnk;

.field public final b:Lbg;

.field public c:Lcs;

.field public final synthetic d:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroidx/activity/b;Lnk;Lbg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/b;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lnk;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lbg;

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Lnk;->a(Lrk;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lnk;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lnk;->b(Lrk;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lbg;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lbg;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lcs;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcs;->cancel()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lcs;

    .line 25
    .line 26
    return-void
.end method

.method public final g(Lsk;Llk;)V
    .locals 3

    .line 1
    sget-object p1, Llk;->ON_START:Llk;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/b;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lbg;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Landroidx/activity/b;->b:Ls6;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ls6;->addLast(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcs;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Lcs;-><init>(Landroidx/activity/b;Lbg;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p2, Lbg;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/activity/b;->d()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lds;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v1, v2, p1}, Lds;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p2, Lbg;->c:Lrg;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lcs;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    sget-object p1, Llk;->ON_STOP:Llk;

    .line 45
    .line 46
    if-ne p2, p1, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lcs;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lcs;->cancel()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    sget-object p1, Llk;->ON_DESTROY:Llk;

    .line 57
    .line 58
    if-ne p2, p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method
