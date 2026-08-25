.class public Lcom/google/android/apps/auto/sdk/ui/FabDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/animation/ValueAnimator;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Outline;


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->d:Landroid/graphics/Paint;

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    if-gt p1, p2, :cond_1

    if-ltz p2, :cond_0

    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->a:I

    iput p2, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->b:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->e:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/google/android/apps/auto/sdk/ui/c;

    invoke-direct {p2, p0}, Lcom/google/android/apps/auto/sdk/ui/c;-><init>(Lcom/google/android/apps/auto/sdk/ui/FabDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_0
    const-string p0, "Stroke width must be >= 0."

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "Fab growth must be <= strokeWidth."

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "Fab growth must be >= 0."

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/auto/sdk/ui/R$dimen;->car_fab_focused_growth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/auto/sdk/ui/R$dimen;->car_fab_focused_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/google/android/apps/auto/sdk/ui/R$integer;->car_fab_animation_duration:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;-><init>(III)V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->h:I

    iget v2, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->g:I

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->b()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/ui/FabDrawable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->a()V

    return-void
.end method

.method private final b()V
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->i:Landroid/graphics/Outline;

    if-eqz v2, :cond_0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->h:I

    sub-int v3, v0, p0

    sub-int v4, v1, p0

    add-int v5, v0, p0

    add-int v6, v1, p0

    int-to-float v7, p0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->g:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->i:Landroid/graphics/Outline;

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->b()V

    return-void
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->a()V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 9

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    aget v7, p1, v3

    const v8, 0x101009c

    if-ne v7, v8, :cond_0

    move v4, v6

    :cond_0
    const v8, 0x10100a7

    if-ne v7, v8, :cond_1

    move v5, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->f:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->f:Z

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    iget-boolean p1, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->f:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    iput-boolean v6, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->f:Z

    :cond_5
    :goto_1
    if-nez v0, :cond_7

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    return v2

    :cond_7
    :goto_2
    return v6
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFabAndStrokeColor(I)V
    .locals 1

    .line 2
    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->setFabAndStrokeColor(IF)V

    return-void
.end method

.method public setFabAndStrokeColor(IF)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->setFabColor(I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    aget v1, v0, p1

    mul-float/2addr v1, p2

    aput v1, v0, p1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->setStrokeColor(I)V

    return-void
.end method

.method public setFabColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/FabDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
