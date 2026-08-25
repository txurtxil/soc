.class public Lcom/google/android/apps/auto/sdk/SearchController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/SearchController$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/apps/auto/sdk/q;

.field private b:Lcom/google/android/apps/auto/sdk/SearchController$a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/SearchController;->a:Lcom/google/android/apps/auto/sdk/q;

    return-void
.end method


# virtual methods
.method public hideSearchBox()V
    .locals 2

    const-string v0, "hideSearchBox"

    const-string v1, "CSL.SearchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchController;->b:Lcom/google/android/apps/auto/sdk/SearchController$a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController;->a:Lcom/google/android/apps/auto/sdk/q;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/q;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error disabling search box"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p0, "No SearchCallback is set"

    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchCallback(Lcom/google/android/apps/auto/sdk/SearchCallback;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setSearchCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.SearchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchController;->b:Lcom/google/android/apps/auto/sdk/SearchController$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/auto/sdk/SearchController$a;

    invoke-direct {v0, p0}, Lcom/google/android/apps/auto/sdk/SearchController$a;-><init>(Lcom/google/android/apps/auto/sdk/SearchController;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchController;->b:Lcom/google/android/apps/auto/sdk/SearchController$a;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/SearchController;->a:Lcom/google/android/apps/auto/sdk/q;

    invoke-interface {v2, v0}, Lcom/google/android/apps/auto/sdk/q;->a(Lcom/google/android/apps/auto/sdk/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error setting SearchCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController;->b:Lcom/google/android/apps/auto/sdk/SearchController$a;

    invoke-static {p0, p1}, Lcom/google/android/apps/auto/sdk/SearchController$a;->a(Lcom/google/android/apps/auto/sdk/SearchController$a;Lcom/google/android/apps/auto/sdk/SearchCallback;)V

    return-void
.end method

.method public setSearchHint(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setSearchHint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.SearchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController;->a:Lcom/google/android/apps/auto/sdk/q;

    invoke-interface {p0, p1}, Lcom/google/android/apps/auto/sdk/q;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error setting search hint"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setSearchItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/auto/sdk/SearchItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setSearchItems "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.SearchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController;->a:Lcom/google/android/apps/auto/sdk/q;

    invoke-interface {p0, p1}, Lcom/google/android/apps/auto/sdk/q;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error setting search items"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p0, "SearchItems cannot be null."

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    return-void
.end method

.method public showSearchBox()V
    .locals 2

    const-string v0, "showSearchBox"

    const-string v1, "CSL.SearchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchController;->b:Lcom/google/android/apps/auto/sdk/SearchController$a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController;->a:Lcom/google/android/apps/auto/sdk/q;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/q;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error enabling search box"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p0, "No SearchCallback is set"

    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    return-void
.end method
