.class public final Lcom/google/android/apps/auto/sdk/ui/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CarAppTheme:[I

.field public static final CarAppTheme_carButtonStyle:I = 0x0

.field public static final CarAppTheme_carCardStyle:I = 0x1

.field public static final CarAppTheme_carTextViewStyle:I = 0x2

.field public static final CardView:[I

.field public static final CardView_android_minHeight:I = 0x1

.field public static final CardView_android_minWidth:I = 0x0

.field public static final CardView_cardBackgroundColor:I = 0x2

.field public static final CardView_cardCornerRadius:I = 0x3

.field public static final CardView_cardElevation:I = 0x4

.field public static final CardView_cardMaxElevation:I = 0x5

.field public static final CardView_cardPreventCornerOverlap:I = 0x7

.field public static final CardView_cardUseCompatPadding:I = 0x6

.field public static final CardView_contentPadding:I = 0x8

.field public static final CardView_contentPaddingBottom:I = 0xc

.field public static final CardView_contentPaddingLeft:I = 0x9

.field public static final CardView_contentPaddingRight:I = 0xa

.field public static final CardView_contentPaddingTop:I = 0xb

.field public static final DrawerArrowDrawable:[I

.field public static final DrawerArrowDrawable_carArrowBarSize:I = 0x6

.field public static final DrawerArrowDrawable_carArrowColor:I = 0x0

.field public static final DrawerArrowDrawable_carArrowDrawableSize:I = 0x2

.field public static final DrawerArrowDrawable_carArrowGapBetweenBars:I = 0x3

.field public static final DrawerArrowDrawable_carArrowMiddleBarSize:I = 0x5

.field public static final DrawerArrowDrawable_carArrowSpinBars:I = 0x1

.field public static final DrawerArrowDrawable_carArrowThickness:I = 0x7

.field public static final DrawerArrowDrawable_carArrowTopBottomBarSize:I = 0x4

.field public static final FloatingActionButton:[I

.field public static final FloatingActionButton_buttonType:I = 0x0

.field public static final FloatingActionButton_focusGainedAnimation:I = 0x1

.field public static final FloatingActionButton_focusLostAnimation:I = 0x2

.field public static final MaxWidthLayout:[I

.field public static final MaxWidthLayout_carMaxWidth:I = 0x0

.field public static final PagedListView:[I

.field public static final PagedListView_fadeLastItem:I = 0x0

.field public static final PagedListView_glowColor:I = 0x2

.field public static final PagedListView_offsetRows:I = 0x1

.field public static final PagedListView_rightGutterEnabled:I = 0x3

.field public static final PagedListView_scrollBarEnabled:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f0100a1

    const v1, 0x7f0100a2

    const v2, 0x7f0100a0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->CarAppTheme:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->CardView:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->DrawerArrowDrawable:[I

    const v0, 0x7f0100c7

    const v1, 0x7f0100c8

    const v2, 0x7f0100c6

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->FloatingActionButton:[I

    const v0, 0x7f0100cc

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->MaxWidthLayout:[I

    const v0, 0x7f0100e6

    const v1, 0x7f0100e7

    const v2, 0x7f0100e3

    const v3, 0x7f0100e4

    const v4, 0x7f0100e5

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/sdk/ui/R$styleable;->PagedListView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013f
        0x1010140
        0x7f0100a3
        0x7f0100a4
        0x7f0100a5
        0x7f0100a6
        0x7f0100a7
        0x7f0100a8
        0x7f0100a9
        0x7f0100aa
        0x7f0100ab
        0x7f0100ac
        0x7f0100ad
    .end array-data

    :array_1
    .array-data 4
        0x7f0100b6
        0x7f0100b7
        0x7f0100b8
        0x7f0100b9
        0x7f0100ba
        0x7f0100bb
        0x7f0100bc
        0x7f0100bd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
