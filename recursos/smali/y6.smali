.class public final synthetic Ly6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrg;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ly6;->a:I

    iput-object p2, p0, Ly6;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ly6;->a:I

    .line 2
    .line 3
    sget-object v1, Lf60;->a:Lf60;

    .line 4
    .line 5
    iget-object p0, p0, Ly6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 11
    .line 12
    sget v0, Lidv/lzn/screenonauto/ScreenCaptureService;->g:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lidv/lzn/screenonauto/ScreenCaptureService;->a()V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_0
    check-cast p0, Ldz;

    .line 19
    .line 20
    invoke-virtual {p0}, Ldz;->Q()V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_1
    check-cast p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 25
    .line 26
    sget v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Llu;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_2
    check-cast p0, Landroidx/activity/a;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/activity/a;->reportFullyDrawn()V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :pswitch_3
    check-cast p0, La7;

    .line 45
    .line 46
    iget-boolean v0, p0, La7;->g:Z

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, La7;->c()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-object v1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
