.class public Lw80;
.super Ly80;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ly80;-><init>()V

    .line 23
    invoke-static {}, Lb0;->f()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Lw80;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lf90;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ly80;-><init>(Lf90;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lf90;->d()Landroid/view/WindowInsets;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lb0;->g(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lb0;->f()Landroid/view/WindowInsets$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    iput-object p1, p0, Lw80;->a:Landroid/view/WindowInsets$Builder;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public b()Lf90;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly80;->a()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lw80;->a:Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    invoke-static {p0}, Lb0;->h(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0}, Lf90;->e(Landroid/view/WindowInsets;Landroid/view/View;)Lf90;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object v1, p0, Lf90;->a:Le90;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Le90;->k([Llj;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public c(Llj;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lw80;->a:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Llj;->b()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lb0;->s(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(Llj;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lw80;->a:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Llj;->b()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lb0;->l(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
