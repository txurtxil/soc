.class public final Landroidx/car/app/FailureResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Le9;
.end annotation


# static fields
.field public static final BUNDLER_EXCEPTION:I = 0x1

.field public static final ILLEGAL_STATE_EXCEPTION:I = 0x2

.field public static final INVALID_PARAMETER_EXCEPTION:I = 0x3

.field public static final REMOTE_EXCEPTION:I = 0x6

.field public static final RUNTIME_EXCEPTION:I = 0x5

.field public static final SECURITY_EXCEPTION:I = 0x4

.field public static final UNKNOWN_ERROR:I


# instance fields
.field private final mErrorType:I

.field private final mStackTrace:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    .line 12
    .line 13
    instance-of v0, p1, Lb8;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput p1, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    iput p1, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of v0, p1, Ljava/security/InvalidParameterException;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const/4 p1, 0x3

    .line 34
    iput p1, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    instance-of v0, p1, Ljava/lang/SecurityException;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 p1, 0x4

    .line 42
    iput p1, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    instance-of v0, p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    const/4 p1, 0x5

    .line 50
    iput p1, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    instance-of p1, p1, Landroid/os/RemoteException;

    .line 54
    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    const/4 p1, 0x6

    .line 58
    iput p1, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 59
    .line 60
    return-void

    .line 61
    :cond_5
    const/4 p1, 0x0

    .line 62
    iput p1, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/car/app/FailureResponse;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/car/app/FailureResponse;

    .line 8
    .line 9
    iget v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 10
    .line 11
    iget v2, p1, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    return v1
.end method

.method public getErrorType()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 2
    .line 3
    return p0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
