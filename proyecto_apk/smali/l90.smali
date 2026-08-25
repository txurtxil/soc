.class public final Ll90;
.super Lm90;


# instance fields
.field public final synthetic d:Landroid/support/v4/app/Fragment;

.field public final synthetic e:Lay;


# direct methods
.method public constructor <init>(Lay;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll90;->e:Lay;

    .line 5
    .line 6
    iput-object p4, p0, Ll90;->d:Landroid/support/v4/app/Fragment;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iput-object p2, p0, Lm90;->c:Landroid/view/View;

    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    invoke-super {p0, p1}, Lm90;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Ll90;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->P()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ll90;->d:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;)V

    iget-object v2, p0, Ll90;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->Q()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Ll90;->e:Lay;

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lay;->l(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
