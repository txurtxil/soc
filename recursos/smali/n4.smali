.class public final Ln4;
.super Lrf;
.source "SourceFile"


# instance fields
.field public final synthetic j:Lw4;

.field public final synthetic k:Lz4;


# direct methods
.method public constructor <init>(Lz4;Lz4;Lw4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln4;->k:Lz4;

    .line 2
    .line 3
    iput-object p3, p0, Ln4;->j:Lw4;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lrf;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Lg20;
    .locals 0

    .line 1
    iget-object p0, p0, Ln4;->j:Lw4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object p0, p0, Ln4;->k:Lz4;

    .line 2
    .line 3
    invoke-virtual {p0}, Lz4;->getInternalPopup()Ly4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ly4;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lz4;->f:Ly4;

    .line 14
    .line 15
    invoke-static {p0}, Lq4;->b(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p0}, Lq4;->a(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-interface {v0, v1, p0}, Ly4;->n(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method
