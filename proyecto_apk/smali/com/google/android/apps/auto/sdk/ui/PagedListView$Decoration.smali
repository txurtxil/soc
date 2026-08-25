.class public Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;
.super Landroid/support/v7/widget/RecyclerView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/ui/PagedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoration"
.end annotation


# instance fields
.field private final a:Z

.field protected final mContext:Landroid/content/Context;

.field protected final mDividerHeight:I

.field protected final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->a:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->updateDividerColor()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/apps/auto/sdk/ui/R$dimen;->car_divider_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->mDividerHeight:I

    return-void
.end method

.method private final a(Landroid/view/View;)Landroid/widget/TextView;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/TextView;

    return-object p1

    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getLeft(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, p1

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    if-eq p0, p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->getLeft(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-boolean v5, v0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->a:Z

    if-eqz v5, :cond_0

    int-to-float v7, v3

    int-to-float v9, v4

    iget v5, v0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->mDividerHeight:I

    int-to-float v10, v5

    iget-object v11, v0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    :goto_0
    if-ge v2, v5, :cond_2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->mDividerHeight:I

    sub-int v7, v6, v7

    if-lez v7, :cond_1

    int-to-float v13, v3

    int-to-float v14, v7

    int-to-float v15, v4

    int-to-float v6, v6

    iget-object v7, v0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateDividerColor()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView$Decoration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/google/android/apps/auto/sdk/ui/R$color;->car_list_divider:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
