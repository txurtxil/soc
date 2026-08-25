.class public final Landroidx/car/app/i;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/activity/b;

.field public final b:Landroidx/car/app/j;

.field public final c:Lcf;

.field public d:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a;Landroidx/car/app/j;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lcf;

    .line 6
    .line 7
    invoke-direct {v1}, Lcf;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Landroidx/car/app/i;->c:Lcf;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, p0, Landroidx/car/app/i;->d:I

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/car/app/i;->b:Landroidx/car/app/j;

    .line 16
    .line 17
    new-instance v3, Lx8;

    .line 18
    .line 19
    invoke-direct {v3, p0, p2, p1, v2}, Lx8;-><init>(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;I)V

    .line 20
    .line 21
    .line 22
    const-class v4, Landroidx/car/app/b;

    .line 23
    .line 24
    const-string v5, "app"

    .line 25
    .line 26
    invoke-virtual {v1, v4, v5, v3}, Lcf;->a(Ljava/lang/Class;Ljava/lang/String;Lgm;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lx8;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v3, p0, p2, p1, v4}, Lx8;-><init>(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;I)V

    .line 33
    .line 34
    .line 35
    const-class v5, Landroidx/car/app/navigation/b;

    .line 36
    .line 37
    const-string v6, "navigation"

    .line 38
    .line 39
    invoke-virtual {v1, v5, v6, v3}, Lcf;->a(Ljava/lang/Class;Ljava/lang/String;Lgm;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Ly8;

    .line 43
    .line 44
    invoke-direct {v3, p0, p1, v2}, Ly8;-><init>(Landroidx/car/app/i;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    const-class v2, Landroidx/car/app/k;

    .line 48
    .line 49
    const-string v5, "screen"

    .line 50
    .line 51
    invoke-virtual {v1, v2, v5, v3}, Lcf;->a(Ljava/lang/Class;Ljava/lang/String;Lgm;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lz8;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    const-class v3, Lpa;

    .line 60
    .line 61
    const-string v5, "constraints"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v5, v2}, Lcf;->a(Ljava/lang/Class;Ljava/lang/String;Lgm;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Ly8;

    .line 67
    .line 68
    invoke-direct {v2, p0, p2, v4}, Ly8;-><init>(Landroidx/car/app/i;Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    const-class v3, Lb9;

    .line 72
    .line 73
    const-string v4, "hardware"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v4, v2}, Lcf;->a(Ljava/lang/Class;Ljava/lang/String;Lgm;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, La9;

    .line 79
    .line 80
    invoke-direct {v2, p0}, La9;-><init>(Landroidx/car/app/i;)V

    .line 81
    .line 82
    .line 83
    const-class v3, Ley;

    .line 84
    .line 85
    invoke-virtual {v1, v3, v0, v2}, Lcf;->a(Ljava/lang/Class;Ljava/lang/String;Lgm;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lx8;

    .line 89
    .line 90
    const/4 v2, 0x2

    .line 91
    invoke-direct {v0, p0, p2, p1, v2}, Lx8;-><init>(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;I)V

    .line 92
    .line 93
    .line 94
    const-class v2, Landroidx/car/app/suggestion/a;

    .line 95
    .line 96
    const-string v3, "suggestion"

    .line 97
    .line 98
    invoke-virtual {v1, v2, v3, v0}, Lcf;->a(Ljava/lang/Class;Ljava/lang/String;Lgm;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lx8;

    .line 102
    .line 103
    const/4 v2, 0x3

    .line 104
    invoke-direct {v0, p0, p2, p1, v2}, Lx8;-><init>(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;I)V

    .line 105
    .line 106
    .line 107
    const-class v3, Landroidx/car/app/media/a;

    .line 108
    .line 109
    const-string v4, "media_playback"

    .line 110
    .line 111
    invoke-virtual {v1, v3, v4, v0}, Lcf;->a(Ljava/lang/Class;Ljava/lang/String;Lgm;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Landroidx/activity/b;

    .line 115
    .line 116
    new-instance v1, Lm1;

    .line 117
    .line 118
    invoke-direct {v1, v2, p0}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Landroidx/car/app/i;->a:Landroidx/activity/b;

    .line 125
    .line 126
    new-instance p0, Landroidx/car/app/CarContext$2;

    .line 127
    .line 128
    invoke-direct {p0, p2}, Landroidx/car/app/CarContext$2;-><init>(Landroidx/car/app/j;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 8

    .line 1
    invoke-static {}, Ln40;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "display"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 21
    .line 22
    iget v3, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 23
    .line 24
    iget v4, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 25
    .line 26
    iget v5, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const/16 v7, 0x8

    .line 30
    .line 31
    const-string v2, "CarAppService"

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/car/app/i;->c(Landroid/content/res/Configuration;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final b(Ljava/lang/Class;)Lfm;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/car/app/i;->c:Lcf;

    .line 2
    .line 3
    iget-object v0, p0, Lcf;->b:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v1, p0, Lcf;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lfm;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    return-object v2

    .line 28
    :cond_0
    iget-object p0, p0, Lcf;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lgm;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    :try_start_0
    invoke-interface {p0}, Lgm;->a()Lfm;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "The class \'"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, "\' does not correspond to a car service"

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_2
    throw v2
.end method

.method public final c(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-static {}, Ln40;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    const-string v1, "CarApp"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Car configuration changed, configuration: "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", displayMetrics: "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
