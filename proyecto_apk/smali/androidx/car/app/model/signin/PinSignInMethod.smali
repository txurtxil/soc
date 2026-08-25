.class public final Landroidx/car/app/model/signin/PinSignInMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li20;


# annotations
.annotation runtime Le9;
.end annotation


# static fields
.field private static final MAX_PIN_LENGTH:I = 0xc


# instance fields
.field private final mPinCode:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v2, 0xc

    .line 18
    .line 19
    if-gt v0, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p0, "PIN must not be longer than 12 characters"

    .line 29
    .line 30
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :cond_1
    const-string p0, "PIN must not be empty"

    .line 35
    .line 36
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/signin/PinSignInMethod;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Landroidx/car/app/model/signin/PinSignInMethod;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public getPinCode()Landroidx/car/app/model/CarText;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
