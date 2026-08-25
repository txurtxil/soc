.class final Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;
.super Loa0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private final b:Z

.field private final c:I

.field private synthetic d:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->d:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-direct {p0, p2}, Loa0;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const v0, 0x3fe66666    # 1.8f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->a:Landroid/view/animation/Interpolator;

    iput p3, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->c:I

    invoke-static {p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/apps/auto/sdk/ui/R$bool;->car_true_for_touch:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->b:Z

    return-void
.end method


# virtual methods
.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x43160000    # 150.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public final calculateTimeForDeceleration(I)I
    .locals 2

    invoke-virtual {p0, p1}, Loa0;->calculateTimeForScrolling(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3ee66666    # 0.45f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget-boolean p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->b:Z

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/16 p0, 0x3e8

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->d:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChildIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->c:I

    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    int-to-float p0, p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final getTargetPosition()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->c:I

    return p0
.end method

.method public final getVerticalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$q$a;)V
    .locals 1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Loa0;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x3

    const-string p1, "CarLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Scroll distance is 0"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->calculateTimeForDeceleration(I)I

    move-result p2

    if-lez p2, :cond_1

    neg-int p1, p1

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->a:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p1, p2, p0}, Landroid/support/v7/widget/RecyclerView$q$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
