.class public final Lpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxh;
.implements Lvz;
.implements Lc80;


# instance fields
.field public final a:Lb80;

.field public b:Landroidx/lifecycle/a;

.field public c:Lqg;


# direct methods
.method public constructor <init>(Lb80;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lpg;->b:Landroidx/lifecycle/a;

    .line 6
    .line 7
    iput-object v0, p0, Lpg;->c:Lqg;

    .line 8
    .line 9
    iput-object p1, p0, Lpg;->a:Lb80;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lf3;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpg;->d()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpg;->c:Lqg;

    .line 5
    .line 6
    iget-object p0, p0, Lqg;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lf3;

    .line 9
    .line 10
    return-object p0
.end method

.method public final b(Llk;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpg;->b:Landroidx/lifecycle/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpg;->b:Landroidx/lifecycle/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/lifecycle/a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lsk;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lpg;->b:Landroidx/lifecycle/a;

    .line 11
    .line 12
    new-instance v0, Lqg;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lqg;-><init>(Lvz;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lpg;->c:Lqg;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final e()Lb80;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpg;->d()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpg;->a:Lb80;

    .line 5
    .line 6
    return-object p0
.end method

.method public final f()Landroidx/lifecycle/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpg;->d()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpg;->b:Landroidx/lifecycle/a;

    .line 5
    .line 6
    return-object p0
.end method
