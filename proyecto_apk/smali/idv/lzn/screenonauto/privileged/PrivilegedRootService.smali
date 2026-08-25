.class public final Lidv/lzn/screenonauto/privileged/PrivilegedRootService;
.super Ljy;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;

    .line 5
    .line 6
    invoke-direct {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
