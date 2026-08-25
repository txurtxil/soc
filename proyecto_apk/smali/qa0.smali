.class public abstract Lqa0;
.super Landroid/support/v7/widget/RecyclerView$e;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$e;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqa0;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Landroid/support/v7/widget/RecyclerView$u;)Z
.end method

.method public animateAppearance(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
    .locals 8

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget v1, p3, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    iget v1, p3, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, p2, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget v5, p2, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    iget v6, p3, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget v7, p3, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lqa0;->animateMove(Landroid/support/v7/widget/RecyclerView$u;IIII)Z

    move-result p0

    return p0

    :goto_1
    invoke-virtual {v2, v3}, Lqa0;->animateAdd(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result p0

    return p0
.end method

.method public abstract animateChange(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;IIII)Z
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
    .locals 7

    .line 1
    iget v3, p3, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget v4, p3, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p4, p3, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget p3, p3, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    move v6, p3

    move v5, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    goto :goto_1

    :cond_0
    iget p3, p4, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget p4, p4, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    move v5, p3

    move v6, p4

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lqa0;->animateChange(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;IIII)Z

    move-result p0

    return p0
.end method

.method public animateDisappearance(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
    .locals 6

    iget v2, p2, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget v3, p2, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    iget v0, p3, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v5, p3

    goto :goto_3

    :cond_1
    iget p3, p3, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->r()Z

    move-result p3

    if-nez p3, :cond_2

    if-ne v2, v4, :cond_3

    if-eq v3, v5, :cond_2

    goto :goto_4

    :cond_2
    move-object v0, p0

    move-object v1, p1

    goto :goto_5

    :cond_3
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lqa0;->animateMove(Landroid/support/v7/widget/RecyclerView$u;IIII)Z

    move-result p0

    return p0

    :goto_5
    invoke-virtual {v0, v1}, Lqa0;->animateRemove(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result p0

    return p0
.end method

.method public abstract animateMove(Landroid/support/v7/widget/RecyclerView$u;IIII)Z
.end method

.method public animatePersistence(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
    .locals 6

    iget v0, p2, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget v1, p3, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    iget v1, p3, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lqa0;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget v2, p2, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget v3, p2, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    iget v4, p3, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    iget v5, p3, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lqa0;->animateMove(Landroid/support/v7/widget/RecyclerView$u;IIII)Z

    move-result p0

    return p0
.end method

.method public abstract animateRemove(Landroid/support/v7/widget/RecyclerView$u;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 0

    iget-boolean p0, p0, Lqa0;->mSupportsChangeAnimations:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqa0;->onAddFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    invoke-virtual {p0, p1}, Lqa0;->dispatchAnimationFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method

.method public final dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqa0;->onAddStarting(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method

.method public final dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lqa0;->onChangeFinished(Landroid/support/v7/widget/RecyclerView$u;Z)V

    invoke-virtual {p0, p1}, Lqa0;->dispatchAnimationFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method

.method public final dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lqa0;->onChangeStarting(Landroid/support/v7/widget/RecyclerView$u;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqa0;->onMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    invoke-virtual {p0, p1}, Lqa0;->dispatchAnimationFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method

.method public final dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqa0;->onMoveStarting(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqa0;->onRemoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    invoke-virtual {p0, p1}, Lqa0;->dispatchAnimationFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method

.method public final dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqa0;->onRemoveStarting(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 0

    iget-boolean p0, p0, Lqa0;->mSupportsChangeAnimations:Z

    return p0
.end method

.method public onAddFinished(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    return-void
.end method

.method public onAddStarting(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    return-void
.end method

.method public onChangeFinished(Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 0

    return-void
.end method

.method public onChangeStarting(Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 0

    return-void
.end method

.method public abstract onMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V
.end method

.method public onMoveStarting(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    return-void
.end method

.method public onRemoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    return-void
.end method

.method public onRemoveStarting(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Lqa0;->mSupportsChangeAnimations:Z

    return-void
.end method
