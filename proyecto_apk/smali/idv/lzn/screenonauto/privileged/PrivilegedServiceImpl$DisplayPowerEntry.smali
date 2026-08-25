.class final Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPowerEntry"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;->method:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    iput-object p2, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;->token:Landroid/os/IBinder;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;->token:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method
