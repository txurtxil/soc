.class public abstract Loa0;
.super Landroid/support/v7/widget/RecyclerView$q;


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$q;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Loa0;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Loa0;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput v0, p0, Loa0;->mInterimTargetDx:I

    iput v0, p0, Loa0;->mInterimTargetDy:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Loa0;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Loa0;->MILLISECONDS_PER_PX:F

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    const/4 p0, -0x1

    if-eq p5, p0, :cond_4

    if-eqz p5, :cond_1

    const/4 p0, 0x1

    if-ne p5, p0, :cond_0

    sub-int/2addr p4, p2

    return p4

    :cond_0
    const-string p0, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    sub-int/2addr p3, p1

    if-gtz p3, :cond_3

    sub-int/2addr p4, p2

    if-ltz p4, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return p4

    :cond_3
    return p3

    :cond_4
    sub-int/2addr p3, p1

    return p3
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 10

    invoke-virtual {p0}, Loa0;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getPaddingRight()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Loa0;->calculateDtToFit(IIIII)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 10

    invoke-virtual {p0}, Loa0;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getPaddingBottom()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Loa0;->calculateDtToFit(IIIII)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
.end method

.method public calculateTimeForScrolling(I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Loa0;->MILLISECONDS_PER_PX:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public abstract computeScrollVectorForPosition(I)Landroid/graphics/PointF;
.end method

.method public getHorizontalSnapPreference()I
    .locals 2

    iget-object p0, p0, Loa0;->mTargetVector:Landroid/graphics/PointF;

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSeekTargetStep(IILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$q$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Loa0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Loa0;->stop()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget p3, p0, Loa0;->mInterimTargetDx:I

    .line 12
    .line 13
    sub-int p1, p3, p1

    .line 14
    .line 15
    mul-int/2addr p3, p1

    .line 16
    const/4 v0, 0x0

    .line 17
    if-gtz p3, :cond_1

    .line 18
    .line 19
    move p1, v0

    .line 20
    :cond_1
    iput p1, p0, Loa0;->mInterimTargetDx:I

    .line 21
    .line 22
    iget p3, p0, Loa0;->mInterimTargetDy:I

    .line 23
    .line 24
    sub-int p2, p3, p2

    .line 25
    .line 26
    mul-int/2addr p3, p2

    .line 27
    if-gtz p3, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, p2

    .line 31
    :goto_0
    iput v0, p0, Loa0;->mInterimTargetDy:I

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, p4}, Loa0;->updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$q$a;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Loa0;->mInterimTargetDy:I

    iput v0, p0, Loa0;->mInterimTargetDx:I

    const/4 v0, 0x0

    iput-object v0, p0, Loa0;->mTargetVector:Landroid/graphics/PointF;

    return-void
.end method

.method public updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$q$a;)V
    .locals 4

    invoke-virtual {p0}, Loa0;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Loa0;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Loa0;->normalize(Landroid/graphics/PointF;)V

    iput-object v0, p0, Loa0;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Loa0;->mInterimTargetDx:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Loa0;->mInterimTargetDy:I

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Loa0;->calculateTimeForScrolling(I)I

    move-result v0

    iget v1, p0, Loa0;->mInterimTargetDx:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Loa0;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object p0, p0, Loa0;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/support/v7/widget/RecyclerView$q$a;->a(IIILandroid/view/animation/Interpolator;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Loa0;->getTargetPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$q$a;->a(I)V

    invoke-virtual {p0}, Loa0;->stop()V

    return-void
.end method
