.class public final Lwf;
.super Ls8;
.source "SourceFile"

# interfaces
.implements Lc80;
.implements Lsk;
.implements Llg;


# instance fields
.field public final j:Lz2;

.field public final k:Lz2;

.field public final l:Landroid/os/Handler;

.field public final m:Lig;

.field public final synthetic n:Lz2;


# direct methods
.method public constructor <init>(Lz2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwf;->n:Lz2;

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lig;

    .line 12
    .line 13
    invoke-direct {v1}, Landroidx/fragment/app/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lwf;->m:Lig;

    .line 17
    .line 18
    iput-object p1, p0, Lwf;->j:Lz2;

    .line 19
    .line 20
    iput-object p1, p0, Lwf;->k:Lz2;

    .line 21
    .line 22
    iput-object v0, p0, Lwf;->l:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()Lb80;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf;->n:Lz2;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/activity/a;->e()Lb80;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final f()Landroidx/lifecycle/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf;->n:Lz2;

    .line 2
    .line 3
    iget-object p0, p0, Lz2;->u:Landroidx/lifecycle/a;

    .line 4
    .line 5
    return-object p0
.end method

.method public final x(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf;->n:Lz2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lz2;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final y()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lwf;->n:Lz2;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method
