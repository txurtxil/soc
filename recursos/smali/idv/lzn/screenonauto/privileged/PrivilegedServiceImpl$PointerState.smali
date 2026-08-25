.class final Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerState"
.end annotation


# instance fields
.field private final coords:[Landroid/view/MotionEvent$PointerCoords;

.field private final downTime:J

.field private final ids:[I


# direct methods
.method public constructor <init>(J[I[Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-wide p1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;->downTime:J

    .line 11
    .line 12
    iput-object p3, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;->ids:[I

    .line 13
    .line 14
    iput-object p4, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;->coords:[Landroid/view/MotionEvent$PointerCoords;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getCoords()[Landroid/view/MotionEvent$PointerCoords;
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;->coords:[Landroid/view/MotionEvent$PointerCoords;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDownTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;->downTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getIds()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$PointerState;->ids:[I

    .line 2
    .line 3
    return-object p0
.end method
