.class public final Lcom/google/android/apps/auto/sdk/ui/a;
.super Lna0;


# instance fields
.field private final a:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

.field private final b:Landroid/support/v7/widget/RecyclerView$e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;)V
    .locals 1

    invoke-direct {p0}, Lna0;-><init>()V

    new-instance v0, Lcom/google/android/apps/auto/sdk/ui/b;

    invoke-direct {v0, p0}, Lcom/google/android/apps/auto/sdk/ui/b;-><init>(Lcom/google/android/apps/auto/sdk/ui/a;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/a;->b:Landroid/support/v7/widget/RecyclerView$e$a;

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/a;->a:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/ui/a;)Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/a;->a:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    return-object p0
.end method


# virtual methods
.method public final animateChange(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;IIII)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super/range {p0 .. p6}, Lna0;->animateChange(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;IIII)Z

    move-result p0

    if-eqz p2, :cond_1

    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return p0
.end method

.method public final onMoveFinished(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/a;->b:Landroid/support/v7/widget/RecyclerView$e$a;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/a;->isRunning(Landroid/support/v7/widget/RecyclerView$e$a;)Z

    return-void
.end method
