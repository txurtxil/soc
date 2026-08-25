.class public Lcom/google/android/apps/auto/sdk/SearchItem;
.super Lcom/google/android/apps/auto/sdk/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/SearchItem$Builder;,
        Lcom/google/android/apps/auto/sdk/SearchItem$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/apps/auto/sdk/SearchItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Landroid/os/Bundle;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/apps/auto/sdk/b;

    const-class v1, Lcom/google/android/apps/auto/sdk/SearchItem;

    invoke-direct {v0, v1}, Lcom/google/android/apps/auto/sdk/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/apps/auto/sdk/SearchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/SearchItem;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/SearchItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/SearchItem;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->b:Landroid/os/Bundle;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/SearchItem;)Ljava/lang/CharSequence;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/SearchItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->c:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/SearchItem;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->g:I

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/SearchItem;)Ljava/lang/CharSequence;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/SearchItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->d:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static synthetic c(Lcom/google/android/apps/auto/sdk/SearchItem;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/apps/auto/sdk/SearchItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->e:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static synthetic d(Lcom/google/android/apps/auto/sdk/SearchItem;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/apps/auto/sdk/SearchItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->f:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static synthetic e(Lcom/google/android/apps/auto/sdk/SearchItem;)I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->g:I

    return p0
.end method

.method public static synthetic f(Lcom/google/android/apps/auto/sdk/SearchItem;)I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->a:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "type"

    iget v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extras"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "subtitle"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "description"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "sub_description"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "icon_res_id"

    iget v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "icon_bitmap_id"

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->a:I

    const-string v0, "extras"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->b:Landroid/os/Bundle;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->c:Ljava/lang/CharSequence;

    :cond_0
    const-string v0, "subtitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->d:Ljava/lang/CharSequence;

    :cond_1
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->e:Ljava/lang/CharSequence;

    const-string v0, "sub_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->f:Ljava/lang/CharSequence;

    const-string v0, "icon_res_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->g:I

    const-string v0, "icon_bitmap_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->h:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIconResId()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->g:I

    return p0
.end method

.method public getSubDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->a:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SearchItem type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", description "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", sub-description "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", iconResId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconBitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchItem;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
