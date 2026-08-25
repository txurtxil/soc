.class public Lcom/google/android/apps/auto/sdk/MenuItem;
.super Lcom/google/android/apps/auto/sdk/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/MenuItem$Builder;,
        Lcom/google/android/apps/auto/sdk/MenuItem$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/apps/auto/sdk/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:Landroid/widget/RemoteViews;

.field private k:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/apps/auto/sdk/b;

    const-class v1, Lcom/google/android/apps/auto/sdk/MenuItem;

    invoke-direct {v0, v1}, Lcom/google/android/apps/auto/sdk/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/apps/auto/sdk/MenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/MenuItem;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->b:I

    return p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/MenuItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/MenuItem;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->c:Landroid/os/Bundle;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/MenuItem;)Ljava/lang/CharSequence;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/MenuItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->d:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/MenuItem;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->i:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/MenuItem;)I
    .locals 0

    .line 4
    iget p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->b:I

    return p0
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/MenuItem;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->g:I

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/MenuItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->e:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static synthetic c(Lcom/google/android/apps/auto/sdk/MenuItem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->i:Z

    return p0
.end method

.method public static synthetic d(Lcom/google/android/apps/auto/sdk/MenuItem;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->j:Landroid/widget/RemoteViews;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 8
    iget p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->a:I

    return p0
.end method

.method public final a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->a:I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "position"

    iget v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "type"

    iget v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extras"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "subtitle"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "description"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "icon_res_id"

    iget v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "icon_bitmap_id"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "is_checked"

    iget-boolean v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "remote_views"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->j:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "normalized_title_initial"

    iget-char p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->k:C

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 9
    iget v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->i:Z

    return-void

    :cond_0
    const-string p0, "MenuItem is not a checkbox type"

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->a:I

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->b:I

    const-string v0, "extras"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->c:Landroid/os/Bundle;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->d:Ljava/lang/CharSequence;

    :cond_0
    const-string v0, "subtitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->e:Ljava/lang/CharSequence;

    :cond_1
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->f:Ljava/lang/CharSequence;

    :cond_2
    const-string v0, "icon_res_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->g:I

    const-string v0, "icon_bitmap_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->h:Landroid/graphics/Bitmap;

    const-string v0, "is_checked"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->i:Z

    const-string v0, "remote_views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->j:Landroid/widget/RemoteViews;

    const-string v0, "normalized_title_initial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getChar(Ljava/lang/String;)C

    move-result p1

    iput-char p1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->k:C

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->h:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIconResId()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->g:I

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->b:I

    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->i:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[MenuItem "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", description "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", iconResId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconBitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", remoteViews "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->j:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", normalizedTitleInitial "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Lcom/google/android/apps/auto/sdk/MenuItem;->k:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
