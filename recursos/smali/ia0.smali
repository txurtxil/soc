.class public final Lia0;
.super Lk60;


# instance fields
.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Lea0;

.field public final synthetic v:Lna0;


# direct methods
.method public synthetic constructor <init>(Lna0;Ljava/lang/Object;Lea0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lia0;->s:I

    iput-object p1, p0, Lia0;->v:Lna0;

    iput-object p2, p0, Lia0;->t:Ljava/lang/Object;

    iput-object p3, p0, Lia0;->u:Lea0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lia0;->t:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 4
    .line 5
    iget-object p0, p0, Lia0;->v:Lna0;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lqa0;->dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lia0;->t:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 4
    .line 5
    iget-object p0, p0, Lia0;->v:Lna0;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lqa0;->dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final N(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lia0;->u:Lea0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lea0;->c(Lk60;)V

    .line 5
    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lia0;->t:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 16
    .line 17
    iget-object p0, p0, Lia0;->v:Lna0;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lqa0;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lna0;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 23
    .line 24
    check-cast p1, Landroid/support/v7/widget/RecyclerView$u;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lna0;->dispatchFinishedWhenDone()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final O(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lia0;->u:Lea0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lea0;->c(Lk60;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lia0;->t:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 11
    .line 12
    iget-object p0, p0, Lia0;->v:Lna0;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lqa0;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lna0;->mAddAnimations:Ljava/util/ArrayList;

    .line 18
    .line 19
    check-cast p1, Landroid/support/v7/widget/RecyclerView$u;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lna0;->dispatchFinishedWhenDone()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lia0;->s:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia0;->t:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lla0;

    .line 9
    .line 10
    iget-object v0, v0, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iget-object p0, p0, Lia0;->v:Lna0;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lqa0;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-direct {p0}, Lia0;->M()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    invoke-direct {p0}, Lia0;->L()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lia0;->s:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia0;->u:Lea0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lea0;->c(Lk60;)V

    .line 10
    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lia0;->t:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lla0;

    .line 27
    .line 28
    iget-object v0, p1, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iget-object p0, p0, Lia0;->v:Lna0;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lqa0;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lna0;->mChangeAnimations:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object p1, p1, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lna0;->dispatchFinishedWhenDone()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    invoke-direct {p0, p1}, Lia0;->O(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    invoke-direct {p0, p1}, Lia0;->N(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p0, p0, Lia0;->s:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
