.class public final Lus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lidv/lzn/screenonauto/ScreenCaptureService;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Landroid/view/WindowManager;

.field public d:Z

.field public e:Landroid/view/View;

.field public final f:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lidv/lzn/screenonauto/ScreenCaptureService;Landroid/content/SharedPreferences;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lus;->a:Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 8
    .line 9
    iput-object p2, p0, Lus;->b:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-class p2, Landroid/view/WindowManager;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/WindowManager;

    .line 18
    .line 19
    iput-object p1, p0, Lus;->c:Landroid/view/WindowManager;

    .line 20
    .line 21
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    const/16 v4, 0x38

    .line 24
    .line 25
    const/4 v5, -0x3

    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x1

    .line 28
    const/16 v3, 0x7f6

    .line 29
    .line 30
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 31
    .line 32
    .line 33
    const p1, 0x800033

    .line 34
    .line 35
    .line 36
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 40
    .line 41
    iput-object v0, p0, Lus;->f:Landroid/view/WindowManager$LayoutParams;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lus;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lus;->b:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v1, "force_landscape_active"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lus;->a:Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lus;->e:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance v1, Landroid/view/View;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object v0, p0, Lus;->c:Landroid/view/WindowManager;

    .line 41
    .line 42
    iget-object v2, p0, Lus;->f:Landroid/view/WindowManager$LayoutParams;

    .line 43
    .line 44
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lf60;->a:Lf60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    new-instance v2, Lcy;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    move-object v0, v2

    .line 57
    :goto_0
    nop

    .line 58
    instance-of v2, v0, Lcy;

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    check-cast v0, Lf60;

    .line 63
    .line 64
    iput-object v1, p0, Lus;->e:Landroid/view/View;

    .line 65
    .line 66
    :cond_1
    :goto_1
    return-void

    .line 67
    :cond_2
    invoke-virtual {p0}, Lus;->c()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lus;->d:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lus;->b:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "force_landscape"

    .line 9
    .line 10
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "force_landscape_active"

    .line 22
    .line 23
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lus;->a()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lus;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lus;->c:Landroid/view/WindowManager;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lus;->e:Landroid/view/View;

    .line 12
    .line 13
    return-void
.end method
