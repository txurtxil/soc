.class public Lcom/google/android/apps/auto/sdk/ui/PagedListView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;,
        Lcom/google/android/apps/auto/sdk/ui/PagedListView$ItemCap;,
        Lcom/google/android/apps/auto/sdk/ui/PagedListView$ItemPositionOffset;,
        Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CLICKS:I = 0x6

.field protected static final PAGINATION_HOLD_DELAY_MS:I = 0x190


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

.field private d:I

.field private e:I

.field private f:Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;

.field private g:I

.field private h:I

.field private i:Z

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z

.field protected mAdapter:Landroid/support/v7/widget/RecyclerView$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$a<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHandler:Landroid/os/Handler;

.field protected final mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

.field protected mOnScrollListener:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

.field protected final mPaginationRunnable:Ljava/lang/Runnable;

.field protected final mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

.field private final n:Landroid/support/v7/widget/RecyclerView$l;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->d:I

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->e:I

    new-instance v0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->f:Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->h:I

    new-instance v1, Lcom/google/android/apps/auto/sdk/ui/f;

    invoke-direct {v1, p0}, Lcom/google/android/apps/auto/sdk/ui/f;-><init>(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)V

    iput-object v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->n:Landroid/support/v7/widget/RecyclerView$l;

    new-instance v2, Lcom/google/android/apps/auto/sdk/ui/g;

    invoke-direct {v2, p0}, Lcom/google/android/apps/auto/sdk/ui/g;-><init>(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)V

    iput-object v2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mPaginationRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/google/android/apps/auto/sdk/ui/h;

    invoke-direct {v2, p0}, Lcom/google/android/apps/auto/sdk/ui/h;-><init>(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)V

    iput-object v2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->o:Ljava/lang/Runnable;

    if-nez p5, :cond_0

    sget p5, Lcom/google/android/apps/auto/sdk/ui/R$layout;->car_paged_recycler_view:I

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p5, Lcom/google/android/apps/auto/sdk/ui/R$id;->max_width_layout:I

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout;

    sget-object v2, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->PagedListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/google/android/apps/auto/sdk/ui/R$id;->recycler_view:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    iput-object p3, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    sget p4, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->PagedListView_fadeLastItem:I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->setFadeLastItem(Z)V

    sget p4, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->PagedListView_offsetRows:I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->getDefaultMaxPages()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->e:I

    new-instance v2, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-direct {v2, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v2, p4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->setOffsetRows(Z)V

    invoke-virtual {p3, v2}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->f:Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;

    invoke-virtual {p3, p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V

    invoke-virtual {p3, v1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    invoke-virtual {p3}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object p1

    const/16 p4, 0xc

    invoke-virtual {p1, v0, p4}, Landroid/support/v7/widget/RecyclerView$m;->a(II)V

    new-instance p1, Lcom/google/android/apps/auto/sdk/ui/a;

    invoke-direct {p1, v2}, Lcom/google/android/apps/auto/sdk/ui/a;-><init>(Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;)V

    invoke-virtual {p3, p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    sget p1, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->PagedListView_scrollBarEnabled:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->a:Z

    sget p3, Lcom/google/android/apps/auto/sdk/ui/R$id;->paged_scroll_view:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    iput-object p3, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    new-instance p4, Lcom/google/android/apps/auto/sdk/ui/e;

    invoke-direct {p4, p0}, Lcom/google/android/apps/auto/sdk/ui/e;-><init>(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)V

    invoke-virtual {p3, p4}, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;->setPaginationListener(Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView$PaginationListener;)V

    if-eqz p1, :cond_1

    move p4, v0

    goto :goto_0

    :cond_1
    const/16 p4, 0x8

    :goto_0
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    sget p3, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->PagedListView_rightGutterEnabled:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->b:Z

    if-nez p3, :cond_2

    if-nez p1, :cond_5

    :cond_2
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/google/android/apps/auto/sdk/ui/R$dimen;->car_card_margin:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_4
    invoke-virtual {p5, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->setAutoDayNightMode()V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    return-object p0
.end method


# virtual methods
.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V

    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$k;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$k;)V

    return-void
.end method

.method public calculateMaxItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->e:I

    if-ltz v0, :cond_1

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->d:I

    mul-int/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$a<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMaxPages()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->g:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getFirstFullyVisibleChildPosition()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChildPosition()I

    move-result p0

    return p0
.end method

.method public getLastFullyVisibleChildPosition()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getLastFullyVisibleChildPosition()I

    move-result p0

    return p0
.end method

.method public getMaxPages()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->e:I

    return p0
.end method

.method public getPage(I)I
    .locals 1

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->d:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    div-int/2addr p1, p0

    return p1
.end method

.method public getRecyclerView()Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    return-object p0
.end method

.method public getRowsPerPage()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->d:I

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/auto/sdk/ui/R$bool;->car_true_for_touch:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/apps/auto/sdk/ui/R$bool;->has_wheel:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->j:F

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->k:F

    sub-float/2addr v4, v5

    iget-boolean v5, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->l:Z

    if-eqz v5, :cond_2

    float-to-double v5, v2

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {v6}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v7, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v7}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eq v5, v6, :cond_1

    iput-boolean v3, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->m:Z

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->l:Z

    :cond_2
    iget-boolean v5, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->m:Z

    if-eqz v5, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41700000    # 15.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-ltz v7, :cond_4

    cmpl-float v7, v4, v6

    if-gez v7, :cond_5

    :cond_4
    cmpg-float v7, v2, v6

    if-gtz v7, :cond_7

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_7

    :cond_5
    iget v4, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->k:F

    iget v6, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->j:F

    sub-float/2addr v4, v6

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    div-float v6, v2, v6

    float-to-int v6, v6

    if-eq v6, v4, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {v4}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v6, v4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v6, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v2, v4, :cond_6

    iget-object v4, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    iget-object v6, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v6, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {v4, v2}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_6
    move v2, v1

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->k:F

    goto :goto_2

    :cond_8
    move v2, v1

    move v5, v2

    :goto_2
    if-nez v2, :cond_9

    if-nez v0, :cond_a

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->j:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->k:F

    iput-boolean v3, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->l:Z

    iput-boolean v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->m:Z

    if-nez v0, :cond_a

    return v1

    :cond_a
    return v5

    :cond_b
    :goto_3
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->setRowOffsetMode(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result p1

    const/4 p2, 0x3

    const-string p3, "PagedListView"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget p2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->h:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean p2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->i:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "onLayout hasFocus: %s, mLastItemCount: %s, itemCount: %s, focusedChild: %s, firstBorn: %s, isInTouchMode: %s, mNeedsFocus: %s"

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->updateMaxItems()V

    iget-boolean p2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->i:Z

    if-eqz p2, :cond_2

    if-lez p1, :cond_2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iput-boolean v8, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->i:Z

    :cond_2
    iget p2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->h:I

    if-le p1, p2, :cond_3

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/google/android/apps/auto/sdk/ui/R$bool;->has_wheel:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->h:I

    :cond_4
    invoke-virtual {p0, v8}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->updatePaginationButtons(Z)V

    return-void
.end method

.method public positionOf(Landroid/view/View;)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public removeDefaultItemDecoration()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->f:Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V

    return-void
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V

    return-void
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$k;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$k;)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->setRowOffsetMode(I)V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/auto/sdk/ui/R$bool;->has_wheel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->i:Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public resetMaxPages()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->getDefaultMaxPages()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->e:I

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->updateMaxItems()V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->scrollToPosition(I)V

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$a<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/apps/auto/sdk/ui/PagedListView$ItemCap;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->updateMaxItems()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ERROR: adapter ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] MUST implement ItemCap"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoDayNightMode()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;->setAutoDayNightMode()V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->f:Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->updateDividerColor()V

    return-void
.end method

.method public setDarkMode()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;->setDarkMode()V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->f:Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->updateDividerColor()V

    return-void
.end method

.method public setDefaultItemDecoration(Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->removeDefaultItemDecoration()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->f:Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V

    return-void
.end method

.method public setDefaultMaxPages(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->g:I

    return-void
.end method

.method public setLightMode()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;->setLightMode()V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->f:Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->updateDividerColor()V

    return-void
.end method

.method public setListViewStartEndPadding(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/auto/sdk/ui/R$dimen;->car_card_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sub-int/2addr p1, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-boolean v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->b:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sub-int/2addr p2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {v2}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->getClipChildren()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public setMaxPages(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->e:I

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->updateMaxItems()V

    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mOnScrollListener:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->setOnScrollListener(Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;)V

    return-void
.end method

.method public shouldEnablePageDownButton()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->isAtBottom()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldEnablePageUpButton()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->isAtTop()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateMaxItems()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->updateRowsPerPage()V

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$a;

    check-cast v1, Lcom/google/android/apps/auto/sdk/ui/PagedListView$ItemCap;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->calculateMaxItemCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$ItemCap;->setMaxItems(I)V

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$a;

    if-ge v1, v0, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView$a;->b(II)V

    return-void

    :cond_1
    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->a(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePaginationButtons(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->isAtTop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->isAtBottom()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->shouldEnablePageUpButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;->setUpEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->shouldEnablePageDownButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;->setDownEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->c:Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {v1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->computeVerticalScrollRange()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {v2}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {v3}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->computeVerticalScrollExtent()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;->setParameters(IIIZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateRowsPerPage()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->d:I

    return-void

    :cond_1
    :goto_0
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->d:I

    return-void
.end method
