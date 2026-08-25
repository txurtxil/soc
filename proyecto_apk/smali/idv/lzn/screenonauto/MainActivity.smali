.class public final Lidv/lzn/screenonauto/MainActivity;
.super Lz2;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Lu1;

.field public final D:Lu1;

.field public z:Landroid/media/projection/MediaProjectionManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt1;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Lt1;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ldm;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Ldm;-><init>(Lidv/lzn/screenonauto/MainActivity;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Landroidx/activity/a;->j(Ls1;Lem;)Lu1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lidv/lzn/screenonauto/MainActivity;->C:Lu1;

    .line 21
    .line 22
    new-instance v0, Lt1;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, v1}, Lt1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Ldm;

    .line 29
    .line 30
    invoke-direct {v2, p0, v1}, Ldm;-><init>(Lidv/lzn/screenonauto/MainActivity;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2, v0}, Landroidx/activity/a;->j(Ls1;Lem;)Lu1;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lidv/lzn/screenonauto/MainActivity;->D:Lu1;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lj3;->l()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lz2;->attachBaseContext(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lz2;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lidv/lzn/screenonauto/MainActivity;->x()V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0c001e

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lz2;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0901d0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lz2;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lz2;->w(Landroidx/appcompat/widget/Toolbar;)V

    .line 23
    .line 24
    .line 25
    const-class v0, Landroid/media/projection/MediaProjectionManager;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    .line 35
    .line 36
    iput-object v0, p0, Lidv/lzn/screenonauto/MainActivity;->z:Landroid/media/projection/MediaProjectionManager;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const-string v1, "auto_start_consumed"

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    :cond_0
    iput-boolean v0, p0, Lidv/lzn/screenonauto/MainActivity;->A:Z

    .line 48
    .line 49
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lz2;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lidv/lzn/screenonauto/MainActivity;->A:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lidv/lzn/screenonauto/MainActivity;->x()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lz2;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    sput-object p0, Lb00;->g:Lcm;

    .line 6
    .line 7
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lz2;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lidv/lzn/screenonauto/MainActivity;->B:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iput-boolean v1, p0, Lidv/lzn/screenonauto/MainActivity;->B:Z

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1a

    .line 14
    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    .line 17
    const-class v0, Landroid/app/KeyguardManager;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/KeyguardManager;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {v0, p0}, Ld0;->f(Landroid/app/KeyguardManager;Lidv/lzn/screenonauto/MainActivity;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/high16 v2, 0x400000

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lidv/lzn/screenonauto/MainActivity;->y()Lidv/lzn/screenonauto/SettingsFragment;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    sget-boolean v3, Lb00;->f:Z

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    sget-object v3, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v3, v1

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    :goto_1
    move v3, v2

    .line 59
    :goto_2
    invoke-virtual {v0, v3}, Lidv/lzn/screenonauto/SettingsFragment;->S(Z)V

    .line 60
    .line 61
    .line 62
    :cond_4
    new-instance v3, Lcm;

    .line 63
    .line 64
    invoke-direct {v3, v0, v1}, Lcm;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 65
    .line 66
    .line 67
    sput-object v3, Lb00;->g:Lcm;

    .line 68
    .line 69
    iget-boolean v0, p0, Lidv/lzn/screenonauto/MainActivity;->A:Z

    .line 70
    .line 71
    if-nez v0, :cond_8

    .line 72
    .line 73
    sget-boolean v0, Lb00;->f:Z

    .line 74
    .line 75
    if-nez v0, :cond_8

    .line 76
    .line 77
    sget-object v0, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v3, "extra_auto_start"

    .line 87
    .line 88
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    iput-boolean v2, p0, Lidv/lzn/screenonauto/MainActivity;->A:Z

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v2, "auto_start_mirror"

    .line 112
    .line 113
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/16 v1, 0x21

    .line 122
    .line 123
    if-lt v0, v1, :cond_6

    .line 124
    .line 125
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 126
    .line 127
    invoke-static {p0, v0}, Lgn;->g(Landroid/content/Context;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    iget-object p0, p0, Lidv/lzn/screenonauto/MainActivity;->D:Lu1;

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lu1;->G(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_6
    iget-object v0, p0, Lidv/lzn/screenonauto/MainActivity;->z:Landroid/media/projection/MediaProjectionManager;

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object p0, p0, Lidv/lzn/screenonauto/MainActivity;->C:Lu1;

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Lu1;->G(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_7
    const-string p0, "projectionManager"

    .line 154
    .line 155
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/4 p0, 0x0

    .line 159
    throw p0

    .line 160
    :cond_8
    :goto_3
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "auto_start_consumed"

    .line 8
    .line 9
    iget-boolean p0, p0, Lidv/lzn/screenonauto/MainActivity;->A:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    const-string v0, "uimode"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/app/UiModeManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    :goto_0
    invoke-virtual {v1, v2}, Lj3;->n(I)V

    .line 26
    .line 27
    .line 28
    invoke-super {p0}, Lz2;->onStart()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "extra_auto_start"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x1b

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Lnt;->a(Lidv/lzn/screenonauto/MainActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lnt;->b(Lidv/lzn/screenonauto/MainActivity;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/high16 v1, 0x280000

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lidv/lzn/screenonauto/MainActivity;->B:Z

    .line 39
    .line 40
    return-void
.end method

.method public final y()Lidv/lzn/screenonauto/SettingsFragment;
    .locals 1

    .line 1
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lwf;

    .line 6
    .line 7
    iget-object p0, p0, Lwf;->m:Lig;

    .line 8
    .line 9
    const v0, 0x7f090185

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->y(I)Lvf;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    instance-of v0, p0, Lidv/lzn/screenonauto/SettingsFragment;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast p0, Lidv/lzn/screenonauto/SettingsFragment;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method
