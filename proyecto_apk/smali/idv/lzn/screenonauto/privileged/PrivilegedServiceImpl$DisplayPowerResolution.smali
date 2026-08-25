.class final Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPowerResolution"
.end annotation


# instance fields
.field private final entry:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;

.field private final status:I


# direct methods
.method public constructor <init>(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;->entry:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;

    .line 5
    .line 6
    iput p2, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;->status:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getEntry()Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;->entry:Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerEntry;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayPowerResolution;->status:I

    .line 2
    .line 3
    return p0
.end method
