.class public final Landroidx/car/app/model/CarColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Le9;
.end annotation


# static fields
.field public static final BLUE:Landroidx/car/app/model/CarColor;

.field public static final DEFAULT:Landroidx/car/app/model/CarColor;

.field public static final GREEN:Landroidx/car/app/model/CarColor;

.field public static final PRIMARY:Landroidx/car/app/model/CarColor;

.field public static final RED:Landroidx/car/app/model/CarColor;

.field public static final SECONDARY:Landroidx/car/app/model/CarColor;

.field public static final TYPE_BLUE:I = 0x6

.field public static final TYPE_CUSTOM:I = 0x0

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_GREEN:I = 0x5

.field public static final TYPE_PRIMARY:I = 0x2

.field public static final TYPE_RED:I = 0x4

.field public static final TYPE_SECONDARY:I = 0x3

.field public static final TYPE_YELLOW:I = 0x7

.field public static final YELLOW:Landroidx/car/app/model/CarColor;


# instance fields
.field private final mColor:I

.field private final mColorDark:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Landroidx/car/app/model/CarColor;->PRIMARY:Landroidx/car/app/model/CarColor;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/car/app/model/CarColor;->SECONDARY:Landroidx/car/app/model/CarColor;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Landroidx/car/app/model/CarColor;->RED:Landroidx/car/app/model/CarColor;

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Landroidx/car/app/model/CarColor;->GREEN:Landroidx/car/app/model/CarColor;

    .line 35
    .line 36
    const/4 v0, 0x6

    .line 37
    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Landroidx/car/app/model/CarColor;->BLUE:Landroidx/car/app/model/CarColor;

    .line 42
    .line 43
    const/4 v0, 0x7

    .line 44
    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Landroidx/car/app/model/CarColor;->YELLOW:Landroidx/car/app/model/CarColor;

    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/car/app/model/CarColor;->mType:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/car/app/model/CarColor;->mColor:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Landroidx/car/app/model/CarColor;->mType:I

    .line 15
    iput p2, p0, Landroidx/car/app/model/CarColor;->mColor:I

    .line 16
    iput p3, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    return-void
.end method

.method private static create(I)Landroidx/car/app/model/CarColor;
    .locals 2

    .line 1
    new-instance v0, Landroidx/car/app/model/CarColor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Landroidx/car/app/model/CarColor;-><init>(III)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static createCustom(II)Landroidx/car/app/model/CarColor;
    .locals 2

    .line 1
    new-instance v0, Landroidx/car/app/model/CarColor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0, p1}, Landroidx/car/app/model/CarColor;-><init>(III)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "<unknown>"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "YELLOW"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "BLUE"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "GREEN"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "RED"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "SECONDARY"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "PRIMARY"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "DEFAULT"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_7
    const-string p0, "CUSTOM"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/CarColor;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/car/app/model/CarColor;

    .line 12
    .line 13
    iget v1, p0, Landroidx/car/app/model/CarColor;->mColor:I

    .line 14
    .line 15
    iget v3, p1, Landroidx/car/app/model/CarColor;->mColor:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget v1, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    .line 20
    .line 21
    iget v3, p1, Landroidx/car/app/model/CarColor;->mColorDark:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget p0, p0, Landroidx/car/app/model/CarColor;->mType:I

    .line 26
    .line 27
    iget p1, p1, Landroidx/car/app/model/CarColor;->mType:I

    .line 28
    .line 29
    if-ne p0, p1, :cond_2

    .line 30
    .line 31
    return v0

    .line 32
    :cond_2
    return v2
.end method

.method public getColor()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/car/app/model/CarColor;->mColor:I

    .line 2
    .line 3
    return p0
.end method

.method public getColorDark()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    .line 2
    .line 3
    return p0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/car/app/model/CarColor;->mType:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/car/app/model/CarColor;->mType:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/car/app/model/CarColor;->mColor:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget p0, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[type: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/car/app/model/CarColor;->mType:I

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/car/app/model/CarColor;->typeToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", color: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Landroidx/car/app/model/CarColor;->mColor:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", dark: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget p0, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, "]"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
