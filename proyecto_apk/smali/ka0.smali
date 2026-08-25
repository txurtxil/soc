.class public final Lka0;
.super Lk60;


# instance fields
.field public final synthetic s:Lla0;

.field public final synthetic t:Lea0;

.field public final synthetic u:Landroid/view/View;

.field public final synthetic v:Lna0;


# direct methods
.method public constructor <init>(Lna0;Lla0;Lea0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka0;->v:Lna0;

    .line 5
    .line 6
    iput-object p2, p0, Lka0;->s:Lla0;

    .line 7
    .line 8
    iput-object p3, p0, Lka0;->t:Lea0;

    .line 9
    .line 10
    iput-object p4, p0, Lka0;->u:Landroid/view/View;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lka0;->s:Lla0;

    .line 2
    .line 3
    iget-object v0, v0, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object p0, p0, Lka0;->v:Lna0;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lqa0;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lka0;->t:Lea0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lea0;->c(Lk60;)V

    .line 5
    .line 6
    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    iget-object v0, p0, Lka0;->u:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lka0;->s:Lla0;

    .line 22
    .line 23
    iget-object v0, p1, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iget-object p0, p0, Lka0;->v:Lna0;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Lqa0;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lna0;->mChangeAnimations:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object p1, p1, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lna0;->dispatchFinishedWhenDone()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
