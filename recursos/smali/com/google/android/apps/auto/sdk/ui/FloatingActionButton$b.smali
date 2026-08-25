.class final enum Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

.field private static enum c:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

.field private static enum d:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

.field private static enum e:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

.field private static final synthetic f:[Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;


# instance fields
.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    const-string v1, "Custom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->c:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    new-instance v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    const/4 v1, 0x1

    sget v2, Lcom/google/android/apps/auto/sdk/ui/R$drawable;->car_oval_button_ripple:I

    const-string v3, "Oval"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->d:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    new-instance v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    const/4 v1, 0x2

    sget v2, Lcom/google/android/apps/auto/sdk/ui/R$drawable;->car_rectangular_button_ripple:I

    const-string v3, "Rectangular"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->e:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    new-instance v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    const/4 v1, 0x3

    sget v2, Lcom/google/android/apps/auto/sdk/ui/R$drawable;->car_toggle_button_ripple:I

    const-string v3, "Toggle"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->a:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    sget-object v1, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->c:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    sget-object v2, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->d:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    sget-object v3, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->e:Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    filled-new-array {v1, v2, v3, v0}, [Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->f:[Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;
    .locals 1

    const-class v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;
    .locals 1

    sget-object v0, Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->f:[Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    invoke-virtual {v0}, [Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/auto/sdk/ui/FloatingActionButton$b;

    return-object v0
.end method
