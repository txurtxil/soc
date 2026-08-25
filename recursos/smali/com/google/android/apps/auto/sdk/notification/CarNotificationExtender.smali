.class public Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender$Builder;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:Landroid/content/Intent;

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->h:I

    iput v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->i:I

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->h:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->i:I

    .line 8
    .line 9
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "android.car.EXTENSIONS"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string v1, "com.google.android.gms.car.support.CarNotificationExtender.EXTENDED"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput-boolean v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->a:Z

    .line 30
    .line 31
    const-string v1, "content_id"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Long;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->b:Ljava/lang/Long;

    .line 40
    .line 41
    const-string v1, "android.title"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->c:Ljava/lang/CharSequence;

    .line 48
    .line 49
    const-string v1, "subtitle"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->d:Ljava/lang/CharSequence;

    .line 56
    .line 57
    const-string v1, "thumbnail"

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/graphics/Bitmap;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->e:Landroid/graphics/Bitmap;

    .line 66
    .line 67
    const-string v1, "action_icon"

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->f:I

    .line 74
    .line 75
    const-string v1, "content_intent"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/content/Intent;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->g:Landroid/content/Intent;

    .line 84
    .line 85
    const-string v1, "app_color"

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iput v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->h:I

    .line 92
    .line 93
    const-string v1, "app_night_color"

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->i:I

    .line 100
    .line 101
    const-string v0, "heads_up_visibility"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iput-boolean p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->j:Z

    .line 108
    .line 109
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->f:I

    return p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->g:Landroid/content/Intent;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;)Ljava/lang/CharSequence;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->c:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->b:Ljava/lang/Long;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->j:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->f:I

    return p0
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->h:I

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->d:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static synthetic c(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->i:I

    return p1
.end method

.method public static synthetic c(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->j:Z

    return p0
.end method

.method public static synthetic d(Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public extend(Lr90;)Lr90;
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.google.android.gms.car.support.CarNotificationExtender.EXTENDED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "content_id"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->b:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "android.title"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "subtitle"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "thumbnail"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "action_icon"

    iget v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "content_intent"

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->g:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "app_color"

    iget v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "app_night_color"

    iget v1, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "heads_up_visibility"

    iget-boolean p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->j:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getActionIconResId()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->f:I

    return p0
.end method

.method public getActionIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->h:I

    return p0
.end method

.method public getContentId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public getNightBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->i:I

    return p0
.end method

.method public getShouldShowAsHeadsUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->j:Z

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isExtended()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/auto/sdk/notification/CarNotificationExtender;->a:Z

    return p0
.end method
