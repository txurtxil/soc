.class public final Lidv/lzn/screenonauto/ShortcutSlotPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public O:Z

.field public P:Z

.field public Q:Ldk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lidv/lzn/screenonauto/ShortcutSlotPreference;->P:Z

    .line 9
    .line 10
    const p1, 0x7f0c0078

    .line 11
    .line 12
    .line 13
    iput p1, p0, Landroidx/preference/Preference;->G:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final l(Lnu;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->l(Lnu;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f09018f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lnu;->b(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v1

    .line 20
    :goto_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lidv/lzn/screenonauto/ShortcutSlotPreference;->O:Z

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lidv/lzn/screenonauto/ShortcutSlotPreference;->P:Z

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lf20;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lf20;-><init>(Lidv/lzn/screenonauto/ShortcutSlotPreference;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
