.class public final Lt80;
.super Lk60;
.source "SourceFile"

# interfaces
.implements Lv0;


# static fields
.field public static final Q:Landroid/view/animation/AccelerateInterpolator;

.field public static final R:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public A:Ls80;

.field public B:Ls80;

.field public C:Lko;

.field public D:Z

.field public final E:Ljava/util/ArrayList;

.field public F:I

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Li80;

.field public L:Z

.field public M:Z

.field public final N:Lr80;

.field public final O:Lr80;

.field public final P:Li90;

.field public s:Landroid/content/Context;

.field public t:Landroid/content/Context;

.field public u:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public v:Landroidx/appcompat/widget/ActionBarContainer;

.field public w:Lpb;

.field public x:Landroidx/appcompat/widget/ActionBarContextView;

.field public final y:Landroid/view/View;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt80;->Q:Landroid/view/animation/AccelerateInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lt80;->R:Landroid/view/animation/DecelerateInterpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lt80;->E:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lt80;->F:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lt80;->G:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lt80;->J:Z

    .line 23
    .line 24
    new-instance v2, Lr80;

    .line 25
    .line 26
    invoke-direct {v2, p0, v0}, Lr80;-><init>(Lt80;I)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lt80;->N:Lr80;

    .line 30
    .line 31
    new-instance v0, Lr80;

    .line 32
    .line 33
    invoke-direct {v0, p0, v1}, Lr80;-><init>(Lt80;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lt80;->O:Lr80;

    .line 37
    .line 38
    new-instance v0, Li90;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Li90;-><init>(Lt80;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lt80;->P:Li90;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lt80;->M(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    if-nez p2, :cond_0

    .line 57
    .line 58
    const p2, 0x1020002

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lt80;->y:Landroid/view/View;

    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt80;->E:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lt80;->F:I

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lt80;->G:Z

    .line 73
    iput-boolean v0, p0, Lt80;->J:Z

    .line 74
    new-instance v0, Lr80;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr80;-><init>(Lt80;I)V

    iput-object v0, p0, Lt80;->N:Lr80;

    .line 75
    new-instance v0, Lr80;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lr80;-><init>(Lt80;I)V

    iput-object v0, p0, Lt80;->O:Lr80;

    .line 76
    new-instance v0, Li90;

    invoke-direct {v0, p0}, Li90;-><init>(Lt80;)V

    iput-object v0, p0, Lt80;->P:Li90;

    .line 77
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt80;->M(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final E(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt80;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lt80;->F(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final F(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lt80;->w:Lpb;

    .line 8
    .line 9
    check-cast v1, Lh50;

    .line 10
    .line 11
    iget v2, v1, Lh50;->b:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    iput-boolean v3, p0, Lt80;->z:Z

    .line 15
    .line 16
    and-int/lit8 p0, p1, 0x4

    .line 17
    .line 18
    and-int/lit8 p1, v2, -0x5

    .line 19
    .line 20
    or-int/2addr p0, p1

    .line 21
    invoke-virtual {v1, p0}, Lh50;->a(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lt80;->L:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lt80;->K:Li80;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Li80;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final I(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lt80;->w:Lpb;

    .line 2
    .line 3
    check-cast p0, Lh50;

    .line 4
    .line 5
    iget-boolean v0, p0, Lh50;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 10
    .line 11
    iput-object p1, p0, Lh50;->h:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iget v1, p0, Lh50;->b:I

    .line 14
    .line 15
    and-int/lit8 v1, v1, 0x8

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-boolean p0, p0, Lh50;->g:Z

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0, p1}, Lu70;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final K(Lko;)Li1;
    .locals 2

    .line 1
    iget-object v0, p0, Lt80;->A:Ls80;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ls80;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lt80;->u:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lt80;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ls80;

    .line 20
    .line 21
    iget-object v1, p0, Lt80;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p0, v1, p1}, Ls80;-><init>(Lt80;Landroid/content/Context;Lko;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Ls80;->d:Lso;

    .line 31
    .line 32
    invoke-virtual {p1}, Lso;->w()V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object v1, v0, Ls80;->e:Lko;

    .line 36
    .line 37
    iget-object v1, v1, Lko;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lvp;

    .line 40
    .line 41
    invoke-virtual {v1, v0, p1}, Lvp;->f(Li1;Landroid/view/Menu;)Z

    .line 42
    .line 43
    .line 44
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p1}, Lso;->v()V

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iput-object v0, p0, Lt80;->A:Ls80;

    .line 51
    .line 52
    invoke-virtual {v0}, Ls80;->h()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lt80;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->c(Li1;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lt80;->L(Z)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_1
    const/4 p0, 0x0

    .line 66
    return-object p0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    invoke-virtual {p1}, Lso;->v()V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final L(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lt80;->I:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lt80;->I:Z

    .line 10
    .line 11
    iget-object v2, p0, Lt80;->u:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v1}, Lt80;->O(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iput-boolean v1, p0, Lt80;->I:Z

    .line 25
    .line 26
    iget-object v0, p0, Lt80;->u:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0, v1}, Lt80;->O(Z)V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    iget-object v0, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 37
    .line 38
    sget-object v2, Lu70;->a:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-static {v0}, Lg70;->c(Landroid/view/View;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v2, p0, Lt80;->w:Lpb;

    .line 45
    .line 46
    const/16 v3, 0x8

    .line 47
    .line 48
    const/4 v4, 0x4

    .line 49
    if-eqz v0, :cond_7

    .line 50
    .line 51
    const-wide/16 v5, 0xc8

    .line 52
    .line 53
    const-wide/16 v7, 0x64

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    check-cast v2, Lh50;

    .line 58
    .line 59
    iget-object p1, v2, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 60
    .line 61
    invoke-static {p1}, Lu70;->a(Landroid/view/View;)Lh80;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Lh80;->a(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v7, v8}, Lh80;->c(J)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lg50;

    .line 73
    .line 74
    invoke-direct {v0, v2, v4}, Lg50;-><init>(Lh50;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lh80;->d(Lj80;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lt80;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 81
    .line 82
    invoke-virtual {p0, v1, v5, v6}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lh80;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    check-cast v2, Lh50;

    .line 88
    .line 89
    iget-object p1, v2, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 90
    .line 91
    invoke-static {p1}, Lu70;->a(Landroid/view/View;)Lh80;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lh80;->a(F)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v5, v6}, Lh80;->c(J)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lg50;

    .line 104
    .line 105
    invoke-direct {v0, v2, v1}, Lg50;-><init>(Lh50;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lh80;->d(Lj80;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lt80;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 112
    .line 113
    invoke-virtual {p0, v3, v7, v8}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lh80;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    move-object v9, p1

    .line 118
    move-object p1, p0

    .line 119
    move-object p0, v9

    .line 120
    :goto_1
    new-instance v0, Li80;

    .line 121
    .line 122
    invoke-direct {v0}, Li80;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Li80;->a:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object p1, p1, Lh80;->a:Ljava/lang/ref/WeakReference;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Landroid/view/View;

    .line 137
    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    .line 145
    .line 146
    .line 147
    move-result-wide v2

    .line 148
    goto :goto_2

    .line 149
    :cond_5
    const-wide/16 v2, 0x0

    .line 150
    .line 151
    :goto_2
    iget-object p1, p0, Lh80;->a:Ljava/lang/ref/WeakReference;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroid/view/View;

    .line 158
    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 166
    .line 167
    .line 168
    :cond_6
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Li80;->b()V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_7
    if-eqz p1, :cond_8

    .line 176
    .line 177
    check-cast v2, Lh50;

    .line 178
    .line 179
    iget-object p1, v2, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 180
    .line 181
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Lt80;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 185
    .line 186
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_8
    check-cast v2, Lh50;

    .line 191
    .line 192
    iget-object p1, v2, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 193
    .line 194
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lt80;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 198
    .line 199
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final M(Landroid/view/View;)V
    .locals 6

    .line 1
    const v0, 0x7f09008c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lt80;->u:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lv0;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const v0, 0x7f090035

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lpb;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lpb;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    if-eqz v1, :cond_8

    .line 34
    .line 35
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lpb;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    iput-object v0, p0, Lt80;->w:Lpb;

    .line 42
    .line 43
    const v0, 0x7f09003d

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    .line 52
    iput-object v0, p0, Lt80;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 53
    .line 54
    const v0, 0x7f090037

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    .line 62
    .line 63
    iput-object p1, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 64
    .line 65
    iget-object v0, p0, Lt80;->w:Lpb;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    iget-object v1, p0, Lt80;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    check-cast v0, Lh50;

    .line 76
    .line 77
    iget-object p1, v0, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lt80;->s:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v0, p0, Lt80;->w:Lpb;

    .line 86
    .line 87
    check-cast v0, Lh50;

    .line 88
    .line 89
    iget v0, v0, Lh50;->b:I

    .line 90
    .line 91
    and-int/lit8 v0, v0, 0x4

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    const/4 v2, 0x0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    move v0, v1

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move v0, v2

    .line 100
    :goto_1
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iput-boolean v1, p0, Lt80;->z:Z

    .line 103
    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 109
    .line 110
    const/16 v4, 0xe

    .line 111
    .line 112
    iget-object v0, p0, Lt80;->w:Lpb;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/high16 v0, 0x7f050000

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lt80;->N(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lt80;->s:Landroid/content/Context;

    .line 131
    .line 132
    sget-object v0, Lvv;->a:[I

    .line 133
    .line 134
    const v3, 0x7f040005

    .line 135
    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p1, v5, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    iget-object v0, p0, Lt80;->u:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 149
    .line 150
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    .line 151
    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    iput-boolean v1, p0, Lt80;->M:Z

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    const-string p0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    .line 161
    .line 162
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_5
    :goto_2
    const/16 v0, 0xc

    .line 167
    .line 168
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    int-to-float v0, v0

    .line 175
    iget-object p0, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 176
    .line 177
    sget-object v1, Lu70;->a:Ljava/util/WeakHashMap;

    .line 178
    .line 179
    invoke-static {p0, v0}, Lj70;->s(Landroid/view/View;F)V

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_7
    const-class p0, Lt80;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const-string p1, " can only be used with a compatible window decor layout"

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    goto :goto_3

    .line 215
    :cond_9
    const-string p1, "null"

    .line 216
    .line 217
    :goto_3
    const-string v0, "Can\'t make a decor toolbar out of "

    .line 218
    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0
.end method

.method public final N(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lt80;->w:Lpb;

    .line 5
    .line 6
    check-cast p1, Lh50;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lc00;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lc00;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lt80;->w:Lpb;

    .line 23
    .line 24
    check-cast p1, Lh50;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lt80;->w:Lpb;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lt80;->w:Lpb;

    .line 35
    .line 36
    check-cast p1, Lh50;

    .line 37
    .line 38
    iget-object p1, p1, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lt80;->u:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final O(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lt80;->H:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lt80;->I:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v3

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v2

    .line 15
    :goto_1
    iget-boolean v1, p0, Lt80;->J:Z

    .line 16
    .line 17
    const-wide/16 v4, 0xfa

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/high16 v7, 0x3f800000    # 1.0f

    .line 21
    .line 22
    iget-object v8, p0, Lt80;->P:Li90;

    .line 23
    .line 24
    iget-object v9, p0, Lt80;->y:Landroid/view/View;

    .line 25
    .line 26
    if-eqz v0, :cond_e

    .line 27
    .line 28
    if-nez v1, :cond_1a

    .line 29
    .line 30
    iput-boolean v2, p0, Lt80;->J:Z

    .line 31
    .line 32
    iget-object v0, p0, Lt80;->K:Li80;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Li80;->a()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lt80;->F:I

    .line 45
    .line 46
    iget-object v1, p0, Lt80;->O:Lr80;

    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    if-nez v0, :cond_c

    .line 50
    .line 51
    iget-boolean v0, p0, Lt80;->L:Z

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    if-eqz p1, :cond_c

    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 58
    .line 59
    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    neg-int v0, v0

    .line 69
    int-to-float v0, v0

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    filled-new-array {v3, v3}, [I

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v3, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 77
    .line 78
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 79
    .line 80
    .line 81
    aget p1, p1, v2

    .line 82
    .line 83
    int-to-float p1, p1

    .line 84
    sub-float/2addr v0, p1

    .line 85
    :cond_4
    iget-object p1, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Li80;

    .line 91
    .line 92
    invoke-direct {p1}, Li80;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 96
    .line 97
    invoke-static {v2}, Lu70;->a(Landroid/view/View;)Lh80;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2, v10}, Lh80;->e(F)V

    .line 102
    .line 103
    .line 104
    iget-object v3, v2, Lh80;->a:Ljava/lang/ref/WeakReference;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroid/view/View;

    .line 111
    .line 112
    if-eqz v3, :cond_6

    .line 113
    .line 114
    if-eqz v8, :cond_5

    .line 115
    .line 116
    new-instance v6, Lf80;

    .line 117
    .line 118
    invoke-direct {v6, v8, v3}, Lf80;-><init>(Li90;Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v3, v6}, Lg80;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 126
    .line 127
    .line 128
    :cond_6
    iget-boolean v3, p1, Li80;->e:Z

    .line 129
    .line 130
    iget-object v6, p1, Li80;->a:Ljava/util/ArrayList;

    .line 131
    .line 132
    if-nez v3, :cond_7

    .line 133
    .line 134
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_7
    iget-boolean v2, p0, Lt80;->G:Z

    .line 138
    .line 139
    if-eqz v2, :cond_8

    .line 140
    .line 141
    if-eqz v9, :cond_8

    .line 142
    .line 143
    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    .line 145
    .line 146
    invoke-static {v9}, Lu70;->a(Landroid/view/View;)Lh80;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, v10}, Lh80;->e(F)V

    .line 151
    .line 152
    .line 153
    iget-boolean v2, p1, Li80;->e:Z

    .line 154
    .line 155
    if-nez v2, :cond_8

    .line 156
    .line 157
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_8
    iget-boolean v0, p1, Li80;->e:Z

    .line 161
    .line 162
    if-nez v0, :cond_9

    .line 163
    .line 164
    sget-object v2, Lt80;->R:Landroid/view/animation/DecelerateInterpolator;

    .line 165
    .line 166
    iput-object v2, p1, Li80;->c:Landroid/view/animation/Interpolator;

    .line 167
    .line 168
    :cond_9
    if-nez v0, :cond_a

    .line 169
    .line 170
    iput-wide v4, p1, Li80;->b:J

    .line 171
    .line 172
    :cond_a
    if-nez v0, :cond_b

    .line 173
    .line 174
    iput-object v1, p1, Li80;->d:Lj80;

    .line 175
    .line 176
    :cond_b
    iput-object p1, p0, Lt80;->K:Li80;

    .line 177
    .line 178
    invoke-virtual {p1}, Li80;->b()V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_c
    iget-object p1, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 183
    .line 184
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 188
    .line 189
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 190
    .line 191
    .line 192
    iget-boolean p1, p0, Lt80;->G:Z

    .line 193
    .line 194
    if-eqz p1, :cond_d

    .line 195
    .line 196
    if-eqz v9, :cond_d

    .line 197
    .line 198
    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 199
    .line 200
    .line 201
    :cond_d
    invoke-virtual {v1}, Lr80;->b()V

    .line 202
    .line 203
    .line 204
    :goto_2
    iget-object p0, p0, Lt80;->u:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 205
    .line 206
    if-eqz p0, :cond_1a

    .line 207
    .line 208
    sget-object p1, Lu70;->a:Ljava/util/WeakHashMap;

    .line 209
    .line 210
    invoke-static {p0}, Lh70;->c(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_e
    if-eqz v1, :cond_1a

    .line 215
    .line 216
    iput-boolean v3, p0, Lt80;->J:Z

    .line 217
    .line 218
    iget-object v0, p0, Lt80;->K:Li80;

    .line 219
    .line 220
    if-eqz v0, :cond_f

    .line 221
    .line 222
    invoke-virtual {v0}, Li80;->a()V

    .line 223
    .line 224
    .line 225
    :cond_f
    iget v0, p0, Lt80;->F:I

    .line 226
    .line 227
    iget-object v1, p0, Lt80;->N:Lr80;

    .line 228
    .line 229
    if-nez v0, :cond_19

    .line 230
    .line 231
    iget-boolean v0, p0, Lt80;->L:Z

    .line 232
    .line 233
    if-nez v0, :cond_10

    .line 234
    .line 235
    if-eqz p1, :cond_19

    .line 236
    .line 237
    :cond_10
    iget-object v0, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 238
    .line 239
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 243
    .line 244
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Li80;

    .line 248
    .line 249
    invoke-direct {v0}, Li80;-><init>()V

    .line 250
    .line 251
    .line 252
    iget-object v7, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 253
    .line 254
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    neg-int v7, v7

    .line 259
    int-to-float v7, v7

    .line 260
    if-eqz p1, :cond_11

    .line 261
    .line 262
    filled-new-array {v3, v3}, [I

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iget-object v3, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 267
    .line 268
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 269
    .line 270
    .line 271
    aget p1, p1, v2

    .line 272
    .line 273
    int-to-float p1, p1

    .line 274
    sub-float/2addr v7, p1

    .line 275
    :cond_11
    iget-object p1, p0, Lt80;->v:Landroidx/appcompat/widget/ActionBarContainer;

    .line 276
    .line 277
    invoke-static {p1}, Lu70;->a(Landroid/view/View;)Lh80;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1, v7}, Lh80;->e(F)V

    .line 282
    .line 283
    .line 284
    iget-object v2, p1, Lh80;->a:Ljava/lang/ref/WeakReference;

    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    check-cast v2, Landroid/view/View;

    .line 291
    .line 292
    if-eqz v2, :cond_13

    .line 293
    .line 294
    if-eqz v8, :cond_12

    .line 295
    .line 296
    new-instance v6, Lf80;

    .line 297
    .line 298
    invoke-direct {v6, v8, v2}, Lf80;-><init>(Li90;Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v2, v6}, Lg80;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 306
    .line 307
    .line 308
    :cond_13
    iget-boolean v2, v0, Li80;->e:Z

    .line 309
    .line 310
    iget-object v3, v0, Li80;->a:Ljava/util/ArrayList;

    .line 311
    .line 312
    if-nez v2, :cond_14

    .line 313
    .line 314
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    :cond_14
    iget-boolean p1, p0, Lt80;->G:Z

    .line 318
    .line 319
    if-eqz p1, :cond_15

    .line 320
    .line 321
    if-eqz v9, :cond_15

    .line 322
    .line 323
    invoke-static {v9}, Lu70;->a(Landroid/view/View;)Lh80;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {p1, v7}, Lh80;->e(F)V

    .line 328
    .line 329
    .line 330
    iget-boolean v2, v0, Li80;->e:Z

    .line 331
    .line 332
    if-nez v2, :cond_15

    .line 333
    .line 334
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    :cond_15
    iget-boolean p1, v0, Li80;->e:Z

    .line 338
    .line 339
    if-nez p1, :cond_16

    .line 340
    .line 341
    sget-object v2, Lt80;->Q:Landroid/view/animation/AccelerateInterpolator;

    .line 342
    .line 343
    iput-object v2, v0, Li80;->c:Landroid/view/animation/Interpolator;

    .line 344
    .line 345
    :cond_16
    if-nez p1, :cond_17

    .line 346
    .line 347
    iput-wide v4, v0, Li80;->b:J

    .line 348
    .line 349
    :cond_17
    if-nez p1, :cond_18

    .line 350
    .line 351
    iput-object v1, v0, Li80;->d:Lj80;

    .line 352
    .line 353
    :cond_18
    iput-object v0, p0, Lt80;->K:Li80;

    .line 354
    .line 355
    invoke-virtual {v0}, Li80;->b()V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :cond_19
    invoke-virtual {v1}, Lr80;->b()V

    .line 360
    .line 361
    .line 362
    :cond_1a
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lt80;->w:Lpb;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lh50;

    .line 7
    .line 8
    iget-object v0, v0, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->N:Ly40;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, v0, Ly40;->b:Lwo;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    check-cast p0, Lh50;

    .line 19
    .line 20
    iget-object p0, p0, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->N:Ly40;

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Ly40;->b:Lwo;

    .line 29
    .line 30
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lwo;->collapseActionView()Z

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final n(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt80;->D:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lt80;->D:Z

    .line 7
    .line 8
    iget-object p0, p0, Lt80;->E:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-gtz p1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lc2;->l()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final t()I
    .locals 0

    .line 1
    iget-object p0, p0, Lt80;->w:Lpb;

    .line 2
    .line 3
    check-cast p0, Lh50;

    .line 4
    .line 5
    iget p0, p0, Lh50;->b:I

    .line 6
    .line 7
    return p0
.end method

.method public final u()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Lt80;->t:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lt80;->s:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f04000a

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    iget-object v2, p0, Lt80;->s:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lt80;->t:Landroid/content/Context;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lt80;->s:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v0, p0, Lt80;->t:Landroid/content/Context;

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object p0, p0, Lt80;->t:Landroid/content/Context;

    .line 42
    .line 43
    return-object p0
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt80;->s:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x7f050000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lt80;->N(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final z(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lt80;->A:Ls80;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object p0, p0, Ls80;->d:Lso;

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v0

    .line 28
    :goto_0
    invoke-virtual {p0, v2}, Lso;->setQwertyMode(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2, v0}, Lso;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_1
    return v0
.end method
