.class final Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingKey"
.end annotation


# instance fields
.field private final downTime:J

.field private final keyCode:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;->keyCode:I

    .line 5
    .line 6
    iput-wide p2, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;->downTime:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getDownTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;->downTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getKeyCode()I
    .locals 0

    .line 1
    iget p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PendingKey;->keyCode:I

    .line 2
    .line 3
    return p0
.end method
