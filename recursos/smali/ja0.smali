.class public final Lja0;
.super Lk60;


# instance fields
.field public final synthetic s:Landroid/support/v7/widget/RecyclerView$u;

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:Lea0;

.field public final synthetic w:Lna0;


# direct methods
.method public constructor <init>(Lna0;Landroid/support/v7/widget/RecyclerView$u;IILea0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lja0;->w:Lna0;

    .line 5
    .line 6
    iput-object p2, p0, Lja0;->s:Landroid/support/v7/widget/RecyclerView$u;

    .line 7
    .line 8
    iput p3, p0, Lja0;->t:I

    .line 9
    .line 10
    iput p4, p0, Lja0;->u:I

    .line 11
    .line 12
    iput-object p5, p0, Lja0;->v:Lea0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lja0;->w:Lna0;

    .line 2
    .line 3
    iget-object p0, p0, Lja0;->s:Landroid/support/v7/widget/RecyclerView$u;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lqa0;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lja0;->v:Lea0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lea0;->c(Lk60;)V

    iget-object p1, p0, Lja0;->s:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, p0, Lja0;->w:Lna0;

    invoke-virtual {v0, p1}, Lqa0;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    iget-object p1, v0, Lna0;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object p0, p0, Lja0;->s:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lna0;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lja0;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget p0, p0, Lja0;->u:I

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method
