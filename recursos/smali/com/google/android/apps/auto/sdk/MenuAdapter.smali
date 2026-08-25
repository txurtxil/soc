.class public abstract Lcom/google/android/apps/auto/sdk/MenuAdapter;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/android/apps/auto/sdk/MenuController;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/apps/auto/sdk/MenuAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/apps/auto/sdk/MenuAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/apps/auto/sdk/MenuAdapter;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->c:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    return-object p0
.end method

.method public final a(I)Lcom/google/android/apps/auto/sdk/MenuAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;

    return-object p0
.end method

.method public final a(ILcom/google/android/apps/auto/sdk/MenuAdapter;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->c:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    return-void
.end method

.method public abstract getMenuItem(I)Lcom/google/android/apps/auto/sdk/MenuItem;
.end method

.method public abstract getMenuItemCount()I
.end method

.method public hideLoadingIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a:Lcom/google/android/apps/auto/sdk/MenuController;

    if-nez p0, :cond_0

    const-string p0, "CSL.MenuAdapter"

    const-string v0, "Cannot show the loading indicator because thisMenuAdapter is not connected to a root menu"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/MenuController;->c()V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a:Lcom/google/android/apps/auto/sdk/MenuController;

    if-nez v0, :cond_0

    const-string p0, "CSL.MenuAdapter"

    const-string v0, "Cannot notify dataset changed because this MenuAdapter is not connected to a root menu"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a:Lcom/google/android/apps/auto/sdk/MenuController;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/auto/sdk/MenuController;->a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a:Lcom/google/android/apps/auto/sdk/MenuController;

    if-nez v0, :cond_0

    const-string p0, "CSL.MenuAdapter"

    const-string p1, "Cannot notify item changed because this MenuAdapter is not connected to a root menu"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a:Lcom/google/android/apps/auto/sdk/MenuController;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/auto/sdk/MenuController;->a(Lcom/google/android/apps/auto/sdk/MenuAdapter;I)V

    return-void
.end method

.method public onEnter()V
    .locals 0

    return-void
.end method

.method public onExit()V
    .locals 0

    return-void
.end method

.method public onLoadSubmenu(I)Lcom/google/android/apps/auto/sdk/MenuAdapter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onMenuItemClicked(I)V
    .locals 0

    return-void
.end method

.method public showLoadingIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a:Lcom/google/android/apps/auto/sdk/MenuController;

    if-nez p0, :cond_0

    const-string p0, "CSL.MenuAdapter"

    const-string v0, "Cannot show the loading indicator because thisMenuAdapter is not connected to a root menu"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/MenuController;->b()V

    return-void
.end method
