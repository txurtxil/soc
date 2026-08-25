.class public final Lidv/lzn/screenonauto/MirrorAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field public static s:Lidv/lzn/screenonauto/MirrorAccessibilityService;


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

.field public c:F

.field public d:F

.field public e:Z

.field public f:F

.field public g:F

.field public h:Z

.field public i:F

.field public j:F

.field public final k:Laq;

.field public final l:Lxp;

.field public m:Z

.field public n:F

.field public o:F

.field public q:F

.field public final r:Lxp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Laq;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Laq;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->k:Laq;

    .line 21
    .line 22
    new-instance v0, Lxp;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-direct {v0, p0, v1}, Lxp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->l:Lxp;

    .line 29
    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    iput v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->n:F

    .line 33
    .line 34
    new-instance v0, Lxp;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-direct {v0, p0, v1}, Lxp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->r:Lxp;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 12

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
    iget-object v2, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    cmpg-float v5, v0, v4

    .line 14
    .line 15
    if-nez v5, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    cmpg-float v4, v1, v4

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iget v5, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c:F

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    div-float v5, v0, v4

    .line 31
    .line 32
    :goto_0
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget v4, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->d:F

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    div-float v4, v1, v4

    .line 38
    .line 39
    :goto_1
    const v6, 0x3e4ccccd    # 0.2f

    .line 40
    .line 41
    .line 42
    mul-float/2addr p1, v6

    .line 43
    add-float/2addr p1, v5

    .line 44
    const/high16 v7, 0x3f800000    # 1.0f

    .line 45
    .line 46
    sub-float/2addr v0, v7

    .line 47
    invoke-static {p1, v7, v0}, Lgn;->i(FFF)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    mul-float/2addr p2, v6

    .line 52
    add-float/2addr p2, v4

    .line 53
    sub-float/2addr v1, v7

    .line 54
    invoke-static {p2, v7, v1}, Lgn;->i(FFF)F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    cmpg-float v0, v5, p1

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    cmpg-float v0, v4, p2

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    :goto_2
    return-void

    .line 67
    :cond_4
    new-instance v7, Landroid/graphics/Path;

    .line 68
    .line 69
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v10, 0xc8

    .line 79
    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    const/16 p2, 0x1a

    .line 85
    .line 86
    if-lt p1, p2, :cond_6

    .line 87
    .line 88
    :try_start_0
    invoke-static {v2, v7}, Ld0;->b(Landroid/accessibilityservice/GestureDescription$StrokeDescription;Landroid/graphics/Path;)Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 89
    .line 90
    .line 91
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    goto :goto_3

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    move-object p1, v0

    .line 95
    new-instance p2, Lcy;

    .line 96
    .line 97
    invoke-direct {p2, p1}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    move-object p1, p2

    .line 101
    :goto_3
    invoke-static {p1}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-nez p2, :cond_5

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    new-instance v6, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 109
    .line 110
    const-wide/16 v8, 0x0

    .line 111
    .line 112
    invoke-direct/range {v6 .. v11}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 113
    .line 114
    .line 115
    move-object p1, v6

    .line 116
    :goto_4
    check-cast p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_6
    new-instance v6, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 120
    .line 121
    const-wide/16 v8, 0x0

    .line 122
    .line 123
    invoke-direct/range {v6 .. v11}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 124
    .line 125
    .line 126
    move-object p1, v6

    .line 127
    :goto_5
    new-instance p2, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 128
    .line 129
    invoke-direct {p2}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p1}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    sput-wide v0, Ls8;->i:J

    .line 148
    .line 149
    invoke-virtual {p0, p1, v3, v3}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final b(FF)V
    .locals 6

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
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    cmpg-float v3, v1, v2

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_1
    iget-object v3, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 21
    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    const/high16 v4, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float v5, v0, v4

    .line 27
    .line 28
    iput v5, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c:F

    .line 29
    .line 30
    div-float v4, v1, v4

    .line 31
    .line 32
    iput v4, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->d:F

    .line 33
    .line 34
    :cond_2
    iget v4, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c:F

    .line 35
    .line 36
    sub-float/2addr v4, p1

    .line 37
    invoke-static {v4, v2, v0}, Lgn;->i(FFF)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->d:F

    .line 42
    .line 43
    sub-float/2addr v0, p2

    .line 44
    invoke-static {v0, v2, v1}, Lgn;->i(FFF)F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c:F

    .line 49
    .line 50
    cmpg-float v0, v0, p1

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    iget v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->d:F

    .line 55
    .line 56
    cmpg-float v0, v0, p2

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    new-instance v0, Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c:F

    .line 67
    .line 68
    iget v2, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->d:F

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    .line 75
    .line 76
    iput p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c:F

    .line 77
    .line 78
    iput p2, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->d:F

    .line 79
    .line 80
    if-nez v3, :cond_4

    .line 81
    .line 82
    :try_start_0
    new-instance p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 83
    .line 84
    invoke-static {v0}, Ld0;->c(Landroid/graphics/Path;)Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-static {v3, v0}, Ld0;->i(Landroid/accessibilityservice/GestureDescription$StrokeDescription;Landroid/graphics/Path;)Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    goto :goto_1

    .line 96
    :goto_0
    new-instance p2, Lcy;

    .line 97
    .line 98
    invoke-direct {p2, p1}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    move-object p1, p2

    .line 102
    :goto_1
    invoke-static {p1}, Ldy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const/4 v1, 0x0

    .line 107
    if-nez p2, :cond_5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    iput-object v1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 111
    .line 112
    invoke-static {v0}, Ld0;->c(Landroid/graphics/Path;)Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_2
    check-cast p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 117
    .line 118
    iput-object p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 119
    .line 120
    const/4 p2, 0x1

    .line 121
    iput-boolean p2, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->e:Z

    .line 122
    .line 123
    new-instance p2, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 124
    .line 125
    invoke-direct {p2}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->k:Laq;

    .line 140
    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    sput-wide v2, Ls8;->i:J

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2, v1}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_6

    .line 152
    .line 153
    iput-object v1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 154
    .line 155
    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->e:Z

    .line 157
    .line 158
    :cond_6
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->b:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 8
    .line 9
    new-instance v2, Landroid/graphics/Path;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c:F

    .line 15
    .line 16
    iget v4, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->d:F

    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    .line 20
    .line 21
    iget v3, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c:F

    .line 22
    .line 23
    const/high16 v4, 0x3f800000    # 1.0f

    .line 24
    .line 25
    add-float/2addr v3, v4

    .line 26
    iget v4, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->d:F

    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-static {v0, v2}, Ld0;->j(Landroid/accessibilityservice/GestureDescription$StrokeDescription;Landroid/graphics/Path;)Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x1

    .line 36
    iput-boolean v2, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->e:Z

    .line 37
    .line 38
    new-instance v2, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->k:Laq;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    sput-wide v3, Ls8;->i:J

    .line 61
    .line 62
    invoke-virtual {p0, v0, v2, v1}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public final onInterrupt()V
    .locals 0

    return-void
.end method

.method public final onServiceConnected()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 5
    .line 6
    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method
