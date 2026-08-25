.class final Lcom/google/android/apps/auto/sdk/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView$PaginationListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/e;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPaginate(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/e;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p1, p1, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->pageUp()V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/e;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mOnScrollListener:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;->onScrollUpButtonClicked()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/e;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p1, p1, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->pageDown()V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/e;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mOnScrollListener:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;->onScrollDownButtonClicked()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown pagination direction ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PagedListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
