.class public final Lmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk;


# instance fields
.field public final a:Landroidx/car/app/i;

.field public final b:Landroidx/lifecycle/a;

.field public final c:Lc2;

.field public d:Landroidx/car/app/model/TemplateWrapper;

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final l:Landroid/os/Handler;

.field public final m:J

.field public n:Z

.field public final o:Landroid/content/SharedPreferences;

.field public final q:Liq;


# direct methods
.method public constructor <init>(Landroidx/car/app/i;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/lifecycle/a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lsk;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lmq;->b:Landroidx/lifecycle/a;

    .line 13
    .line 14
    new-instance v0, Lc2;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lmq;->c:Lc2;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lmq;->a:Landroidx/car/app/i;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lmq;->f:I

    .line 28
    .line 29
    iput v0, p0, Lmq;->g:I

    .line 30
    .line 31
    new-instance v1, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lmq;->l:Landroid/os/Handler;

    .line 41
    .line 42
    const-wide/16 v1, 0x96

    .line 43
    .line 44
    iput-wide v1, p0, Lmq;->m:J

    .line 45
    .line 46
    new-instance v1, Lko;

    .line 47
    .line 48
    const/16 v2, 0xf

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v1, p0, p1, v2, v3}, Lko;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2}, Llu;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    new-instance v2, Liq;

    .line 65
    .line 66
    invoke-direct {v2, v3, p0}, Liq;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lmq;->q:Liq;

    .line 70
    .line 71
    const-string v2, "MirrorScreen"

    .line 72
    .line 73
    const-string v3, "init: registering SurfaceCallback"

    .line 74
    .line 75
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance v2, Lx6;

    .line 79
    .line 80
    invoke-direct {v2, v0, p0}, Lx6;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sput-object v2, Lb00;->i:Lx6;

    .line 84
    .line 85
    const-class v0, Landroidx/car/app/b;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroidx/car/app/b;

    .line 92
    .line 93
    iget-object v0, p1, Landroidx/car/app/b;->c:Landroidx/car/app/j;

    .line 94
    .line 95
    new-instance v2, Le6;

    .line 96
    .line 97
    invoke-direct {v2, p1, v1}, Le6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance p1, Lbi;

    .line 101
    .line 102
    const-string v1, "setSurfaceListener"

    .line 103
    .line 104
    invoke-direct {p1, v0, v1, v2}, Lbi;-><init>(Landroidx/car/app/j;Ljava/lang/String;Lai;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v1, p1}, Landroidx/car/app/utils/e;->d(Ljava/lang/String;Lix;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lmq;->b:Landroidx/lifecycle/a;

    .line 111
    .line 112
    new-instance v0, Lidv/lzn/screenonauto/car/MirrorScreen$2;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lidv/lzn/screenonauto/car/MirrorScreen$2;-><init>(Lmq;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public static final b(Lmq;)Lq50;
    .locals 4

    .line 1
    sget v0, Lb00;->c:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    sget v1, Lb00;->d:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpg-float v3, v0, v2

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    cmpg-float v2, v1, v2

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :goto_0
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    iget v2, p0, Lmq;->f:I

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v2, v0

    .line 23
    iget v3, p0, Lmq;->g:I

    .line 24
    .line 25
    int-to-float v3, v3

    .line 26
    div-float/2addr v3, v1

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget v3, p0, Lmq;->f:I

    .line 32
    .line 33
    int-to-float v3, v3

    .line 34
    mul-float/2addr v0, v2

    .line 35
    sub-float/2addr v3, v0

    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    .line 37
    .line 38
    div-float/2addr v3, v0

    .line 39
    iget p0, p0, Lmq;->g:I

    .line 40
    .line 41
    int-to-float p0, p0

    .line 42
    mul-float/2addr v1, v2

    .line 43
    sub-float/2addr p0, v1

    .line 44
    div-float/2addr p0, v0

    .line 45
    new-instance v0, Lq50;

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v0, v1, v2, p0}, Lq50;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method


# virtual methods
.method public final c(Llk;)V
    .locals 2

    .line 1
    new-instance v0, Ly5;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, p0, v1, p1}, Ly5;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ln40;->b(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d(ILmt;)Landroidx/car/app/model/Action;
    .locals 4

    .line 1
    iget-object v0, p0, Lmq;->a:Landroidx/car/app/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lq0;

    .line 8
    .line 9
    invoke-direct {v1}, Lq0;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v0, Lc9;->c:Lc9;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lc9;->s(Landroidx/core/graphics/drawable/IconCompat;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroidx/car/app/model/CarIcon;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v0, p1, v2, v3}, Landroidx/car/app/model/CarIcon;-><init>(Landroidx/core/graphics/drawable/IconCompat;Landroidx/car/app/model/CarColor;I)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lc9;->d:Lc9;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lc9;->x(Landroidx/car/app/model/CarIcon;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, v1, Lq0;->b:Landroidx/car/app/model/CarIcon;

    .line 47
    .line 48
    new-instance p1, Lkq;

    .line 49
    .line 50
    invoke-direct {p1, p2, p0}, Lkq;-><init>(Lmt;Lmq;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Landroidx/car/app/model/OnClickDelegateImpl;->create(Lgs;)Lfs;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iput-object p0, v1, Lq0;->c:Lfs;

    .line 58
    .line 59
    invoke-virtual {v1}, Lq0;->a()Landroidx/car/app/model/Action;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmq;->b:Landroidx/lifecycle/a;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/lifecycle/a;->c:Lmk;

    .line 4
    .line 5
    sget-object v1, Lmk;->d:Lmk;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lmq;->a:Landroidx/car/app/i;

    .line 14
    .line 15
    const-class v0, Landroidx/car/app/b;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/car/app/b;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/car/app/b;->c:Landroidx/car/app/j;

    .line 24
    .line 25
    new-instance v0, Lc2;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lbi;

    .line 31
    .line 32
    const-string v2, "invalidate"

    .line 33
    .line 34
    invoke-direct {v1, p0, v2, v0}, Lbi;-><init>(Landroidx/car/app/j;Ljava/lang/String;Lai;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v1}, Landroidx/car/app/utils/e;->d(Ljava/lang/String;Lix;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final f()Landroidx/lifecycle/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lmq;->b:Landroidx/lifecycle/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()Landroidx/car/app/navigation/model/NavigationTemplate;
    .locals 14

    .line 1
    iget-object v0, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lgt;->b(Landroid/content/SharedPreferences;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    iget-object v5, p0, Lmq;->a:Landroidx/car/app/i;

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    sget-object v6, Lz5;->a:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v5, v3}, Lz5;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v4, Lq0;

    .line 51
    .line 52
    invoke-direct {v4}, Lq0;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v5}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iput-object v5, v4, Lq0;->a:Landroidx/car/app/model/CarText;

    .line 60
    .line 61
    new-instance v5, Lkq;

    .line 62
    .line 63
    invoke-direct {v5, p0, v3}, Lkq;-><init>(Lmq;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v5}, Landroidx/car/app/model/OnClickDelegateImpl;->create(Lgs;)Lfs;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iput-object v3, v4, Lq0;->c:Lfs;

    .line 71
    .line 72
    invoke-virtual {v4}, Lq0;->a()Landroidx/car/app/model/Action;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    :goto_1
    if-eqz v4, :cond_0

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance v1, Lj1;

    .line 83
    .line 84
    invoke-direct {v1}, Lj1;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/4 v6, 0x0

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    sget-object v2, Landroidx/car/app/model/Action;->APP_ICON:Landroidx/car/app/model/Action;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lj1;->a(Landroidx/car/app/model/Action;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    move v7, v6

    .line 105
    :goto_2
    if-ge v7, v3, :cond_4

    .line 106
    .line 107
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    check-cast v8, Landroidx/car/app/model/Action;

    .line 114
    .line 115
    invoke-virtual {v1, v8}, Lj1;->a(Landroidx/car/app/model/Action;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    :goto_3
    new-instance v2, Luq;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v3, v1, Lj1;->a:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const-string v7, "Action strip must contain at least one action"

    .line 131
    .line 132
    if-nez v3, :cond_10

    .line 133
    .line 134
    new-instance v3, Landroidx/car/app/model/ActionStrip;

    .line 135
    .line 136
    invoke-direct {v3, v1}, Landroidx/car/app/model/ActionStrip;-><init>(Lj1;)V

    .line 137
    .line 138
    .line 139
    sget-object v1, Ll1;->m:Ll1;

    .line 140
    .line 141
    invoke-virtual {v3}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v1, v8}, Ll1;->a(Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    iput-object v3, v2, Luq;->a:Landroidx/car/app/model/ActionStrip;

    .line 149
    .line 150
    new-instance v1, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v3, "map_action_force_landscape"

    .line 156
    .line 157
    const/4 v8, 0x1

    .line 158
    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    sget-object v9, Lc9;->d:Lc9;

    .line 163
    .line 164
    sget-object v10, Lc9;->c:Lc9;

    .line 165
    .line 166
    if-eqz v3, :cond_6

    .line 167
    .line 168
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3}, Llu;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    const-string v12, "force_landscape_active"

    .line 177
    .line 178
    invoke-interface {v11, v12, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-eqz v11, :cond_5

    .line 183
    .line 184
    const v11, 0x7f080096

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_5
    const v11, 0x7f080095

    .line 189
    .line 190
    .line 191
    :goto_4
    new-instance v12, Lq0;

    .line 192
    .line 193
    invoke-direct {v12}, Lq0;-><init>()V

    .line 194
    .line 195
    .line 196
    sget-object v13, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 197
    .line 198
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v13, v3, v11}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v10, v3}, Lc9;->s(Landroidx/core/graphics/drawable/IconCompat;)V

    .line 211
    .line 212
    .line 213
    new-instance v11, Landroidx/car/app/model/CarIcon;

    .line 214
    .line 215
    invoke-direct {v11, v3, v4, v8}, Landroidx/car/app/model/CarIcon;-><init>(Landroidx/core/graphics/drawable/IconCompat;Landroidx/car/app/model/CarColor;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9, v11}, Lc9;->x(Landroidx/car/app/model/CarIcon;)V

    .line 219
    .line 220
    .line 221
    iput-object v11, v12, Lq0;->b:Landroidx/car/app/model/CarIcon;

    .line 222
    .line 223
    new-instance v3, Ljq;

    .line 224
    .line 225
    invoke-direct {v3, p0, v6}, Ljq;-><init>(Lmq;I)V

    .line 226
    .line 227
    .line 228
    invoke-static {v3}, Landroidx/car/app/model/OnClickDelegateImpl;->create(Lgs;)Lfs;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    iput-object v3, v12, Lq0;->c:Lfs;

    .line 233
    .line 234
    invoke-virtual {v12}, Lq0;->a()Landroidx/car/app/model/Action;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :cond_6
    const-string v3, "map_action_auto_dim"

    .line 242
    .line 243
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_8

    .line 248
    .line 249
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    const-string v5, "auto_dim"

    .line 254
    .line 255
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_7

    .line 260
    .line 261
    const v5, 0x7f08008b

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_7
    const v5, 0x7f08008a

    .line 266
    .line 267
    .line 268
    :goto_5
    new-instance v11, Lq0;

    .line 269
    .line 270
    invoke-direct {v11}, Lq0;-><init>()V

    .line 271
    .line 272
    .line 273
    sget-object v12, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v12, v3, v5}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v10, v3}, Lc9;->s(Landroidx/core/graphics/drawable/IconCompat;)V

    .line 291
    .line 292
    .line 293
    new-instance v5, Landroidx/car/app/model/CarIcon;

    .line 294
    .line 295
    invoke-direct {v5, v3, v4, v8}, Landroidx/car/app/model/CarIcon;-><init>(Landroidx/core/graphics/drawable/IconCompat;Landroidx/car/app/model/CarColor;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9, v5}, Lc9;->x(Landroidx/car/app/model/CarIcon;)V

    .line 299
    .line 300
    .line 301
    iput-object v5, v11, Lq0;->b:Landroidx/car/app/model/CarIcon;

    .line 302
    .line 303
    new-instance v3, Ljq;

    .line 304
    .line 305
    invoke-direct {v3, p0, v8}, Ljq;-><init>(Lmq;I)V

    .line 306
    .line 307
    .line 308
    invoke-static {v3}, Landroidx/car/app/model/OnClickDelegateImpl;->create(Lgs;)Lfs;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    iput-object v3, v11, Lq0;->c:Lfs;

    .line 313
    .line 314
    invoke-virtual {v11}, Lq0;->a()Landroidx/car/app/model/Action;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    :cond_8
    const-string v3, "map_action_back"

    .line 322
    .line 323
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_9

    .line 328
    .line 329
    const v3, 0x7f08008c

    .line 330
    .line 331
    .line 332
    sget-object v5, Lmt;->b:Lmt;

    .line 333
    .line 334
    invoke-virtual {p0, v3, v5}, Lmq;->d(ILmt;)Landroidx/car/app/model/Action;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    :cond_9
    const-string v3, "map_action_home"

    .line 342
    .line 343
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_a

    .line 348
    .line 349
    const v3, 0x7f080097

    .line 350
    .line 351
    .line 352
    sget-object v5, Lmt;->c:Lmt;

    .line 353
    .line 354
    invoke-virtual {p0, v3, v5}, Lmq;->d(ILmt;)Landroidx/car/app/model/Action;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    :cond_a
    const-string v3, "map_action_recents"

    .line 362
    .line 363
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_b

    .line 368
    .line 369
    const v0, 0x7f0800a5

    .line 370
    .line 371
    .line 372
    sget-object v3, Lmt;->d:Lmt;

    .line 373
    .line 374
    invoke-virtual {p0, v0, v3}, Lmq;->d(ILmt;)Landroidx/car/app/model/Action;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    if-nez p0, :cond_e

    .line 386
    .line 387
    new-instance p0, Lj1;

    .line 388
    .line 389
    invoke-direct {p0}, Lj1;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-static {v1}, Lv9;->C(Ljava/lang/Iterable;)Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_c

    .line 405
    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    check-cast v1, Landroidx/car/app/model/Action;

    .line 411
    .line 412
    invoke-virtual {p0, v1}, Lj1;->a(Landroidx/car/app/model/Action;)V

    .line 413
    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_c
    iget-object v0, p0, Lj1;->a:Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-nez v0, :cond_d

    .line 423
    .line 424
    new-instance v0, Landroidx/car/app/model/ActionStrip;

    .line 425
    .line 426
    invoke-direct {v0, p0}, Landroidx/car/app/model/ActionStrip;-><init>(Lj1;)V

    .line 427
    .line 428
    .line 429
    sget-object p0, Ll1;->n:Ll1;

    .line 430
    .line 431
    invoke-virtual {v0}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {p0, v1}, Ll1;->a(Ljava/util/List;)V

    .line 436
    .line 437
    .line 438
    iput-object v0, v2, Luq;->b:Landroidx/car/app/model/ActionStrip;

    .line 439
    .line 440
    goto :goto_7

    .line 441
    :cond_d
    invoke-static {v7}, Lc2;->g(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    return-object v4

    .line 445
    :cond_e
    :goto_7
    iget-object p0, v2, Luq;->a:Landroidx/car/app/model/ActionStrip;

    .line 446
    .line 447
    if-eqz p0, :cond_f

    .line 448
    .line 449
    new-instance p0, Landroidx/car/app/navigation/model/NavigationTemplate;

    .line 450
    .line 451
    invoke-direct {p0, v2}, Landroidx/car/app/navigation/model/NavigationTemplate;-><init>(Luq;)V

    .line 452
    .line 453
    .line 454
    return-object p0

    .line 455
    :cond_f
    const-string p0, "Action strip for this template must be set"

    .line 456
    .line 457
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    return-object v4

    .line 461
    :cond_10
    invoke-static {v7}, Lc2;->g(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    return-object v4
.end method

.method public final h()I
    .locals 3

    .line 1
    const-string v0, "nav_fixed_size"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget p0, p0, Lmq;->i:I

    .line 13
    .line 14
    return p0

    .line 15
    :cond_0
    iget p0, p0, Lmq;->j:I

    .line 16
    .line 17
    return p0
.end method
