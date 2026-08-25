.class public final enum Lmt;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lmt;

.field public static final enum c:Lmt;

.field public static final enum d:Lmt;

.field public static final synthetic e:[Lmt;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lmt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    const-string v3, "BACK"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lmt;-><init>(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lmt;->b:Lmt;

    .line 11
    .line 12
    new-instance v1, Lmt;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x3

    .line 16
    const-string v4, "HOME"

    .line 17
    .line 18
    invoke-direct {v1, v2, v3, v4}, Lmt;-><init>(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lmt;->c:Lmt;

    .line 22
    .line 23
    new-instance v2, Lmt;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const/16 v4, 0xbb

    .line 27
    .line 28
    const-string v5, "RECENTS"

    .line 29
    .line 30
    invoke-direct {v2, v3, v4, v5}, Lmt;-><init>(IILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lmt;->d:Lmt;

    .line 34
    .line 35
    filled-new-array {v0, v1, v2}, [Lmt;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lmt;->e:[Lmt;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lmt;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmt;
    .locals 1

    .line 1
    const-class v0, Lmt;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmt;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lmt;
    .locals 1

    .line 1
    sget-object v0, Lmt;->e:[Lmt;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lmt;

    .line 8
    .line 9
    return-object v0
.end method
