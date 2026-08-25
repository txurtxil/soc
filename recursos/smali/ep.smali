.class public Lep;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lso;

.field public final c:Z

.field public final d:I

.field public e:Landroid/view/View;

.field public f:I

.field public g:Z

.field public h:Lkp;

.field public i:Lbp;

.field public j:Landroid/widget/PopupWindow$OnDismissListener;

.field public final k:Lcp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lso;Landroid/view/View;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const p6, 0x800003

    .line 5
    .line 6
    .line 7
    iput p6, p0, Lep;->f:I

    .line 8
    .line 9
    new-instance p6, Lcp;

    .line 10
    .line 11
    invoke-direct {p6, p0}, Lcp;-><init>(Lep;)V

    .line 12
    .line 13
    .line 14
    iput-object p6, p0, Lep;->k:Lcp;

    .line 15
    .line 16
    iput-object p1, p0, Lep;->a:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lep;->b:Lso;

    .line 19
    .line 20
    iput-object p3, p0, Lep;->e:Landroid/view/View;

    .line 21
    .line 22
    iput-boolean p4, p0, Lep;->c:Z

    .line 23
    .line 24
    iput p5, p0, Lep;->d:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()Lbp;
    .locals 8

    .line 1
    iget-object v0, p0, Lep;->i:Lbp;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "window"

    .line 6
    .line 7
    iget-object v1, p0, Lep;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Landroid/graphics/Point;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Ldp;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 25
    .line 26
    .line 27
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 28
    .line 29
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 30
    .line 31
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const v2, 0x7f070016

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v3, p0, Lep;->a:Landroid/content/Context;

    .line 47
    .line 48
    if-lt v0, v1, :cond_0

    .line 49
    .line 50
    new-instance v0, Lm9;

    .line 51
    .line 52
    iget-object v1, p0, Lep;->e:Landroid/view/View;

    .line 53
    .line 54
    iget v2, p0, Lep;->d:I

    .line 55
    .line 56
    iget-boolean v4, p0, Lep;->c:Z

    .line 57
    .line 58
    invoke-direct {v0, v3, v1, v2, v4}, Lm9;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, Lb30;

    .line 63
    .line 64
    iget-object v5, p0, Lep;->e:Landroid/view/View;

    .line 65
    .line 66
    iget v6, p0, Lep;->d:I

    .line 67
    .line 68
    iget-boolean v7, p0, Lep;->c:Z

    .line 69
    .line 70
    iget-object v4, p0, Lep;->b:Lso;

    .line 71
    .line 72
    invoke-direct/range {v2 .. v7}, Lb30;-><init>(Landroid/content/Context;Lso;Landroid/view/View;IZ)V

    .line 73
    .line 74
    .line 75
    move-object v0, v2

    .line 76
    :goto_0
    iget-object v1, p0, Lep;->b:Lso;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lbp;->l(Lso;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lep;->k:Lcp;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lbp;->r(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lep;->e:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lbp;->n(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lep;->h:Lkp;

    .line 92
    .line 93
    invoke-interface {v0, v1}, Llp;->e(Lkp;)V

    .line 94
    .line 95
    .line 96
    iget-boolean v1, p0, Lep;->g:Z

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lbp;->o(Z)V

    .line 99
    .line 100
    .line 101
    iget v1, p0, Lep;->f:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lbp;->p(I)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lep;->i:Lbp;

    .line 107
    .line 108
    :cond_1
    iget-object p0, p0, Lep;->i:Lbp;

    .line 109
    .line 110
    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lep;->i:Lbp;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lg20;->b()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lep;->i:Lbp;

    .line 3
    .line 4
    iget-object p0, p0, Lep;->j:Landroid/widget/PopupWindow$OnDismissListener;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final d(IIZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lep;->a()Lbp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p4}, Lbp;->s(Z)V

    .line 6
    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iget p3, p0, Lep;->f:I

    .line 11
    .line 12
    iget-object p4, p0, Lep;->e:Landroid/view/View;

    .line 13
    .line 14
    sget-object v1, Lu70;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-static {p4}, Lf70;->d(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    and-int/lit8 p3, p3, 0x7

    .line 25
    .line 26
    const/4 p4, 0x5

    .line 27
    if-ne p3, p4, :cond_0

    .line 28
    .line 29
    iget-object p3, p0, Lep;->e:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    sub-int/2addr p1, p3

    .line 36
    :cond_0
    invoke-virtual {v0, p1}, Lbp;->q(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lbp;->t(I)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lep;->a:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 53
    .line 54
    const/high16 p3, 0x42400000    # 48.0f

    .line 55
    .line 56
    mul-float/2addr p0, p3

    .line 57
    const/high16 p3, 0x40000000    # 2.0f

    .line 58
    .line 59
    div-float/2addr p0, p3

    .line 60
    float-to-int p0, p0

    .line 61
    new-instance p3, Landroid/graphics/Rect;

    .line 62
    .line 63
    sub-int p4, p1, p0

    .line 64
    .line 65
    sub-int v1, p2, p0

    .line 66
    .line 67
    add-int/2addr p1, p0

    .line 68
    add-int/2addr p2, p0

    .line 69
    invoke-direct {p3, p4, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .line 71
    .line 72
    iput-object p3, v0, Lbp;->a:Landroid/graphics/Rect;

    .line 73
    .line 74
    :cond_1
    invoke-interface {v0}, Lg20;->d()V

    .line 75
    .line 76
    .line 77
    return-void
.end method
