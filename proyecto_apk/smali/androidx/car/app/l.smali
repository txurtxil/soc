.class public abstract Landroidx/car/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk;


# instance fields
.field public final a:Landroidx/lifecycle/a;

.field public final b:Landroidx/lifecycle/a;

.field public final c:Landroidx/car/app/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/car/app/Session$LifecycleObserverImpl;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/car/app/Session$LifecycleObserverImpl;-><init>(Landroidx/car/app/l;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroidx/lifecycle/a;-><init>(Lsk;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/car/app/l;->a:Landroidx/lifecycle/a;

    .line 15
    .line 16
    new-instance v2, Landroidx/lifecycle/a;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Landroidx/lifecycle/a;-><init>(Lsk;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroidx/car/app/i;

    .line 27
    .line 28
    new-instance v2, Landroidx/car/app/j;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Landroidx/car/app/i;-><init>(Landroidx/lifecycle/a;Landroidx/car/app/j;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/car/app/l;->c:Landroidx/car/app/i;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final b(Llk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/l;->a:Landroidx/lifecycle/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f()Landroidx/lifecycle/a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/l;->b:Landroidx/lifecycle/a;

    .line 2
    .line 3
    return-object p0
.end method
