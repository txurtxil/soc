.class public final synthetic Lxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrg;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxu;->a:I

    iput-object p1, p0, Lxu;->b:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lxu;->a:I

    iget-object p0, p0, Lxu;->b:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->h(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->g(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$InputInjector;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->i(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
