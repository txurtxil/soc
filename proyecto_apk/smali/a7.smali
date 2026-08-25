.class public final La7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lidv/lzn/screenonauto/ScreenCaptureService;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/view/WindowManager;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Landroid/view/View;

.field public final j:Landroid/view/WindowManager$LayoutParams;

.field public final k:Lm1;

.field public final l:Lx6;

.field public final m:Ly6;


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
    iput-object p1, p0, La7;->a:Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 8
    .line 9
    iput-object p2, p0, La7;->b:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    new-instance p2, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, La7;->c:Landroid/os/Handler;

    .line 21
    .line 22
    const-class p2, Landroid/view/WindowManager;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/WindowManager;

    .line 29
    .line 30
    iput-object p1, p0, La7;->d:Landroid/view/WindowManager;

    .line 31
    .line 32
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    const v4, 0x40028

    .line 35
    .line 36
    .line 37
    const/4 v5, -0x2

    .line 38
    const/4 v1, 0x1

    .line 39
    const/4 v2, 0x1

    .line 40
    const/16 v3, 0x7f6

    .line 41
    .line 42
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 43
    .line 44
    .line 45
    const p1, 0x800033

    .line 46
    .line 47
    .line 48
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 49
    .line 50
    const/high16 p1, -0x40800000    # -1.0f

    .line 51
    .line 52
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 53
    .line 54
    iput-object v0, p0, La7;->j:Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    new-instance p1, Lm1;

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    invoke-direct {p1, p2, p0}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, La7;->k:Lm1;

    .line 63
    .line 64
    new-instance p1, Lx6;

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    invoke-direct {p1, p2, p0}, Lx6;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, La7;->l:Lx6;

    .line 71
    .line 72
    new-instance v0, Ly6;

    .line 73
    .line 74
    invoke-direct {v0, p2, p0}, Ly6;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, La7;->m:Ly6;

    .line 78
    .line 79
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->addOnStateChangedListener(Lch;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->addOnBeforeDisconnectListener(Lrg;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, La7;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, La7;->g:Z

    .line 6
    .line 7
    iget-object v1, p0, La7;->b:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    const-string v2, "root_screen_off"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 19
    .line 20
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getDisplayPowerModeSupported()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    :cond_0
    if-eq v0, v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, La7;->c()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, La7;->b()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, La7;->c:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, La7;->k:Lm1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, La7;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, La7;->j:Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    iget-object v4, p0, La7;->d:Landroid/view/WindowManager;

    .line 15
    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    iget-object v2, p0, La7;->a:Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 19
    .line 20
    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    iget-object v5, p0, La7;->i:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v5, Landroid/view/View;

    .line 32
    .line 33
    invoke-direct {v5, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lz6;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-direct {v2, v6, p0}, Lz6;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v4, v5, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    iput-object v5, p0, La7;->i:Landroid/view/View;

    .line 49
    .line 50
    :cond_1
    :goto_0
    iget-boolean v2, p0, La7;->f:Z

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    const-string v2, "auto_dim_delay"

    .line 55
    .line 56
    const-string v3, "30"

    .line 57
    .line 58
    iget-object p0, p0, La7;->b:Landroid/content/SharedPreferences;

    .line 59
    .line 60
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-static {p0}, Li30;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const-wide/16 v2, 0x1e

    .line 78
    .line 79
    :goto_1
    const-wide/16 v4, 0x3e8

    .line 80
    .line 81
    mul-long/2addr v2, v4

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void

    .line 86
    :cond_4
    iget-boolean v0, p0, La7;->f:Z

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0}, La7;->c()V

    .line 91
    .line 92
    .line 93
    :cond_5
    iget-object v0, p0, La7;->i:Landroid/view/View;

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    :try_start_0
    invoke-interface {v4, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    :catchall_0
    :cond_6
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, La7;->i:Landroid/view/View;

    .line 102
    .line 103
    const/high16 p0, -0x40800000    # -1.0f

    .line 104
    .line 105
    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 106
    .line 107
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, La7;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, La7;->g:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->setDisplayPowerMode(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    iput-boolean v1, p0, La7;->g:Z

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p0, La7;->j:Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    const/high16 v2, -0x40800000    # -1.0f

    .line 27
    .line 28
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 29
    .line 30
    iget-object v2, p0, La7;->i:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    :try_start_0
    iget-object v3, p0, La7;->d:Landroid/view/WindowManager;

    .line 35
    .line 36
    invoke-interface {v3, v2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :catchall_0
    :cond_3
    :goto_1
    iput-boolean v1, p0, La7;->f:Z

    .line 40
    .line 41
    return-void
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, La7;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, La7;->b:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const-string v2, "auto_dim"

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, La7;->a:Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 17
    .line 18
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    return v1
.end method
