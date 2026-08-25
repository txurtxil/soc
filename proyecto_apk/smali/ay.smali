.class public final Lay;
.super Lk90;


# static fields
.field public static final q:Landroid/view/animation/DecelerateInterpolator;

.field public static final r:Landroid/view/animation/DecelerateInterpolator;

.field public static s:Z = false

.field public static t:Ljava/lang/reflect/Field;


# instance fields
.field public a:Landroid/util/SparseArray;

.field public b:Z

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/util/ArrayList;

.field public g:I

.field public h:Leb0;

.field public i:Leb0;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/util/ArrayList;

.field public o:Ljava/util/ArrayList;

.field public p:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lay;->q:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lay;->r:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    return-void
.end method

.method public static f(FFFF)Landroid/view/animation/AnimationSet;
    .locals 11

    .line 1
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 8
    .line 9
    const/4 v9, 0x1

    .line 10
    const/high16 v10, 0x3f000000    # 0.5f

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    const/high16 v8, 0x3f000000    # 0.5f

    .line 14
    .line 15
    move v5, p0

    .line 16
    move v6, p1

    .line 17
    move v3, p0

    .line 18
    move v4, p1

    .line 19
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lay;->q:Landroid/view/animation/DecelerateInterpolator;

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 p0, 0xdc

    .line 28
    .line 29
    invoke-virtual {v2, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 36
    .line 37
    invoke-direct {v1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 38
    .line 39
    .line 40
    sget-object p2, Lay;->r:Landroid/view/animation/DecelerateInterpolator;

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public static p(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 5

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    instance-of v1, p1, Landroid/view/animation/AlphaAnimation;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v1, p1, Landroid/view/animation/AnimationSet;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    move-object v1, p1

    .line 27
    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ge v2, v3, :cond_3

    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    :goto_1
    const/4 v1, 0x0

    .line 49
    const/4 v2, 0x1

    .line 50
    :try_start_0
    sget-object v3, Lay;->t:Ljava/lang/reflect/Field;

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    const-class v3, Landroid/view/animation/Animation;

    .line 55
    .line 56
    const-string v4, "mListener"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    sput-object v3, Lay;->t:Ljava/lang/reflect/Field;

    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception v3

    .line 69
    goto :goto_3

    .line 70
    :catch_1
    move-exception v3

    .line 71
    goto :goto_5

    .line 72
    :cond_1
    :goto_2
    sget-object v3, Lay;->t:Ljava/lang/reflect/Field;

    .line 73
    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    goto :goto_6

    .line 81
    :goto_3
    const-string v4, "Cannot access Animation\'s mListener field"

    .line 82
    .line 83
    :goto_4
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    move-object v3, v1

    .line 87
    goto :goto_6

    .line 88
    :goto_5
    const-string v4, "No field with the name mListener is found in Animation class"

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :goto_6
    const/4 v0, 0x2

    .line 92
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lm90;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v3, v0, Lm90;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 101
    .line 102
    iput-object p0, v0, Lm90;->c:Landroid/view/View;

    .line 103
    .line 104
    iput-boolean v2, v0, Lm90;->b:Z

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    return-void
.end method


# virtual methods
.method public final A(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->H:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lay;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lay;->a:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->H:Landroid/view/View;

    iget-object v1, p0, Lay;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lay;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lay;->a:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput-object p1, p0, Lay;->a:Landroid/util/SparseArray;

    :cond_2
    :goto_1
    return-void
.end method

.method public final B(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lay;->p:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lay;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lay;->p:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->j(Landroid/os/Bundle;)V

    iget-object v0, p0, Lay;->p:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lay;->p:Landroid/os/Bundle;

    iput-object v1, p0, Lay;->p:Landroid/os/Bundle;

    move-object v1, v0

    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lay;->A(Landroid/support/v4/app/Fragment;)V

    :cond_2
    iget-object p0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz p0, :cond_4

    if-nez v1, :cond_3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    :cond_3
    const-string p0, "android:view_state"

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    iget-boolean p0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez p0, :cond_6

    if-nez v1, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_5
    const-string p0, "android:user_visible_hint"

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->J:Z

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    return-object v1
.end method

.method public final C(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iget-object v3, v1, Landroid/support/v4/app/Fragment;->F:Landroid/view/ViewGroup;

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v2
.end method

.method public final D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->D()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final E()V
    .locals 9

    .line 1
    iget-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->P()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->Q()I

    move-result v5

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->P()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lay;->l(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    iget-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/support/v4/app/Fragment;->v:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_3

    iget v2, v1, Landroid/support/v4/app/Fragment;->v:I

    if-eq v2, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 1
    const-string v0, "android:target_state"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v2, "Fragment no longer exists for key android:target_state: index "

    .line 19
    .line 20
    if-ge p1, v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-static {p1, v2}, Lt20;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lay;->m(Ljava/lang/RuntimeException;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-static {p1, v2}, Lt20;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lay;->m(Ljava/lang/RuntimeException;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public final c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12

    .line 1
    const-string v3, "fragment"

    .line 2
    .line 3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    const/4 v6, 0x0

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v3, "class"

    .line 12
    .line 13
    invoke-interface {p3, v6, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v4, Lgt;->j:[I

    .line 18
    .line 19
    invoke-virtual {p2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :cond_1
    move-object v7, v3

    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v8, -0x1

    .line 33
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    const/4 v10, 0x2

    .line 38
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lay;->h:Leb0;

    .line 46
    .line 47
    iget-object v4, v4, Law;->a:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v4, v7}, Landroid/support/v4/app/Fragment;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    :goto_0
    return-object v6

    .line 56
    :cond_2
    if-eq v9, v8, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v9}, Lay;->a(I)Landroid/support/v4/app/Fragment;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move-object v4, v6

    .line 64
    :goto_1
    if-nez v4, :cond_4

    .line 65
    .line 66
    if-eqz v10, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0, v10}, Lay;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :cond_4
    if-nez v4, :cond_5

    .line 73
    .line 74
    invoke-virtual {p0, v5}, Lay;->a(I)Landroid/support/v4/app/Fragment;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :cond_5
    sget-boolean v8, Lay;->s:Z

    .line 79
    .line 80
    if-eqz v8, :cond_6

    .line 81
    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v11, "onCreateView: id=0x"

    .line 85
    .line 86
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v11, " fname="

    .line 97
    .line 98
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v11, " existing="

    .line 105
    .line 106
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    const-string v11, "FragmentManager"

    .line 117
    .line 118
    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_6
    if-nez v4, :cond_9

    .line 122
    .line 123
    invoke-static {p2, v7}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    iput-boolean v3, v4, Landroid/support/v4/app/Fragment;->m:Z

    .line 128
    .line 129
    if-eqz v9, :cond_7

    .line 130
    .line 131
    move v1, v9

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    move v1, v5

    .line 134
    :goto_2
    iput v1, v4, Landroid/support/v4/app/Fragment;->v:I

    .line 135
    .line 136
    iput v5, v4, Landroid/support/v4/app/Fragment;->w:I

    .line 137
    .line 138
    iput-object v10, v4, Landroid/support/v4/app/Fragment;->x:Ljava/lang/String;

    .line 139
    .line 140
    iput-boolean v3, v4, Landroid/support/v4/app/Fragment;->n:Z

    .line 141
    .line 142
    iput-object p0, v4, Landroid/support/v4/app/Fragment;->q:Lay;

    .line 143
    .line 144
    iget-object v1, p0, Lay;->h:Leb0;

    .line 145
    .line 146
    iput-object v1, v4, Landroid/support/v4/app/Fragment;->r:Law;

    .line 147
    .line 148
    iget-object v1, p0, Lay;->h:Leb0;

    .line 149
    .line 150
    iget-object v1, v1, Law;->a:Landroid/content/Context;

    .line 151
    .line 152
    iget-object v5, v4, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 153
    .line 154
    invoke-virtual {v4, v1, p3, v5}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v4}, Lay;->o(Landroid/support/v4/app/Fragment;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    :goto_3
    move-object v1, v4

    .line 161
    goto :goto_4

    .line 162
    :cond_9
    iget-boolean v1, v4, Landroid/support/v4/app/Fragment;->n:Z

    .line 163
    .line 164
    if-nez v1, :cond_e

    .line 165
    .line 166
    iput-boolean v3, v4, Landroid/support/v4/app/Fragment;->n:Z

    .line 167
    .line 168
    iget-object v1, p0, Lay;->h:Leb0;

    .line 169
    .line 170
    iput-object v1, v4, Landroid/support/v4/app/Fragment;->r:Law;

    .line 171
    .line 172
    iget-boolean v1, v4, Landroid/support/v4/app/Fragment;->B:Z

    .line 173
    .line 174
    if-nez v1, :cond_8

    .line 175
    .line 176
    iget-object v1, p0, Lay;->h:Leb0;

    .line 177
    .line 178
    iget-object v1, v1, Law;->a:Landroid/content/Context;

    .line 179
    .line 180
    iget-object v5, v4, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 181
    .line 182
    invoke-virtual {v4, v1, p3, v5}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :goto_4
    iget v2, p0, Lay;->g:I

    .line 187
    .line 188
    if-ge v2, v3, :cond_a

    .line 189
    .line 190
    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->m:Z

    .line 191
    .line 192
    if-eqz v2, :cond_a

    .line 193
    .line 194
    const/4 v4, 0x0

    .line 195
    const/4 v5, 0x0

    .line 196
    const/4 v2, 0x1

    .line 197
    const/4 v3, 0x0

    .line 198
    move-object v0, p0

    .line 199
    invoke-virtual/range {v0 .. v5}, Lay;->l(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_a
    iget v2, p0, Lay;->g:I

    .line 204
    .line 205
    const/4 v4, 0x0

    .line 206
    const/4 v5, 0x0

    .line 207
    const/4 v3, 0x0

    .line 208
    move-object v0, p0

    .line 209
    invoke-virtual/range {v0 .. v5}, Lay;->l(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 210
    .line 211
    .line 212
    :goto_5
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 213
    .line 214
    if-eqz v0, :cond_d

    .line 215
    .line 216
    if-eqz v9, :cond_b

    .line 217
    .line 218
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 219
    .line 220
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 221
    .line 222
    .line 223
    :cond_b
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-nez v0, :cond_c

    .line 230
    .line 231
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_c
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 237
    .line 238
    return-object v0

    .line 239
    :cond_d
    const-string v0, "Fragment "

    .line 240
    .line 241
    const-string v1, " did not create a view."

    .line 242
    .line 243
    invoke-static {v0, v7, v1}, Lt20;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v0}, Lc2;->g(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    return-object v6

    .line 251
    :cond_e
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {v0, v1, v10, v2, v7}, Lc2;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    return-object v6
.end method

.method public final e(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->K()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->a(IZI)Landroid/view/animation/Animation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->K()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lay;->h:Leb0;

    .line 19
    .line 20
    iget-object v0, v0, Law;->a:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->K()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object p1

    .line 34
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 35
    if-nez p2, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    const/16 v0, 0x1001

    .line 39
    .line 40
    if-eq p2, v0, :cond_8

    .line 41
    .line 42
    const/16 v0, 0x1003

    .line 43
    .line 44
    if-eq p2, v0, :cond_6

    .line 45
    .line 46
    const/16 v0, 0x2002

    .line 47
    .line 48
    if-eq p2, v0, :cond_4

    .line 49
    .line 50
    const/4 p2, -0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    if-eqz p3, :cond_5

    .line 53
    .line 54
    const/4 p2, 0x3

    .line 55
    goto :goto_1

    .line 56
    :cond_5
    const/4 p2, 0x4

    .line 57
    goto :goto_1

    .line 58
    :cond_6
    if-eqz p3, :cond_7

    .line 59
    .line 60
    const/4 p2, 0x5

    .line 61
    goto :goto_1

    .line 62
    :cond_7
    const/4 p2, 0x6

    .line 63
    goto :goto_1

    .line 64
    :cond_8
    if-eqz p3, :cond_9

    .line 65
    .line 66
    const/4 p2, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_9
    const/4 p2, 0x2

    .line 69
    :goto_1
    if-gez p2, :cond_a

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_a
    const-wide/16 v0, 0xdc

    .line 73
    .line 74
    sget-object p3, Lay;->r:Landroid/view/animation/DecelerateInterpolator;

    .line 75
    .line 76
    const v2, 0x3f79999a    # 0.975f

    .line 77
    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    const/high16 v4, 0x3f800000    # 1.0f

    .line 81
    .line 82
    packed-switch p2, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    if-nez p4, :cond_c

    .line 86
    .line 87
    iget-object p2, p0, Lay;->h:Leb0;

    .line 88
    .line 89
    iget-object p2, p2, Leb0;->h:Lcb0;

    .line 90
    .line 91
    invoke-virtual {p2}, Lbb0;->d()Landroid/view/Window;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-eqz p2, :cond_c

    .line 96
    .line 97
    iget-object p0, p0, Lay;->h:Leb0;

    .line 98
    .line 99
    iget-object p0, p0, Leb0;->h:Lcb0;

    .line 100
    .line 101
    invoke-virtual {p0}, Lbb0;->d()Landroid/view/Window;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-nez p0, :cond_b

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_b
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 113
    .line 114
    :cond_c
    :goto_2
    return-object p1

    .line 115
    :pswitch_0
    iget-object p0, p0, Lay;->h:Leb0;

    .line 116
    .line 117
    iget-object p0, p0, Law;->a:Landroid/content/Context;

    .line 118
    .line 119
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .line 120
    .line 121
    invoke-direct {p0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_1
    iget-object p0, p0, Lay;->h:Leb0;

    .line 132
    .line 133
    iget-object p0, p0, Law;->a:Landroid/content/Context;

    .line 134
    .line 135
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .line 136
    .line 137
    invoke-direct {p0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_2
    iget-object p0, p0, Lay;->h:Leb0;

    .line 148
    .line 149
    iget-object p0, p0, Law;->a:Landroid/content/Context;

    .line 150
    .line 151
    const p0, 0x3f89999a    # 1.075f

    .line 152
    .line 153
    .line 154
    invoke-static {v4, p0, v4, v3}, Lay;->f(FFFF)Landroid/view/animation/AnimationSet;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :pswitch_3
    iget-object p0, p0, Lay;->h:Leb0;

    .line 160
    .line 161
    iget-object p0, p0, Law;->a:Landroid/content/Context;

    .line 162
    .line 163
    invoke-static {v2, v4, v3, v4}, Lay;->f(FFFF)Landroid/view/animation/AnimationSet;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    :pswitch_4
    iget-object p0, p0, Lay;->h:Leb0;

    .line 169
    .line 170
    iget-object p0, p0, Law;->a:Landroid/content/Context;

    .line 171
    .line 172
    invoke-static {v4, v2, v4, v3}, Lay;->f(FFFF)Landroid/view/animation/AnimationSet;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    return-object p0

    .line 177
    :pswitch_5
    iget-object p0, p0, Lay;->h:Leb0;

    .line 178
    .line 179
    iget-object p0, p0, Law;->a:Landroid/content/Context;

    .line 180
    .line 181
    const/high16 p0, 0x3f900000    # 1.125f

    .line 182
    .line 183
    invoke-static {p0, v4, v3, v4}, Lay;->f(FFFF)Landroid/view/animation/AnimationSet;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lay;->h:Leb0;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "No activity"

    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Lay;->g:I

    if-ne p1, p2, :cond_2

    goto :goto_3

    :cond_2
    iput p1, p0, Lay;->g:I

    iget-object p1, p0, Lay;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lay;->d:Ljava/util/ArrayList;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v1}, Lay;->s(Landroid/support/v4/app/Fragment;)V

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->K:Lq90;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, p2

    :goto_2
    if-ge v0, p1, :cond_6

    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->l:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->z:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->O:Z

    if-nez v2, :cond_5

    invoke-virtual {p0, v1}, Lay;->s(Landroid/support/v4/app/Fragment;)V

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->K:Lq90;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lay;->t()V

    iget-boolean p1, p0, Lay;->j:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lay;->h:Leb0;

    if-eqz p1, :cond_7

    iget p1, p0, Lay;->g:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    iput-boolean p2, p0, Lay;->j:Z

    :cond_7
    :goto_3
    return-void
.end method

.method public final h(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 1
    iget v0, p2, Landroid/support/v4/app/Fragment;->e:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget p0, p2, Landroid/support/v4/app/Fragment;->e:I

    .line 6
    .line 7
    const-string p2, "android:target_state"

    .line 8
    .line 9
    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Fragment "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, " is not currently in the FragmentManager"

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lay;->m(Ljava/lang/RuntimeException;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    throw p0
.end method

.method public final j(Landroid/os/Parcelable;Laz;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_9

    .line 4
    .line 5
    :cond_0
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 6
    .line 7
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 8
    .line 9
    if-eqz v0, :cond_17

    .line 10
    .line 11
    iget-object v0, p2, Laz;->a:Ljava/util/List;

    .line 12
    .line 13
    iget-object v1, p2, Laz;->b:Ljava/util/List;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v3, v2

    .line 24
    :goto_0
    move v4, v2

    .line 25
    :goto_1
    const-string v5, "FragmentManager"

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    if-ge v4, v3, :cond_4

    .line 29
    .line 30
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 35
    .line 36
    sget-boolean v8, Lay;->s:Z

    .line 37
    .line 38
    if-eqz v8, :cond_2

    .line 39
    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v9, "restoreAllState: re-attaching retained "

    .line 43
    .line 44
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 58
    .line 59
    iget v8, v7, Landroid/support/v4/app/Fragment;->e:I

    .line 60
    .line 61
    aget-object v5, v5, v8

    .line 62
    .line 63
    iput-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;

    .line 64
    .line 65
    iput-object v6, v7, Landroid/support/v4/app/Fragment;->d:Landroid/util/SparseArray;

    .line 66
    .line 67
    iput v2, v7, Landroid/support/v4/app/Fragment;->p:I

    .line 68
    .line 69
    iput-boolean v2, v7, Landroid/support/v4/app/Fragment;->n:Z

    .line 70
    .line 71
    iput-boolean v2, v7, Landroid/support/v4/app/Fragment;->k:Z

    .line 72
    .line 73
    iput-object v6, v7, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    .line 74
    .line 75
    iget-object v6, v5, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    iget-object v6, v5, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    .line 80
    .line 81
    iget-object v8, p0, Lay;->h:Leb0;

    .line 82
    .line 83
    iget-object v8, v8, Law;->a:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 90
    .line 91
    .line 92
    iget-object v6, v5, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    .line 93
    .line 94
    const-string v8, "android:view_state"

    .line 95
    .line 96
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iput-object v6, v7, Landroid/support/v4/app/Fragment;->d:Landroid/util/SparseArray;

    .line 101
    .line 102
    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    .line 103
    .line 104
    iput-object v5, v7, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 105
    .line 106
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 112
    .line 113
    array-length v3, v3

    .line 114
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    .line 118
    .line 119
    iget-object v0, p0, Lay;->e:Ljava/util/ArrayList;

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    .line 125
    .line 126
    :cond_5
    move v0, v2

    .line 127
    :goto_2
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 128
    .line 129
    array-length v3, v3

    .line 130
    const-string v4, ": "

    .line 131
    .line 132
    if-ge v0, v3, :cond_b

    .line 133
    .line 134
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 135
    .line 136
    aget-object v3, v3, v0

    .line 137
    .line 138
    if-eqz v3, :cond_8

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-ge v0, v7, :cond_6

    .line 147
    .line 148
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Laz;

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    move-object v7, v6

    .line 156
    :goto_3
    iget-object v8, p0, Lay;->h:Leb0;

    .line 157
    .line 158
    invoke-virtual {v3, v8, v6, v7}, Landroid/support/v4/app/FragmentState;->a(Law;Landroid/support/v4/app/Fragment;Laz;)Landroid/support/v4/app/Fragment;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    sget-boolean v8, Lay;->s:Z

    .line 163
    .line 164
    if-eqz v8, :cond_7

    .line 165
    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v9, "restoreAllState: active #"

    .line 169
    .line 170
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_7
    iget-object v4, p0, Lay;->c:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    iput-object v6, v3, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    iget-object v3, p0, Lay;->c:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    iget-object v3, p0, Lay;->e:Ljava/util/ArrayList;

    .line 203
    .line 204
    if-nez v3, :cond_9

    .line 205
    .line 206
    new-instance v3, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .line 210
    .line 211
    iput-object v3, p0, Lay;->e:Ljava/util/ArrayList;

    .line 212
    .line 213
    :cond_9
    sget-boolean v3, Lay;->s:Z

    .line 214
    .line 215
    if-eqz v3, :cond_a

    .line 216
    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v4, "restoreAllState: avail #"

    .line 220
    .line 221
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :cond_a
    iget-object v3, p0, Lay;->e:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_b
    iget-object p2, p2, Laz;->a:Ljava/util/List;

    .line 247
    .line 248
    if-eqz p2, :cond_c

    .line 249
    .line 250
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    goto :goto_5

    .line 255
    :cond_c
    move v0, v2

    .line 256
    :goto_5
    move v1, v2

    .line 257
    :goto_6
    if-ge v1, v0, :cond_f

    .line 258
    .line 259
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 264
    .line 265
    iget v7, v3, Landroid/support/v4/app/Fragment;->i:I

    .line 266
    .line 267
    if-ltz v7, :cond_e

    .line 268
    .line 269
    iget v7, v3, Landroid/support/v4/app/Fragment;->i:I

    .line 270
    .line 271
    iget-object v8, p0, Lay;->c:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-ge v7, v8, :cond_d

    .line 278
    .line 279
    iget-object v7, p0, Lay;->c:Ljava/util/ArrayList;

    .line 280
    .line 281
    iget v8, v3, Landroid/support/v4/app/Fragment;->i:I

    .line 282
    .line 283
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 288
    .line 289
    iput-object v7, v3, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v8, "Re-attaching retained fragment "

    .line 295
    .line 296
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v8, " target no longer exists: "

    .line 303
    .line 304
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget v8, v3, Landroid/support/v4/app/Fragment;->i:I

    .line 308
    .line 309
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    iput-object v6, v3, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    .line 320
    .line 321
    :cond_e
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_f
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 325
    .line 326
    if-eqz p2, :cond_13

    .line 327
    .line 328
    new-instance p2, Ljava/util/ArrayList;

    .line 329
    .line 330
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 331
    .line 332
    array-length v0, v0

    .line 333
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .line 335
    .line 336
    iput-object p2, p0, Lay;->d:Ljava/util/ArrayList;

    .line 337
    .line 338
    move p2, v2

    .line 339
    :goto_8
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 340
    .line 341
    array-length v0, v0

    .line 342
    if-ge p2, v0, :cond_14

    .line 343
    .line 344
    iget-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    .line 345
    .line 346
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 347
    .line 348
    aget v1, v1, p2

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 355
    .line 356
    if-eqz v0, :cond_12

    .line 357
    .line 358
    const/4 v1, 0x1

    .line 359
    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->k:Z

    .line 360
    .line 361
    sget-boolean v1, Lay;->s:Z

    .line 362
    .line 363
    if-eqz v1, :cond_10

    .line 364
    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string v3, "restoreAllState: added #"

    .line 368
    .line 369
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    :cond_10
    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_11

    .line 395
    .line 396
    iget-object v1, p0, Lay;->d:Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    add-int/lit8 p2, p2, 0x1

    .line 402
    .line 403
    goto :goto_8

    .line 404
    :cond_11
    const-string p0, "Already added!"

    .line 405
    .line 406
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 411
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v2, "No instantiated fragment for index #"

    .line 415
    .line 416
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    iget-object p1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 420
    .line 421
    aget p1, p1, p2

    .line 422
    .line 423
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0, v0}, Lay;->m(Ljava/lang/RuntimeException;)V

    .line 434
    .line 435
    .line 436
    throw v6

    .line 437
    :cond_13
    iput-object v6, p0, Lay;->d:Ljava/util/ArrayList;

    .line 438
    .line 439
    :cond_14
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    .line 440
    .line 441
    if-eqz p2, :cond_16

    .line 442
    .line 443
    new-instance p2, Ljava/util/ArrayList;

    .line 444
    .line 445
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    .line 446
    .line 447
    array-length v0, v0

    .line 448
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .line 450
    .line 451
    iput-object p2, p0, Lay;->f:Ljava/util/ArrayList;

    .line 452
    .line 453
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    .line 454
    .line 455
    array-length p2, p2

    .line 456
    if-lez p2, :cond_17

    .line 457
    .line 458
    iget-object p1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    .line 459
    .line 460
    aget-object p1, p1, v2

    .line 461
    .line 462
    invoke-virtual {p1, p0}, Landroid/support/v4/app/BackStackState;->a(Lay;)Lan;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    sget-boolean p2, Lay;->s:Z

    .line 467
    .line 468
    if-eqz p2, :cond_15

    .line 469
    .line 470
    throw v6

    .line 471
    :cond_15
    iget-object p0, p0, Lay;->f:Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    throw v6

    .line 477
    :cond_16
    iput-object v6, p0, Lay;->f:Ljava/util/ArrayList;

    .line 478
    .line 479
    :cond_17
    :goto_9
    return-void
.end method

.method public final k(Landroid/support/v4/app/Fragment;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lay;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lay;->m:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    iget v3, p0, Lay;->g:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lay;->l(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_1
    return-void
.end method

.method public final l(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 14

    .line 1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 2
    .line 3
    const/4 v6, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->z:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :cond_0
    move/from16 v0, p2

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move/from16 v0, p2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :goto_0
    if-le v0, v6, :cond_2

    .line 17
    .line 18
    move v0, v6

    .line 19
    :cond_2
    :goto_1
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->l:Z

    .line 20
    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    iget v2, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 24
    .line 25
    if-le v0, v2, :cond_3

    .line 26
    .line 27
    iget v0, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 28
    .line 29
    :cond_3
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 30
    .line 31
    const/4 v7, 0x4

    .line 32
    const/4 v8, 0x3

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    iget v2, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 36
    .line 37
    if-ge v2, v7, :cond_4

    .line 38
    .line 39
    if-le v0, v8, :cond_4

    .line 40
    .line 41
    move v9, v8

    .line 42
    goto :goto_2

    .line 43
    :cond_4
    move v9, v0

    .line 44
    :goto_2
    iget v0, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 45
    .line 46
    const/4 v10, 0x2

    .line 47
    const-string v11, "FragmentManager"

    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    if-ge v0, v9, :cond_21

    .line 52
    .line 53
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->m:Z

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->n:Z

    .line 58
    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    goto/16 :goto_10

    .line 62
    .line 63
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->P()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {p1, v12}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Q()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x1

    .line 78
    const/4 v3, 0x0

    .line 79
    move-object v0, p0

    .line 80
    move-object v1, p1

    .line 81
    invoke-virtual/range {v0 .. v5}, Lay;->l(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 82
    .line 83
    .line 84
    :cond_6
    iget v2, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 85
    .line 86
    const/16 v3, 0x8

    .line 87
    .line 88
    if-eqz v2, :cond_8

    .line 89
    .line 90
    if-eq v2, v6, :cond_10

    .line 91
    .line 92
    if-eq v2, v10, :cond_1c

    .line 93
    .line 94
    if-eq v2, v8, :cond_1d

    .line 95
    .line 96
    if-eq v2, v7, :cond_7

    .line 97
    .line 98
    goto/16 :goto_e

    .line 99
    .line 100
    :cond_7
    :goto_3
    move v6, v9

    .line 101
    goto/16 :goto_b

    .line 102
    .line 103
    :cond_8
    sget-boolean v2, Lay;->s:Z

    .line 104
    .line 105
    if-eqz v2, :cond_9

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v4, "moveto CREATED: "

    .line 110
    .line 111
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_9
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 125
    .line 126
    if-eqz v2, :cond_b

    .line 127
    .line 128
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 129
    .line 130
    iget-object v4, p0, Lay;->h:Leb0;

    .line 131
    .line 132
    iget-object v4, v4, Law;->a:Landroid/content/Context;

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 139
    .line 140
    .line 141
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 142
    .line 143
    const-string v4, "android:view_state"

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->d:Landroid/util/SparseArray;

    .line 150
    .line 151
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 152
    .line 153
    invoke-virtual {p0, v2}, Lay;->b(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    .line 158
    .line 159
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    .line 160
    .line 161
    if-eqz v2, :cond_a

    .line 162
    .line 163
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 164
    .line 165
    const-string v4, "android:target_req_state"

    .line 166
    .line 167
    invoke-virtual {v2, v4, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    iput v2, p1, Landroid/support/v4/app/Fragment;->j:I

    .line 172
    .line 173
    :cond_a
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 174
    .line 175
    const-string v4, "android:user_visible_hint"

    .line 176
    .line 177
    invoke-virtual {v2, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->J:Z

    .line 182
    .line 183
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->J:Z

    .line 184
    .line 185
    if-nez v2, :cond_b

    .line 186
    .line 187
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 188
    .line 189
    if-le v9, v8, :cond_b

    .line 190
    .line 191
    move v9, v8

    .line 192
    :cond_b
    iget-object v2, p0, Lay;->h:Leb0;

    .line 193
    .line 194
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->r:Law;

    .line 195
    .line 196
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/Fragment;

    .line 197
    .line 198
    iget-object v2, p0, Lay;->h:Leb0;

    .line 199
    .line 200
    iget-object v2, v2, Law;->b:Lay;

    .line 201
    .line 202
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->q:Lay;

    .line 203
    .line 204
    iget-object v2, p0, Lay;->h:Leb0;

    .line 205
    .line 206
    iget-object v2, v2, Law;->a:Landroid/content/Context;

    .line 207
    .line 208
    iput-boolean v13, p1, Landroid/support/v4/app/Fragment;->E:Z

    .line 209
    .line 210
    iget-object v2, p0, Lay;->h:Leb0;

    .line 211
    .line 212
    iget-object v2, v2, Law;->a:Landroid/content/Context;

    .line 213
    .line 214
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->E:Z

    .line 218
    .line 219
    if-eqz v2, :cond_20

    .line 220
    .line 221
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/Fragment;

    .line 222
    .line 223
    if-nez v2, :cond_c

    .line 224
    .line 225
    iget-object v2, p0, Lay;->h:Leb0;

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_c
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/Fragment;

    .line 232
    .line 233
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/support/v4/app/Fragment;)V

    .line 234
    .line 235
    .line 236
    :goto_4
    iget-object v2, p0, Lay;->h:Leb0;

    .line 237
    .line 238
    iget-object v2, v2, Law;->a:Landroid/content/Context;

    .line 239
    .line 240
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 241
    .line 242
    if-nez v2, :cond_d

    .line 243
    .line 244
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 245
    .line 246
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->h(Landroid/os/Bundle;)V

    .line 247
    .line 248
    .line 249
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_d
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 253
    .line 254
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 255
    .line 256
    .line 257
    iput v6, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 258
    .line 259
    :goto_5
    iput-boolean v13, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 260
    .line 261
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->m:Z

    .line 262
    .line 263
    if-eqz v2, :cond_10

    .line 264
    .line 265
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 266
    .line 267
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 272
    .line 273
    invoke-virtual {p1, v2, v12, v4}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 278
    .line 279
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 280
    .line 281
    if-eqz v2, :cond_f

    .line 282
    .line 283
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 284
    .line 285
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->H:Landroid/view/View;

    .line 286
    .line 287
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 288
    .line 289
    invoke-virtual {v2, v13}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 290
    .line 291
    .line 292
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->y:Z

    .line 293
    .line 294
    if-eqz v2, :cond_e

    .line 295
    .line 296
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    :cond_e
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 302
    .line 303
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 304
    .line 305
    invoke-virtual {p1, v2, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 306
    .line 307
    .line 308
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 309
    .line 310
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_f
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->H:Landroid/view/View;

    .line 314
    .line 315
    :cond_10
    :goto_6
    if-le v9, v6, :cond_1c

    .line 316
    .line 317
    sget-boolean v2, Lay;->s:Z

    .line 318
    .line 319
    if-eqz v2, :cond_11

    .line 320
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v4, "moveto ACTIVITY_CREATED: "

    .line 324
    .line 325
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    :cond_11
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->m:Z

    .line 339
    .line 340
    if-nez v2, :cond_1a

    .line 341
    .line 342
    iget v2, p1, Landroid/support/v4/app/Fragment;->w:I

    .line 343
    .line 344
    if-eqz v2, :cond_14

    .line 345
    .line 346
    iget v2, p1, Landroid/support/v4/app/Fragment;->w:I

    .line 347
    .line 348
    const/4 v4, -0x1

    .line 349
    if-eq v2, v4, :cond_13

    .line 350
    .line 351
    iget-object v2, p0, Lay;->i:Leb0;

    .line 352
    .line 353
    iget v4, p1, Landroid/support/v4/app/Fragment;->w:I

    .line 354
    .line 355
    iget-object v2, v2, Leb0;->h:Lcb0;

    .line 356
    .line 357
    invoke-virtual {v2, v4}, Lbb0;->findViewById(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    check-cast v2, Landroid/view/ViewGroup;

    .line 362
    .line 363
    if-nez v2, :cond_15

    .line 364
    .line 365
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->o:Z

    .line 366
    .line 367
    if-eqz v4, :cond_12

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_12
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->d()Landroid/content/res/Resources;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    iget v3, p1, Landroid/support/v4/app/Fragment;->w:I

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    goto :goto_7

    .line 381
    :catch_0
    const-string v2, "unknown"

    .line 382
    .line 383
    :goto_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 384
    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v5, "No view found for id 0x"

    .line 388
    .line 389
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget v5, p1, Landroid/support/v4/app/Fragment;->w:I

    .line 393
    .line 394
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v5, " ("

    .line 402
    .line 403
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v2, ") for fragment "

    .line 410
    .line 411
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, v3}, Lay;->m(Ljava/lang/RuntimeException;)V

    .line 425
    .line 426
    .line 427
    throw v12

    .line 428
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 429
    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v4, "Cannot create fragment "

    .line 433
    .line 434
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v1, " for a container view with no id"

    .line 441
    .line 442
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0, v2}, Lay;->m(Ljava/lang/RuntimeException;)V

    .line 453
    .line 454
    .line 455
    throw v12

    .line 456
    :cond_14
    move-object v2, v12

    .line 457
    :cond_15
    :goto_8
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 458
    .line 459
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 460
    .line 461
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 466
    .line 467
    invoke-virtual {p1, v0, v2, v4}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 472
    .line 473
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 474
    .line 475
    if-eqz v0, :cond_19

    .line 476
    .line 477
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 478
    .line 479
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->H:Landroid/view/View;

    .line 480
    .line 481
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 482
    .line 483
    invoke-virtual {v0, v13}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 484
    .line 485
    .line 486
    if-eqz v2, :cond_16

    .line 487
    .line 488
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 489
    .line 490
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    .line 492
    .line 493
    :cond_16
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z

    .line 494
    .line 495
    if-eqz v0, :cond_17

    .line 496
    .line 497
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 498
    .line 499
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 500
    .line 501
    .line 502
    :cond_17
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 503
    .line 504
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 505
    .line 506
    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 507
    .line 508
    .line 509
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 510
    .line 511
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 512
    .line 513
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 514
    .line 515
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-nez v0, :cond_18

    .line 520
    .line 521
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 522
    .line 523
    if-eqz v0, :cond_18

    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_18
    move v6, v13

    .line 527
    :goto_9
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->O:Z

    .line 528
    .line 529
    goto :goto_a

    .line 530
    :cond_19
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->H:Landroid/view/View;

    .line 531
    .line 532
    :cond_1a
    :goto_a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 533
    .line 534
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->i(Landroid/os/Bundle;)V

    .line 535
    .line 536
    .line 537
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 538
    .line 539
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 540
    .line 541
    if-eqz v0, :cond_1b

    .line 542
    .line 543
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 544
    .line 545
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 546
    .line 547
    .line 548
    :cond_1b
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 549
    .line 550
    :cond_1c
    if-le v9, v10, :cond_1d

    .line 551
    .line 552
    iput v8, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 553
    .line 554
    :cond_1d
    if-le v9, v8, :cond_7

    .line 555
    .line 556
    sget-boolean v0, Lay;->s:Z

    .line 557
    .line 558
    if-eqz v0, :cond_1e

    .line 559
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    const-string v2, "moveto STARTED: "

    .line 563
    .line 564
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    :cond_1e
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->B()V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_3

    .line 581
    .line 582
    :goto_b
    if-le v6, v7, :cond_35

    .line 583
    .line 584
    sget-boolean v0, Lay;->s:Z

    .line 585
    .line 586
    if-eqz v0, :cond_1f

    .line 587
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    const-string v2, "moveto RESUMED: "

    .line 591
    .line 592
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    :cond_1f
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->C()V

    .line 606
    .line 607
    .line 608
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    .line 609
    .line 610
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->d:Landroid/util/SparseArray;

    .line 611
    .line 612
    goto/16 :goto_f

    .line 613
    .line 614
    :cond_20
    new-instance v0, Ln30;

    .line 615
    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    .line 617
    .line 618
    const-string v3, "Fragment "

    .line 619
    .line 620
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v1, " did not call through to super.onAttach()"

    .line 627
    .line 628
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    throw v0

    .line 639
    :cond_21
    iget v2, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 640
    .line 641
    if-le v2, v9, :cond_34

    .line 642
    .line 643
    iget v2, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 644
    .line 645
    if-eq v2, v6, :cond_2e

    .line 646
    .line 647
    if-eq v2, v10, :cond_28

    .line 648
    .line 649
    if-eq v2, v8, :cond_26

    .line 650
    .line 651
    if-eq v2, v7, :cond_24

    .line 652
    .line 653
    const/4 v3, 0x5

    .line 654
    if-eq v2, v3, :cond_22

    .line 655
    .line 656
    goto/16 :goto_e

    .line 657
    .line 658
    :cond_22
    if-ge v9, v3, :cond_24

    .line 659
    .line 660
    sget-boolean v2, Lay;->s:Z

    .line 661
    .line 662
    if-eqz v2, :cond_23

    .line 663
    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    const-string v3, "movefrom RESUMED: "

    .line 667
    .line 668
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    :cond_23
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->E()V

    .line 682
    .line 683
    .line 684
    :cond_24
    if-ge v9, v7, :cond_26

    .line 685
    .line 686
    sget-boolean v2, Lay;->s:Z

    .line 687
    .line 688
    if-eqz v2, :cond_25

    .line 689
    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    const-string v3, "movefrom STARTED: "

    .line 693
    .line 694
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .line 706
    .line 707
    :cond_25
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->F()V

    .line 708
    .line 709
    .line 710
    :cond_26
    if-ge v9, v8, :cond_28

    .line 711
    .line 712
    sget-boolean v2, Lay;->s:Z

    .line 713
    .line 714
    if-eqz v2, :cond_27

    .line 715
    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    const-string v3, "movefrom STOPPED: "

    .line 719
    .line 720
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    :cond_27
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->G()V

    .line 734
    .line 735
    .line 736
    :cond_28
    if-ge v9, v10, :cond_2e

    .line 737
    .line 738
    sget-boolean v2, Lay;->s:Z

    .line 739
    .line 740
    if-eqz v2, :cond_29

    .line 741
    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    const-string v3, "movefrom ACTIVITY_CREATED: "

    .line 745
    .line 746
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .line 758
    .line 759
    :cond_29
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 760
    .line 761
    if-eqz v2, :cond_2a

    .line 762
    .line 763
    iget-object v2, p0, Lay;->h:Leb0;

    .line 764
    .line 765
    iget-object v2, v2, Leb0;->h:Lcb0;

    .line 766
    .line 767
    invoke-virtual {v2}, Lbb0;->c()Z

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    if-nez v2, :cond_2a

    .line 772
    .line 773
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->d:Landroid/util/SparseArray;

    .line 774
    .line 775
    if-nez v2, :cond_2a

    .line 776
    .line 777
    invoke-virtual/range {p0 .. p1}, Lay;->A(Landroid/support/v4/app/Fragment;)V

    .line 778
    .line 779
    .line 780
    :cond_2a
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->H()V

    .line 781
    .line 782
    .line 783
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 784
    .line 785
    if-eqz v2, :cond_2d

    .line 786
    .line 787
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 788
    .line 789
    if-eqz v2, :cond_2d

    .line 790
    .line 791
    iget v2, p0, Lay;->g:I

    .line 792
    .line 793
    const/4 v3, 0x0

    .line 794
    if-lez v2, :cond_2b

    .line 795
    .line 796
    iget-boolean v2, p0, Lay;->l:Z

    .line 797
    .line 798
    if-nez v2, :cond_2b

    .line 799
    .line 800
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 801
    .line 802
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 803
    .line 804
    .line 805
    move-result v2

    .line 806
    if-nez v2, :cond_2b

    .line 807
    .line 808
    iget v2, p1, Landroid/support/v4/app/Fragment;->Q:F

    .line 809
    .line 810
    cmpl-float v2, v2, v3

    .line 811
    .line 812
    if-ltz v2, :cond_2b

    .line 813
    .line 814
    move/from16 v2, p3

    .line 815
    .line 816
    move/from16 v4, p4

    .line 817
    .line 818
    invoke-virtual {p0, p1, v2, v13, v4}, Lay;->e(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    goto :goto_c

    .line 823
    :cond_2b
    move-object v2, v12

    .line 824
    :goto_c
    iput v3, p1, Landroid/support/v4/app/Fragment;->Q:F

    .line 825
    .line 826
    if-eqz v2, :cond_2c

    .line 827
    .line 828
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 829
    .line 830
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {p1, v9}, Landroid/support/v4/app/Fragment;->b(I)V

    .line 834
    .line 835
    .line 836
    new-instance v3, Ll90;

    .line 837
    .line 838
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 839
    .line 840
    invoke-direct {v3, p0, v4, v2, p1}, Ll90;-><init>(Lay;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 844
    .line 845
    .line 846
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 847
    .line 848
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 849
    .line 850
    .line 851
    :cond_2c
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 852
    .line 853
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 854
    .line 855
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 856
    .line 857
    .line 858
    :cond_2d
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 859
    .line 860
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 861
    .line 862
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->H:Landroid/view/View;

    .line 863
    .line 864
    :cond_2e
    if-ge v9, v6, :cond_34

    .line 865
    .line 866
    iget-boolean v2, p0, Lay;->l:Z

    .line 867
    .line 868
    if-eqz v2, :cond_2f

    .line 869
    .line 870
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->P()Landroid/view/View;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    if-eqz v2, :cond_2f

    .line 875
    .line 876
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->P()Landroid/view/View;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    invoke-virtual {p1, v12}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 884
    .line 885
    .line 886
    :cond_2f
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->P()Landroid/view/View;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    if-eqz v2, :cond_30

    .line 891
    .line 892
    invoke-virtual {p1, v9}, Landroid/support/v4/app/Fragment;->b(I)V

    .line 893
    .line 894
    .line 895
    goto :goto_f

    .line 896
    :cond_30
    sget-boolean v2, Lay;->s:Z

    .line 897
    .line 898
    if-eqz v2, :cond_31

    .line 899
    .line 900
    new-instance v2, Ljava/lang/StringBuilder;

    .line 901
    .line 902
    const-string v3, "movefrom CREATED: "

    .line 903
    .line 904
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .line 916
    .line 917
    :cond_31
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 918
    .line 919
    if-nez v2, :cond_32

    .line 920
    .line 921
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->I()V

    .line 922
    .line 923
    .line 924
    goto :goto_d

    .line 925
    :cond_32
    iput v13, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 926
    .line 927
    :goto_d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->J()V

    .line 928
    .line 929
    .line 930
    if-nez p5, :cond_34

    .line 931
    .line 932
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->B:Z

    .line 933
    .line 934
    if-nez v2, :cond_33

    .line 935
    .line 936
    invoke-virtual/range {p0 .. p1}, Lay;->x(Landroid/support/v4/app/Fragment;)V

    .line 937
    .line 938
    .line 939
    goto :goto_e

    .line 940
    :cond_33
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->r:Law;

    .line 941
    .line 942
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/Fragment;

    .line 943
    .line 944
    iput-object v12, p1, Landroid/support/v4/app/Fragment;->q:Lay;

    .line 945
    .line 946
    :cond_34
    :goto_e
    move v6, v9

    .line 947
    :cond_35
    :goto_f
    iget v0, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 948
    .line 949
    if-eq v0, v6, :cond_36

    .line 950
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    .line 952
    .line 953
    const-string v2, "moveToState: Fragment state for "

    .line 954
    .line 955
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    const-string v2, " not updated inline; expected state "

    .line 962
    .line 963
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    const-string v2, " found "

    .line 970
    .line 971
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    iget v2, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 975
    .line 976
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    .line 985
    .line 986
    iput v6, p1, Landroid/support/v4/app/Fragment;->b:I

    .line 987
    .line 988
    :cond_36
    :goto_10
    return-void
.end method

.method public final m(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/io/PrintWriter;

    .line 16
    .line 17
    new-instance v2, Lyl;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v2, v3}, Lyl;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lay;->h:Leb0;

    .line 27
    .line 28
    const-string v3, "Failed dumping state"

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v6, "  "

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    :try_start_0
    new-array p0, v4, [Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, v2, Leb0;->h:Lcb0;

    .line 39
    .line 40
    invoke-virtual {v2, v6, v5, v0, p0}, Lcb0;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :try_start_1
    new-array v2, v4, [Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, v6, v5, v0, v2}, Lay;->n(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    :goto_0
    throw p1
.end method

.method public final n(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lay;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v2

    :goto_1
    if-ge p4, p2, :cond_2

    iget-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lay;->f:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-gtz p2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lay;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lc2;->l()V

    return-void

    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "  #"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_2
    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lay;->h:Leb0;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lay;->i:Leb0;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lay;->g:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lay;->k:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lay;->l:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Lay;->j:Z

    if-eqz p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lay;->j:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_6
    iget-object p2, p0, Lay;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mAvailIndices: "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lay;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final o(Landroid/support/v4/app/Fragment;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    sget-boolean v0, Lay;->s:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "add: "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "FragmentManager"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0, p1}, Lay;->u(Landroid/support/v4/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->z:Z

    .line 39
    .line 40
    if-nez v0, :cond_5

    .line 41
    .line 42
    iget-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    iget-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->l:Z

    .line 60
    .line 61
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->P:Z

    .line 66
    .line 67
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->C:Z

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->D:Z

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iput-boolean v0, p0, Lay;->j:Z

    .line 76
    .line 77
    :cond_3
    iget v4, p0, Lay;->g:I

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v7, 0x0

    .line 81
    const/4 v5, 0x0

    .line 82
    move-object v2, p0

    .line 83
    move-object v3, p1

    .line 84
    invoke-virtual/range {v2 .. v7}, Lay;->l(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    move-object v3, p1

    .line 89
    const-string p0, "Fragment already added: "

    .line 90
    .line 91
    invoke-static {v3, p0}, Lc2;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public final q(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->L()I

    move-result v0

    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->y:Z

    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->M()I

    move-result v4

    invoke-virtual {p0, p1, v0, v3, v4}, Lay;->e(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-static {v3, v0}, Lay;->p(Landroid/view/View;Landroid/view/animation/Animation;)V

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-static {v3, v0}, Lay;->p(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->S()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->g(Z)V

    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->C:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->D:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lay;->j:Z

    :cond_3
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->P:Z

    iget-boolean p0, p1, Landroid/support/v4/app/Fragment;->y:Z

    invoke-virtual {p1, p0}, Landroid/support/v4/app/Fragment;->a(Z)V

    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lay;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lay;->h:Leb0;

    .line 10
    .line 11
    iget-object v1, v1, Law;->c:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lay;->n:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lay;->n:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lay;->o:Ljava/util/ArrayList;

    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lay;->b:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p0, "Must be called from main thread of fragment host"

    .line 42
    .line 43
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const-string p0, "FragmentManager is already executing transactions"

    .line 48
    .line 49
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final s(Landroid/support/v4/app/Fragment;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lay;->g:I

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->l:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l_()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    move v6, v0

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->L()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->M()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lay;->l(Landroid/support/v4/app/Fragment;IIIZ)V

    iget-object p0, v5, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {v4, v5}, Lay;->C(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    iget-object p1, v5, Landroid/support/v4/app/Fragment;->F:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    iget-object v0, v5, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ge v0, p0, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v0, v5, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_3
    iget-boolean p0, v5, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz p0, :cond_5

    iget-object p0, v5, Landroid/support/v4/app/Fragment;->F:Landroid/view/ViewGroup;

    if-eqz p0, :cond_5

    iget p0, v5, Landroid/support/v4/app/Fragment;->Q:F

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_4

    iget-object p0, v5, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    iget v0, v5, Landroid/support/v4/app/Fragment;->Q:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iput p1, v5, Landroid/support/v4/app/Fragment;->Q:F

    iput-boolean v2, v5, Landroid/support/v4/app/Fragment;->O:Z

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->L()I

    move-result p0

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->M()I

    move-result p1

    invoke-virtual {v4, v5, p0, v3, p1}, Lay;->e(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p1, v5, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-static {p1, p0}, Lay;->p(Landroid/view/View;Landroid/view/animation/Animation;)V

    iget-object p1, v5, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    iget-boolean p0, v5, Landroid/support/v4/app/Fragment;->P:Z

    if-eqz p0, :cond_6

    invoke-virtual {v4, v5}, Lay;->q(Landroid/support/v4/app/Fragment;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lay;->k(Landroid/support/v4/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lay;->h:Leb0;

    invoke-static {p0, v0}, Lgn;->a(Leb0;Ljava/lang/StringBuilder;)V

    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/support/v4/app/Fragment;->e:I

    if-ltz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lay;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lay;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object p0, p0, Lay;->c:Ljava/util/ArrayList;

    iget v0, p1, Landroid/support/v4/app/Fragment;->e:I

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object p0, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-boolean p0, Lay;->s:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Allocated fragment index "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lay;->r()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lay;->w()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lay;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    iget-object v2, p0, Lay;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lay;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Landroid/support/v4/app/Fragment;->K:Lq90;

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iput-boolean v0, p0, Lay;->m:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lay;->t()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final x(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/support/v4/app/Fragment;->e:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lay;->s:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Freeing fragment index "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget v1, p1, Landroid/support/v4/app/Fragment;->e:I

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lay;->e:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lay;->e:Ljava/util/ArrayList;

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lay;->e:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget v1, p1, Landroid/support/v4/app/Fragment;->e:I

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lay;->h:Leb0;

    .line 60
    .line 61
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->f:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p0, p0, Law;->d:Lu90;

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lu90;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lq90;

    .line 72
    .line 73
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->o()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final y()Laz;
    .locals 9

    .line 1
    iget-object v0, p0, Lay;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    iget-object v5, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_5

    iget-boolean v6, v5, Landroid/support/v4/app/Fragment;->A:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v7, v5, Landroid/support/v4/app/Fragment;->B:Z

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->e:I

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    iput v6, v5, Landroid/support/v4/app/Fragment;->i:I

    sget-boolean v6, Lay;->s:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "retainNonConfig: keeping retained "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "FragmentManager"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->s:Lay;

    if-eqz v6, :cond_4

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->s:Lay;

    invoke-virtual {v5}, Lay;->y()Laz;

    move-result-object v5

    if-eqz v5, :cond_4

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move v7, v0

    :goto_3
    if-eqz v2, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move-object v2, v1

    move-object v3, v2

    :cond_7
    if-nez v3, :cond_8

    if-nez v2, :cond_8

    return-object v1

    :cond_8
    new-instance p0, Laz;

    invoke-direct {p0, v3, v2}, Laz;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public final z()Landroid/os/Parcelable;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lay;->E()V

    invoke-virtual {p0}, Lay;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lay;->k:Z

    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Landroid/support/v4/app/FragmentState;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const-string v7, " has cleared index: "

    const-string v8, "Failure saving state: active "

    const-string v9, ": "

    const-string v10, "FragmentManager"

    if-ge v5, v1, :cond_8

    iget-object v11, p0, Lay;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    if-eqz v11, :cond_7

    iget v6, v11, Landroid/support/v4/app/Fragment;->e:I

    if-ltz v6, :cond_6

    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v11}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    aput-object v6, v3, v5

    iget v7, v11, Landroid/support/v4/app/Fragment;->b:I

    if-lez v7, :cond_3

    iget-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-nez v7, :cond_3

    invoke-virtual {p0, v11}, Lay;->B(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iget-object v7, v11, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    if-eqz v7, :cond_4

    iget-object v7, v11, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->e:I

    if-ltz v7, :cond_2

    iget-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-nez v7, :cond_1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    :cond_1
    iget-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iget-object v8, v11, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v7, v8}, Lay;->i(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;)V

    iget v7, v11, Landroid/support/v4/app/Fragment;->j:I

    if-eqz v7, :cond_4

    iget-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    iget v12, v11, Landroid/support/v4/app/Fragment;->j:I

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failure saving state: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has target not in fragment manager: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/support/v4/app/Fragment;->h:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lay;->m(Ljava/lang/RuntimeException;)V

    throw v2

    :cond_3
    iget-object v7, v11, Landroid/support/v4/app/Fragment;->c:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    :cond_4
    :goto_1
    sget-boolean v7, Lay;->s:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Saved state of "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v6, v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Landroid/support/v4/app/Fragment;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lay;->m(Ljava/lang/RuntimeException;)V

    throw v2

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_9

    sget-boolean p0, Lay;->s:Z

    if-eqz p0, :cond_12

    const-string p0, "saveAllState: no fragments!"

    invoke-static {v10, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_9
    iget-object v0, p0, Lay;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    new-array v1, v0, [I

    move v5, v4

    :goto_3
    if-ge v5, v0, :cond_d

    iget-object v6, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->e:I

    aput v6, v1, v5

    if-ltz v6, :cond_b

    sget-boolean v6, Lay;->s:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "saveAllState: adding fragment #"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lay;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lay;->m(Ljava/lang/RuntimeException;)V

    throw v2

    :cond_c
    move-object v1, v2

    :cond_d
    iget-object v0, p0, Lay;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    new-array v5, v0, [Landroid/support/v4/app/BackStackState;

    :goto_4
    if-ge v4, v0, :cond_10

    new-instance v6, Landroid/support/v4/app/BackStackState;

    iget-object v7, p0, Lay;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    invoke-direct {v6, v2}, Landroid/support/v4/app/BackStackState;-><init>(Lan;)V

    aput-object v6, v5, v4

    sget-boolean v6, Lay;->s:Z

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveAllState: adding back stack #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lay;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    invoke-static {}, Lc2;->l()V

    return-object v2

    :cond_10
    move-object v2, v5

    :cond_11
    new-instance p0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    iput-object v3, p0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    return-object p0

    :cond_12
    :goto_5
    return-object v2
.end method
