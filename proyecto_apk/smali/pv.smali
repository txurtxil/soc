.class public final Lpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;


# direct methods
.method public constructor <init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpv;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpv;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 5
    .line 6
    iput p3, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->v:I

    .line 7
    .line 8
    iput p4, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->w:I

    .line 9
    .line 10
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->z:Landroid/view/Surface;

    .line 15
    .line 16
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lk60;->m(Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v0, "x"

    .line 28
    .line 29
    const-string v1, " gap="

    .line 30
    .line 31
    const-string v2, "surfaceChanged: "

    .line 32
    .line 33
    invoke-static {v2, p3, v0, p4, v1}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string v0, "ProjectionCarActivity"

    .line 45
    .line 46
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance p2, Lx6;

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-direct {p2, v1, p0}, Lx6;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sput-object p2, Lb00;->h:Lx6;

    .line 63
    .line 64
    sget-object p2, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 65
    .line 66
    if-nez p2, :cond_0

    .line 67
    .line 68
    const-string p1, "No MediaProjection yet \u2014 bringing app to foreground (auto-start gated by pref)"

    .line 69
    .line 70
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Landroid/content/Intent;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-class p3, Lidv/lzn/screenonauto/MainActivity;

    .line 84
    .line 85
    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    const/high16 p0, 0x30000000

    .line 89
    .line 90
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const-string p0, "extra_auto_start"

    .line 94
    .line 95
    const/4 p3, 0x1

    .line 96
    invoke-virtual {p2, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {p2, p3}, Lk60;->e(Landroid/content/SharedPreferences;I)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    iput p2, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->x:I

    .line 115
    .line 116
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {p2, p4}, Lk60;->d(Landroid/content/SharedPreferences;I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    iput p2, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->y:I

    .line 128
    .line 129
    iget p3, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->x:I

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    iget p4, p4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 140
    .line 141
    sget-object v0, Lyz;->b:Lyz;

    .line 142
    .line 143
    invoke-static {p3, p2, p4, v0, p1}, Lb00;->d(IIILyz;Landroid/view/Surface;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {p0}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const/4 p2, 0x0

    .line 158
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-string p2, "auto_launch_package"

    .line 163
    .line 164
    const/4 p3, 0x0

    .line 165
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_2

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-nez p2, :cond_1

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_1
    invoke-static {p0, p1}, Lz5;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    :goto_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p1, "ProjectionCarActivity"

    .line 5
    .line 6
    const-string v0, "surfaceDestroyed"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    sget p1, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iget-object p0, p0, Lpv;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 15
    .line 16
    iput-boolean p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k:Z

    .line 17
    .line 18
    sget-object p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 19
    .line 20
    invoke-virtual {p1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->cancelForwardedStream()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->z:Landroid/view/Surface;

    .line 25
    .line 26
    sget p0, Lb00;->a:I

    .line 27
    .line 28
    sget-object p0, Lb00;->k:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance p1, Lm1;

    .line 31
    .line 32
    const/16 v0, 0xd

    .line 33
    .line 34
    sget-object v1, Lyz;->b:Lyz;

    .line 35
    .line 36
    invoke-direct {p1, v0, v1}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method
