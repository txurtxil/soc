.class final Lcom/google/android/apps/auto/sdk/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/g;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/g;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->a(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;->isUpPressed()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/ui/g;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    invoke-static {v1}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->a(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/auto/sdk/ui/PagedScrollBarView;->isDownPressed()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/g;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->pageUp()V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/g;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->mRecyclerView:Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarRecyclerView;->pageDown()V

    :cond_2
    return-void
.end method
