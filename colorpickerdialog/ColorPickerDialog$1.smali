.class Lcolorpickerdialog/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolorpickerdialog/ColorPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolorpickerdialog/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcolorpickerdialog/ColorPickerDialog;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcolorpickerdialog/ColorPickerDialog$1;->this$0:Lcolorpickerdialog/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcolorpickerdialog/ColorPickerDialog$1;->this$0:Lcolorpickerdialog/ColorPickerDialog;

    iget-object v0, v0, Lcolorpickerdialog/ColorPickerDialog;->mListener:Lcolorpickerdialog/ColorPickerDialog$ColorPickerListener;

    iget-object v1, p0, Lcolorpickerdialog/ColorPickerDialog$1;->this$0:Lcolorpickerdialog/ColorPickerDialog;

    invoke-interface {v0, v1}, Lcolorpickerdialog/ColorPickerDialog$ColorPickerListener;->onDoneClick(Landroid/app/DialogFragment;)V

    .line 104
    return-void
.end method
