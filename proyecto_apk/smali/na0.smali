.class public abstract Lna0;
.super Lqa0;


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lla0;",
            ">;>;"
        }
    .end annotation
.end field

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lma0;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lla0;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lma0;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lqa0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mAdditionsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mMovesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mChangesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mAddAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mMoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mRemoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0}, Lem;->s(Landroid/view/View;)Lea0;

    move-result-object v0

    iget-object v1, p0, Lna0;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lna0;->getRemoveDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lea0;->b(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lea0;->a(F)V

    new-instance v1, Lia0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lia0;-><init>(Lna0;Ljava/lang/Object;Lea0;I)V

    invoke-virtual {v0, v1}, Lea0;->c(Lk60;)V

    invoke-virtual {v0}, Lea0;->d()V

    return-void
.end method

.method public animateAdd(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lna0;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public animateAddImpl(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 3

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0}, Lem;->s(Landroid/view/View;)Lea0;

    move-result-object v0

    iget-object v1, p0, Lna0;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lea0;->a(F)V

    invoke-virtual {p0}, Lna0;->getAddDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lea0;->b(J)V

    new-instance v1, Lia0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v0, v2}, Lia0;-><init>(Lna0;Ljava/lang/Object;Lea0;I)V

    invoke-virtual {v0, v1}, Lea0;->c(Lk60;)V

    invoke-virtual {v0}, Lea0;->d()V

    return-void
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;IIII)Z
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p3

    .line 4
    move v3, p4

    .line 5
    move v4, p5

    .line 6
    move v5, p6

    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {v0 .. v5}, Lna0;->animateMove(Landroid/support/v7/widget/RecyclerView$u;IIII)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object p0, v1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget-object p1, v1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object p3, v1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    invoke-virtual {v0, v1}, Lna0;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 33
    .line 34
    .line 35
    sub-int p5, v4, v2

    .line 36
    .line 37
    int-to-float p4, p5

    .line 38
    sub-float/2addr p4, p0

    .line 39
    float-to-int p4, p4

    .line 40
    sub-int p6, v5, v3

    .line 41
    .line 42
    int-to-float p5, p6

    .line 43
    sub-float/2addr p5, p1

    .line 44
    float-to-int p5, p5

    .line 45
    iget-object p6, v1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {p6, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 48
    .line 49
    .line 50
    iget-object p0, v1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 53
    .line 54
    .line 55
    iget-object p0, v1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Lna0;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p2, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 66
    .line 67
    neg-int p1, p4

    .line 68
    int-to-float p1, p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p2, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 73
    .line 74
    neg-int p1, p5

    .line 75
    int-to-float p1, p1

    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p2, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object p0, v0, Lna0;->mPendingChanges:Ljava/util/ArrayList;

    .line 86
    .line 87
    new-instance p1, Lla0;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p1, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 93
    .line 94
    iput-object p2, p1, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 95
    .line 96
    iput v2, p1, Lla0;->c:I

    .line 97
    .line 98
    iput v3, p1, Lla0;->d:I

    .line 99
    .line 100
    iput v4, p1, Lla0;->e:I

    .line 101
    .line 102
    iput v5, p1, Lla0;->f:I

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    const/4 p0, 0x1

    .line 108
    return p0
.end method

.method public animateChangeImpl(Lla0;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 9
    .line 10
    :goto_0
    iget-object v2, p1, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 15
    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    invoke-static {v0}, Lem;->s(Landroid/view/View;)Lea0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lna0;->getChangeDuration()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {v0, v3, v4}, Lea0;->b(J)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lna0;->mChangeAnimations:Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v4, p1, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget v3, p1, Lla0;->e:I

    .line 38
    .line 39
    iget v4, p1, Lla0;->c:I

    .line 40
    .line 41
    sub-int/2addr v3, v4

    .line 42
    int-to-float v3, v3

    .line 43
    iget-object v4, v0, Lea0;->a:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/view/View;

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 58
    .line 59
    .line 60
    :cond_2
    iget v3, p1, Lla0;->f:I

    .line 61
    .line 62
    iget v4, p1, Lla0;->d:I

    .line 63
    .line 64
    sub-int/2addr v3, v4

    .line 65
    int-to-float v3, v3

    .line 66
    iget-object v4, v0, Lea0;->a:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroid/view/View;

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {v0, v2}, Lea0;->a(F)V

    .line 84
    .line 85
    .line 86
    new-instance v3, Lia0;

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    invoke-direct {v3, p0, p1, v0, v4}, Lia0;-><init>(Lna0;Ljava/lang/Object;Lea0;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Lea0;->c(Lk60;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lea0;->d()V

    .line 96
    .line 97
    .line 98
    :cond_4
    if-eqz v1, :cond_7

    .line 99
    .line 100
    invoke-static {v1}, Lem;->s(Landroid/view/View;)Lea0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v3, p0, Lna0;->mChangeAnimations:Ljava/util/ArrayList;

    .line 105
    .line 106
    iget-object v4, p1, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    iget-object v3, v0, Lea0;->a:Ljava/lang/ref/WeakReference;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Landroid/view/View;

    .line 118
    .line 119
    if-eqz v3, :cond_5

    .line 120
    .line 121
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object v3, v0, Lea0;->a:Ljava/lang/ref/WeakReference;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Landroid/view/View;

    .line 135
    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 143
    .line 144
    .line 145
    :cond_6
    invoke-virtual {p0}, Lna0;->getChangeDuration()J

    .line 146
    .line 147
    .line 148
    move-result-wide v2

    .line 149
    invoke-virtual {v0, v2, v3}, Lea0;->b(J)V

    .line 150
    .line 151
    .line 152
    const/high16 v2, 0x3f800000    # 1.0f

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Lea0;->a(F)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Lka0;

    .line 158
    .line 159
    invoke-direct {v2, p0, p1, v0, v1}, Lka0;-><init>(Lna0;Lla0;Lea0;Landroid/view/View;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2}, Lea0;->c(Lk60;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lea0;->d()V

    .line 166
    .line 167
    .line 168
    :cond_7
    return-void
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$u;IIII)Z
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 2
    .line 3
    int-to-float p2, p2

    .line 4
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-float/2addr v1, p2

    .line 11
    float-to-int p2, v1

    .line 12
    int-to-float p3, p3

    .line 13
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-float/2addr v1, p3

    .line 20
    float-to-int p3, v1

    .line 21
    invoke-virtual {p0, p1}, Lna0;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 22
    .line 23
    .line 24
    sub-int v1, p4, p2

    .line 25
    .line 26
    sub-int v2, p5, p3

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lqa0;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_0
    if-eqz v1, :cond_1

    .line 38
    .line 39
    neg-int v1, v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 42
    .line 43
    .line 44
    :cond_1
    if-eqz v2, :cond_2

    .line 45
    .line 46
    neg-int v1, v2

    .line 47
    int-to-float v1, v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p0, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v0, Lma0;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, v0, Lma0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 59
    .line 60
    iput p2, v0, Lma0;->b:I

    .line 61
    .line 62
    iput p3, v0, Lma0;->c:I

    .line 63
    .line 64
    iput p4, v0, Lma0;->d:I

    .line 65
    .line 66
    iput p5, v0, Lma0;->e:I

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0
.end method

.method public animateMoveImpl(Landroid/support/v7/widget/RecyclerView$u;IIII)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 2
    .line 3
    sub-int/2addr p4, p2

    .line 4
    sub-int/2addr p5, p3

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lem;->s(Landroid/view/View;)Lea0;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    iget-object p3, p3, Lea0;->a:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Landroid/view/View;

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 27
    .line 28
    .line 29
    :cond_0
    if-eqz p5, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Lem;->s(Landroid/view/View;)Lea0;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    iget-object p3, p3, Lea0;->a:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Landroid/view/View;

    .line 42
    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {v0}, Lem;->s(Landroid/view/View;)Lea0;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget-object p3, p0, Lna0;->mMoveAnimations:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lna0;->getMoveDuration()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-virtual {p2, v0, v1}, Lea0;->b(J)V

    .line 66
    .line 67
    .line 68
    move p3, p4

    .line 69
    move p4, p5

    .line 70
    move-object p5, p2

    .line 71
    move-object p2, p1

    .line 72
    move-object p1, p0

    .line 73
    new-instance p0, Lja0;

    .line 74
    .line 75
    invoke-direct/range {p0 .. p5}, Lja0;-><init>(Lna0;Landroid/support/v7/widget/RecyclerView$u;IILea0;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p5, p0}, Lea0;->c(Lk60;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p5}, Lea0;->d()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lna0;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    iget-object p0, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$u;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lla0;

    .line 14
    .line 15
    invoke-virtual {p0, v1, p1}, Lna0;->c(Lla0;Landroid/support/v7/widget/RecyclerView$u;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, v1, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public final c(Lla0;Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    iput-object v2, p1, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p1, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 12
    .line 13
    if-ne v0, p2, :cond_1

    .line 14
    .line 15
    iput-object v2, p1, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 16
    .line 17
    move v3, v1

    .line 18
    :goto_0
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 19
    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2, v3}, Lqa0;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    return v3
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$u;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$u;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lqa0;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$u;Ljava/util/List;)Z

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

.method public cancelAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    :cond_0
    :goto_0
    add-int/lit8 p0, p0, -0x1

    .line 6
    .line 7
    if-ltz p0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/support/v7/widget/RecyclerView$u;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 16
    .line 17
    invoke-static {v0}, Lem;->s(Landroid/view/View;)Lea0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lea0;->a:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/View;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public final d(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 2
    .line 3
    sget-object v1, Lgn;->d:Li90;

    .line 4
    .line 5
    iget-object v2, v1, Li90;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Landroid/animation/TimeInterpolator;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v1, Li90;->a:Ljava/lang/Object;

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, v1, Li90;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroid/animation/TimeInterpolator;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lna0;->endAnimation(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public dispatchFinishedWhenDone()V
    .locals 1

    invoke-virtual {p0}, Lna0;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lna0;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lem;->s(Landroid/view/View;)Lea0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lea0;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/View;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-ltz v1, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lma0;

    .line 42
    .line 43
    iget-object v3, v3, Lma0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 44
    .line 45
    if-ne v3, p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lqa0;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lna0;->mPendingChanges:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p0, p1, v1}, Lna0;->b(Landroid/support/v7/widget/RecyclerView$u;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/high16 v3, 0x3f800000    # 1.0f

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lqa0;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v1, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lqa0;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v1, p0, Lna0;->mChangesList:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 104
    .line 105
    if-ltz v1, :cond_6

    .line 106
    .line 107
    iget-object v4, p0, Lna0;->mChangesList:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p0, p1, v4}, Lna0;->b(Landroid/support/v7/widget/RecyclerView$u;Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    iget-object v4, p0, Lna0;->mChangesList:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_5
    goto :goto_1

    .line 130
    :cond_6
    iget-object v1, p0, Lna0;->mMovesList:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 137
    .line 138
    if-ltz v1, :cond_9

    .line 139
    .line 140
    iget-object v4, p0, Lna0;->mMovesList:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 153
    .line 154
    if-ltz v5, :cond_8

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Lma0;

    .line 161
    .line 162
    iget-object v6, v6, Lma0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 163
    .line 164
    if-ne v6, p1, :cond_7

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lqa0;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-eqz v4, :cond_8

    .line 183
    .line 184
    iget-object v4, p0, Lna0;->mMovesList:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_7
    goto :goto_3

    .line 191
    :cond_8
    :goto_4
    goto :goto_2

    .line 192
    :cond_9
    iget-object v1, p0, Lna0;->mAdditionsList:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    :goto_5
    add-int/lit8 v1, v1, -0x1

    .line 199
    .line 200
    if-ltz v1, :cond_b

    .line 201
    .line 202
    iget-object v2, p0, Lna0;->mAdditionsList:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_a

    .line 215
    .line 216
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1}, Lqa0;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_a

    .line 227
    .line 228
    iget-object v2, p0, Lna0;->mAdditionsList:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :cond_a
    goto :goto_5

    .line 234
    :cond_b
    iget-object v0, p0, Lna0;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lna0;->mAddAnimations:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lna0;->mChangeAnimations:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lna0;->mMoveAnimations:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lna0;->dispatchFinishedWhenDone()V

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method public endAnimations()V
    .locals 7

    .line 1
    iget-object v0, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lma0;

    .line 19
    .line 20
    iget-object v3, v2, Lma0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 21
    .line 22
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v2, Lma0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lqa0;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    if-ltz v0, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/support/v7/widget/RecyclerView$u;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lqa0;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 75
    .line 76
    const/high16 v2, 0x3f800000    # 1.0f

    .line 77
    .line 78
    if-ltz v0, :cond_2

    .line 79
    .line 80
    iget-object v3, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroid/support/v7/widget/RecyclerView$u;

    .line 87
    .line 88
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3}, Lqa0;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    iget-object v0, p0, Lna0;->mPendingChanges:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 109
    .line 110
    iget-object v3, p0, Lna0;->mPendingChanges:Ljava/util/ArrayList;

    .line 111
    .line 112
    if-ltz v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Lla0;

    .line 119
    .line 120
    iget-object v4, v3, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 121
    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    invoke-virtual {p0, v3, v4}, Lna0;->c(Lla0;Landroid/support/v7/widget/RecyclerView$u;)Z

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object v4, v3, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 128
    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0, v3, v4}, Lna0;->c(Lla0;Landroid/support/v7/widget/RecyclerView$u;)Z

    .line 132
    .line 133
    .line 134
    :cond_4
    goto :goto_3

    .line 135
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lna0;->isRunning()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_6

    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    iget-object v0, p0, Lna0;->mMovesList:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 152
    .line 153
    if-ltz v0, :cond_9

    .line 154
    .line 155
    iget-object v3, p0, Lna0;->mMovesList:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    :goto_5
    add-int/lit8 v4, v4, -0x1

    .line 168
    .line 169
    if-ltz v4, :cond_8

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    check-cast v5, Lma0;

    .line 176
    .line 177
    iget-object v6, v5, Lma0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 178
    .line 179
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 180
    .line 181
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 185
    .line 186
    .line 187
    iget-object v5, v5, Lma0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 188
    .line 189
    invoke-virtual {p0, v5}, Lqa0;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_7

    .line 200
    .line 201
    iget-object v5, p0, Lna0;->mMovesList:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_7
    goto :goto_5

    .line 207
    :cond_8
    goto :goto_4

    .line 208
    :cond_9
    iget-object v0, p0, Lna0;->mAdditionsList:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 215
    .line 216
    if-ltz v0, :cond_c

    .line 217
    .line 218
    iget-object v1, p0, Lna0;->mAdditionsList:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    :goto_7
    add-int/lit8 v3, v3, -0x1

    .line 231
    .line 232
    if-ltz v3, :cond_b

    .line 233
    .line 234
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Landroid/support/v7/widget/RecyclerView$u;

    .line 239
    .line 240
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 241
    .line 242
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v4}, Lqa0;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_a

    .line 256
    .line 257
    iget-object v4, p0, Lna0;->mAdditionsList:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :cond_a
    goto :goto_7

    .line 263
    :cond_b
    goto :goto_6

    .line 264
    :cond_c
    iget-object v0, p0, Lna0;->mChangesList:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    :goto_8
    add-int/lit8 v0, v0, -0x1

    .line 271
    .line 272
    if-ltz v0, :cond_11

    .line 273
    .line 274
    iget-object v1, p0, Lna0;->mChangesList:Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    :goto_9
    add-int/lit8 v2, v2, -0x1

    .line 287
    .line 288
    if-ltz v2, :cond_10

    .line 289
    .line 290
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Lla0;

    .line 295
    .line 296
    iget-object v4, v3, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 297
    .line 298
    if-eqz v4, :cond_d

    .line 299
    .line 300
    invoke-virtual {p0, v3, v4}, Lna0;->c(Lla0;Landroid/support/v7/widget/RecyclerView$u;)Z

    .line 301
    .line 302
    .line 303
    :cond_d
    iget-object v4, v3, Lla0;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 304
    .line 305
    if-eqz v4, :cond_e

    .line 306
    .line 307
    invoke-virtual {p0, v3, v4}, Lna0;->c(Lla0;Landroid/support/v7/widget/RecyclerView$u;)Z

    .line 308
    .line 309
    .line 310
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-eqz v3, :cond_f

    .line 315
    .line 316
    iget-object v3, p0, Lna0;->mChangesList:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    :cond_f
    goto :goto_9

    .line 322
    :cond_10
    goto :goto_8

    .line 323
    :cond_11
    iget-object v0, p0, Lna0;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {p0, v0}, Lna0;->cancelAll(Ljava/util/List;)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lna0;->mMoveAnimations:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {p0, v0}, Lna0;->cancelAll(Ljava/util/List;)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lna0;->mAddAnimations:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {p0, v0}, Lna0;->cancelAll(Ljava/util/List;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lna0;->mChangeAnimations:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {p0, v0}, Lna0;->cancelAll(Ljava/util/List;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Lna0;->dispatchAnimationsFinished()V

    .line 344
    .line 345
    .line 346
    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lna0;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lna0;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lna0;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lna0;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lna0;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lna0;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lna0;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lna0;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public runPendingAnimations()V
    .locals 11

    .line 1
    iget-object v0, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lna0;->mPendingChanges:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_0
    iget-object v4, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x0

    .line 42
    move v7, v6

    .line 43
    :goto_0
    if-ge v7, v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    check-cast v8, Landroid/support/v7/widget/RecyclerView$u;

    .line 52
    .line 53
    invoke-virtual {p0, v8}, Lna0;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v4, p0, Lna0;->mPendingRemovals:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    new-instance v4, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v5, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    iget-object v5, p0, Lna0;->mMovesList:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    iget-object v5, p0, Lna0;->mPendingMoves:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 82
    .line 83
    .line 84
    new-instance v5, Lga0;

    .line 85
    .line 86
    invoke-direct {v5, p0, v4, v6}, Lga0;-><init>(Lna0;Ljava/util/ArrayList;I)V

    .line 87
    .line 88
    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lma0;

    .line 96
    .line 97
    iget-object v4, v4, Lma0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 98
    .line 99
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {p0}, Lna0;->getRemoveDuration()J

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    invoke-virtual {v4, v5, v7, v8}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v5}, Lga0;->run()V

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_1
    if-nez v2, :cond_5

    .line 113
    .line 114
    new-instance v4, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v5, p0, Lna0;->mPendingChanges:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    .line 123
    .line 124
    iget-object v5, p0, Lna0;->mChangesList:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v5, p0, Lna0;->mPendingChanges:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 132
    .line 133
    .line 134
    new-instance v5, Lga0;

    .line 135
    .line 136
    const/4 v7, 0x1

    .line 137
    invoke-direct {v5, p0, v4, v7}, Lga0;-><init>(Lna0;Ljava/util/ArrayList;I)V

    .line 138
    .line 139
    .line 140
    if-nez v0, :cond_4

    .line 141
    .line 142
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Lla0;

    .line 147
    .line 148
    iget-object v4, v4, Lla0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 149
    .line 150
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {p0}, Lna0;->getRemoveDuration()J

    .line 153
    .line 154
    .line 155
    move-result-wide v7

    .line 156
    invoke-virtual {v4, v5, v7, v8}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual {v5}, Lga0;->run()V

    .line 161
    .line 162
    .line 163
    :cond_5
    :goto_2
    if-nez v3, :cond_b

    .line 164
    .line 165
    new-instance v3, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-object v4, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    .line 174
    .line 175
    iget-object v4, p0, Lna0;->mAdditionsList:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    iget-object v4, p0, Lna0;->mPendingAdditions:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 183
    .line 184
    .line 185
    new-instance v4, Lha0;

    .line 186
    .line 187
    invoke-direct {v4, p0, v3}, Lha0;-><init>(Lna0;Ljava/util/ArrayList;)V

    .line 188
    .line 189
    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    if-nez v2, :cond_6

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_6
    invoke-virtual {v4}, Lha0;->run()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_7
    :goto_3
    const-wide/16 v7, 0x0

    .line 202
    .line 203
    if-nez v0, :cond_8

    .line 204
    .line 205
    invoke-virtual {p0}, Lna0;->getRemoveDuration()J

    .line 206
    .line 207
    .line 208
    move-result-wide v9

    .line 209
    goto :goto_4

    .line 210
    :cond_8
    move-wide v9, v7

    .line 211
    :goto_4
    if-nez v1, :cond_9

    .line 212
    .line 213
    invoke-virtual {p0}, Lna0;->getMoveDuration()J

    .line 214
    .line 215
    .line 216
    move-result-wide v0

    .line 217
    goto :goto_5

    .line 218
    :cond_9
    move-wide v0, v7

    .line 219
    :goto_5
    if-nez v2, :cond_a

    .line 220
    .line 221
    invoke-virtual {p0}, Lna0;->getChangeDuration()J

    .line 222
    .line 223
    .line 224
    move-result-wide v7

    .line 225
    :cond_a
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 226
    .line 227
    .line 228
    move-result-wide v0

    .line 229
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    check-cast p0, Landroid/support/v7/widget/RecyclerView$u;

    .line 234
    .line 235
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 236
    .line 237
    add-long/2addr v9, v0

    .line 238
    invoke-virtual {p0, v4, v9, v10}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 239
    .line 240
    .line 241
    :cond_b
    :goto_6
    return-void
.end method
