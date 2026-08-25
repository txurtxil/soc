.class final Lcom/google/android/apps/auto/sdk/ui/f;
.super Landroid/support/v7/widget/RecyclerView$l;


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object v0, v0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mOnScrollListener:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mPaginationRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object v0, v0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mOnScrollListener:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p1, p1, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->isAtTop()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p1, p1, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->isAtBottom()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p1, p1, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mOnScrollListener:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;->onReachBottom()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p1, p1, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->isAtTop()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p1, p1, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mLayoutManager:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->isAtBottom()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p1, p1, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mOnScrollListener:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;->onLeaveBottom()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/f;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->updatePaginationButtons(Z)V

    return-void
.end method
