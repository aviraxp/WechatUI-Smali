.class public Lcolorpickerdialog/ColorPickerDialog;
.super Landroid/app/DialogFragment;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolorpickerdialog/ColorPickerDialog$ColorPickerListener;
    }
.end annotation


# instance fields
.field private color:I

.field private etAlpha:Landroid/widget/EditText;

.field private etBlue:Landroid/widget/EditText;

.field private etGreen:Landroid/widget/EditText;

.field private etRed:Landroid/widget/EditText;

.field mListener:Lcolorpickerdialog/ColorPickerDialog$ColorPickerListener;

.field private sbAlpha:Landroid/widget/SeekBar;

.field private sbBlue:Landroid/widget/SeekBar;

.field private sbGreen:Landroid/widget/SeekBar;

.field private sbRed:Landroid/widget/SeekBar;

.field private tlDialog:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    return-void
.end method

.method private hideSoftKeyboard(Landroid/widget/TextView;)V
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcolorpickerdialog/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 193
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 194
    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 5

    .prologue
    .line 197
    iget-object v0, p0, Lcolorpickerdialog/ColorPickerDialog;->sbAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcolorpickerdialog/ColorPickerDialog;->sbRed:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcolorpickerdialog/ColorPickerDialog;->sbGreen:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbBlue:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcolorpickerdialog/ColorPickerDialog;->color:I

    .line 198
    iget v0, p0, Lcolorpickerdialog/ColorPickerDialog;->color:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 212
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcolorpickerdialog/ColorPickerDialog$ColorPickerListener;

    move-object v2, v0

    iput-object v2, p0, Lcolorpickerdialog/ColorPickerDialog;->mListener:Lcolorpickerdialog/ColorPickerDialog$ColorPickerListener;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 218
    return-void

    .line 213
    :catch_a
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement NoticeDialogListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcolorpickerdialog/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u9009\u62e9\u989c\u8272"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {p0}, Lcolorpickerdialog/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 65
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->tlDialog:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbRed:Landroid/widget/SeekBar;

    .line 71
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbRed:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 72
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbRed:Landroid/widget/SeekBar;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbGreen:Landroid/widget/SeekBar;

    .line 75
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbGreen:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 76
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbGreen:Landroid/widget/SeekBar;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbBlue:Landroid/widget/SeekBar;

    .line 79
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbBlue:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 80
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbBlue:Landroid/widget/SeekBar;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const v3, 0x7f0b001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbAlpha:Landroid/widget/SeekBar;

    .line 83
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcolorpickerdialog/ColorPickerDialog;->sbRed:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iget-object v5, p0, Lcolorpickerdialog/ColorPickerDialog;->sbGreen:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    iget-object v6, p0, Lcolorpickerdialog/ColorPickerDialog;->sbBlue:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcolorpickerdialog/ColorPickerDialog;->color:I

    .line 87
    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->etRed:Landroid/widget/EditText;

    .line 88
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->etRed:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 90
    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->etGreen:Landroid/widget/EditText;

    .line 91
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->etGreen:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 93
    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->etBlue:Landroid/widget/EditText;

    .line 94
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->etBlue:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 96
    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->etAlpha:Landroid/widget/EditText;

    .line 97
    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->etAlpha:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 100
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcolorpickerdialog/ColorPickerDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcolorpickerdialog/ColorPickerDialog$1;

    invoke-direct {v4, p0}, Lcolorpickerdialog/ColorPickerDialog$1;-><init>(Lcolorpickerdialog/ColorPickerDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    const/4 v2, 0x6

    if-eq p2, v2, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_33

    .line 163
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    .line 164
    .local v1, "id":I
    packed-switch v1, :pswitch_data_6c

    .line 180
    :goto_18
    :pswitch_18
    invoke-direct {p0, p1}, Lcolorpickerdialog/ColorPickerDialog;->hideSoftKeyboard(Landroid/widget/TextView;)V

    .line 182
    const/4 v2, 0x1

    .line 188
    .end local v1    # "id":I
    :goto_1c
    return v2

    .line 166
    .restart local v1    # "id":I
    :pswitch_1d
    iget-object v2, p0, Lcolorpickerdialog/ColorPickerDialog;->sbRed:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_2e} :catch_2f

    goto :goto_18

    .line 184
    .end local v1    # "id":I
    :catch_2f
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 188
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_33
    const/4 v2, 0x0

    goto :goto_1c

    .line 169
    .restart local v1    # "id":I
    :pswitch_35
    :try_start_35
    iget-object v2, p0, Lcolorpickerdialog/ColorPickerDialog;->sbGreen:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_18

    .line 172
    :pswitch_47
    iget-object v2, p0, Lcolorpickerdialog/ColorPickerDialog;->sbBlue:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_18

    .line 175
    :pswitch_59
    iget-object v2, p0, Lcolorpickerdialog/ColorPickerDialog;->sbAlpha:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_6a} :catch_2f

    goto :goto_18

    .line 164
    nop

    :pswitch_data_6c
    .packed-switch 0x7f0b0016
        :pswitch_1d
        :pswitch_18
        :pswitch_35
        :pswitch_18
        :pswitch_47
        :pswitch_18
        :pswitch_59
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    .line 123
    .local v0, "id":I
    packed-switch v0, :pswitch_data_b8

    .line 143
    :goto_8
    :pswitch_8
    iget-object v1, p0, Lcolorpickerdialog/ColorPickerDialog;->sbAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcolorpickerdialog/ColorPickerDialog;->sbRed:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcolorpickerdialog/ColorPickerDialog;->sbGreen:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcolorpickerdialog/ColorPickerDialog;->sbBlue:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcolorpickerdialog/ColorPickerDialog;->color:I

    .line 144
    iget-object v1, p0, Lcolorpickerdialog/ColorPickerDialog;->tlDialog:Landroid/widget/TextView;

    iget v2, p0, Lcolorpickerdialog/ColorPickerDialog;->color:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 145
    return-void

    .line 125
    :pswitch_2e
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v1, p0, Lcolorpickerdialog/ColorPickerDialog;->etRed:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 129
    :pswitch_53
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2, p2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v1, p0, Lcolorpickerdialog/ColorPickerDialog;->etGreen:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 133
    :pswitch_78
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2, v2, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v1, p0, Lcolorpickerdialog/ColorPickerDialog;->etBlue:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 137
    :pswitch_9e
    iget-object v1, p0, Lcolorpickerdialog/ColorPickerDialog;->etAlpha:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 123
    :pswitch_data_b8
    .packed-switch 0x7f0b0015
        :pswitch_2e
        :pswitch_8
        :pswitch_53
        :pswitch_8
        :pswitch_78
        :pswitch_8
        :pswitch_9e
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 150
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 155
    return-void
.end method

.method public setColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 202
    iput p1, p0, Lcolorpickerdialog/ColorPickerDialog;->color:I

    .line 203
    return-void
.end method
