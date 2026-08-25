.class public Lcom/google/android/apps/auto/sdk/MenuItem$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/google/android/apps/auto/sdk/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-direct {v0}, Lcom/google/android/apps/auto/sdk/MenuItem;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/auto/sdk/MenuItem;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/auto/sdk/MenuItem;->a(Landroid/os/Bundle;)V

    new-instance p1, Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-direct {p1}, Lcom/google/android/apps/auto/sdk/MenuItem;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/auto/sdk/MenuItem;->b(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/apps/auto/sdk/MenuItem;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/MenuItem;->a(Lcom/google/android/apps/auto/sdk/MenuItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CSL.MenuItem"

    const-string v1, "MenuItem title should be non-empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/MenuItem;->b(Lcom/google/android/apps/auto/sdk/MenuItem;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/MenuItem;->c(Lcom/google/android/apps/auto/sdk/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "MenuItem is not a checkbox type but is checked"

    :goto_0
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/MenuItem;->b(Lcom/google/android/apps/auto/sdk/MenuItem;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/MenuItem;->d(Lcom/google/android/apps/auto/sdk/MenuItem;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const-string p0, "The menu is not a special view, but has remote views"

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/MenuItem;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/MenuItem;->getIconResId()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const-string p0, "Cannot set both icon resId and bitmap"

    goto :goto_0

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    return-object p0
.end method

.method public setChecked(Z)Lcom/google/android/apps/auto/sdk/MenuItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->a(Lcom/google/android/apps/auto/sdk/MenuItem;Z)Z

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/google/android/apps/auto/sdk/MenuItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->a(Lcom/google/android/apps/auto/sdk/MenuItem;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p0
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/apps/auto/sdk/MenuItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->a(Lcom/google/android/apps/auto/sdk/MenuItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setIconResId(I)Lcom/google/android/apps/auto/sdk/MenuItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->b(Lcom/google/android/apps/auto/sdk/MenuItem;I)I

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/apps/auto/sdk/MenuItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->b(Lcom/google/android/apps/auto/sdk/MenuItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/google/android/apps/auto/sdk/MenuItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->a(Lcom/google/android/apps/auto/sdk/MenuItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setType(I)Lcom/google/android/apps/auto/sdk/MenuItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem$Builder;->a:Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->a(Lcom/google/android/apps/auto/sdk/MenuItem;I)I

    return-object p0
.end method
