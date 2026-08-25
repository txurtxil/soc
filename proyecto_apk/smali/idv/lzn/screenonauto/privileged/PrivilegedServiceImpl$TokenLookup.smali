.class final Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenLookup"
.end annotation


# instance fields
.field private final status:I

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;->token:Landroid/os/IBinder;

    .line 5
    .line 6
    iput p2, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;->status:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;->status:I

    .line 2
    .line 3
    return p0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$TokenLookup;->token:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method
