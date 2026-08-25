.class public Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->b(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->c(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->d(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "A thumbnail icon is required for heads up notification."

    :goto_0
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    return-object p0

    :cond_2
    const-string p0, "An action icon is required"

    goto :goto_0

    :cond_3
    const-string p0, "A title is required."

    goto :goto_0
.end method

.method public setActionIconResId(I)Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;I)I

    return-object p0
.end method

.method public setActionIntent(Landroid/content/Intent;)Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Landroid/content/Intent;)Landroid/content/Intent;

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->b(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;I)I

    return-object p0
.end method

.method public setContentId(J)Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public setNightBackgroundColor(I)Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->c(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;I)I

    return-object p0
.end method

.method public setShouldShowAsHeadsUp(Z)Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Z)Z

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->b(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;->a:Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;

    invoke-static {v0, p1}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method
