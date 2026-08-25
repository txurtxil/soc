.class public final synthetic Lx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lx6;->a:I

    iput-object p2, p0, Lx6;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lx6;->a:I

    .line 2
    .line 3
    sget-object v1, Lf60;->a:Lf60;

    .line 4
    .line 5
    iget-object p0, p0, Lx6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->b:La7;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iput-boolean p1, v0, La7;->e:Z

    .line 23
    .line 24
    invoke-virtual {v0}, La7;->b()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lidv/lzn/screenonauto/ScreenCaptureService;->c:Lus;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lus;->b(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-object v1

    .line 35
    :pswitch_0
    check-cast p0, Ldz;

    .line 36
    .line 37
    check-cast p1, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ldz;->T()V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :pswitch_1
    check-cast p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 47
    .line 48
    check-cast p1, Landroid/media/projection/MediaProjection;

    .line 49
    .line 50
    sget v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->z:Landroid/view/Surface;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget v2, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->v:I

    .line 73
    .line 74
    invoke-static {v0, v2}, Lk60;->e(Landroid/content/SharedPreferences;I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->x:I

    .line 79
    .line 80
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->w:I

    .line 88
    .line 89
    invoke-static {v0, v2}, Lk60;->d(Landroid/content/SharedPreferences;I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->y:I

    .line 94
    .line 95
    sget v2, Lb00;->a:I

    .line 96
    .line 97
    iget v2, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->x:I

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 108
    .line 109
    sget-object v3, Lyz;->b:Lyz;

    .line 110
    .line 111
    invoke-static {v2, v0, p0, v3, p1}, Lb00;->d(IIILyz;Landroid/view/Surface;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    return-object v1

    .line 115
    :pswitch_2
    check-cast p0, Lmq;

    .line 116
    .line 117
    check-cast p1, Landroid/media/projection/MediaProjection;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lmq;->n:Z

    .line 124
    .line 125
    return-object v1

    .line 126
    :pswitch_3
    check-cast p0, La7;

    .line 127
    .line 128
    check-cast p1, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, La7;->a()V

    .line 134
    .line 135
    .line 136
    return-object v1

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
