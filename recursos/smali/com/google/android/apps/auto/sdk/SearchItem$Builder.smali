.class public Lcom/google/android/apps/auto/sdk/SearchItem$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/SearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/google/android/apps/auto/sdk/SearchItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-direct {v0}, Lcom/google/android/apps/auto/sdk/SearchItem;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/apps/auto/sdk/SearchItem;
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/SearchItem;->a(Lcom/google/android/apps/auto/sdk/SearchItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/SearchItem;->b(Lcom/google/android/apps/auto/sdk/SearchItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/SearchItem;->c(Lcom/google/android/apps/auto/sdk/SearchItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/SearchItem;->d(Lcom/google/android/apps/auto/sdk/SearchItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/SearchItem;->e(Lcom/google/android/apps/auto/sdk/SearchItem;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v2}, Lcom/google/android/apps/auto/sdk/SearchItem;->f(Lcom/google/android/apps/auto/sdk/SearchItem;)I

    move-result v2

    if-ne v2, v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const-string p0, "Search suggestion can only contain title"

    :goto_2
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/SearchItem;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/SearchItem;->getIconResId()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const-string p0, "Cannot set both icon resId and bitmap"

    goto :goto_2

    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    return-object p0

    :cond_6
    const-string p0, "SearchItem title must be non-empty"

    goto :goto_2
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lcom/google/android/apps/auto/sdk/SearchItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/SearchItem;->c(Lcom/google/android/apps/auto/sdk/SearchItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/google/android/apps/auto/sdk/SearchItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/SearchItem;->a(Lcom/google/android/apps/auto/sdk/SearchItem;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p0
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/apps/auto/sdk/SearchItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/SearchItem;->a(Lcom/google/android/apps/auto/sdk/SearchItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setIconResId(I)Lcom/google/android/apps/auto/sdk/SearchItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/SearchItem;->b(Lcom/google/android/apps/auto/sdk/SearchItem;I)I

    return-object p0
.end method

.method public setSubDescription(Ljava/lang/CharSequence;)Lcom/google/android/apps/auto/sdk/SearchItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/SearchItem;->d(Lcom/google/android/apps/auto/sdk/SearchItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/apps/auto/sdk/SearchItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/SearchItem;->b(Lcom/google/android/apps/auto/sdk/SearchItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/google/android/apps/auto/sdk/SearchItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/SearchItem;->a(Lcom/google/android/apps/auto/sdk/SearchItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setType(I)Lcom/google/android/apps/auto/sdk/SearchItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem$Builder;->a:Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/SearchItem;->a(Lcom/google/android/apps/auto/sdk/SearchItem;I)I

    return-object p0
.end method
