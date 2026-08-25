.class public final La00;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# virtual methods
.method public final onStop()V
    .locals 1

    .line 1
    invoke-static {}, Lb00;->c()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    sput-object p0, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 6
    .line 7
    sget-object p0, Lb00;->g:Lcm;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcm;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
