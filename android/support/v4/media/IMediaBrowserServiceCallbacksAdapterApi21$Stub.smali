.class Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;
.super Ljava/lang/Object;
.source "IMediaBrowserServiceCallbacksAdapterApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# static fields
.field static sAsInterfaceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 93
    :try_start_0
    const-string v2, "android.service.media.IMediaBrowserServiceCallbacks$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 95
    .local v1, "theClass":Ljava/lang/Class;
    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;->sAsInterfaceMethod:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_16} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_16} :catch_17

    .line 100
    :goto_16
    return-void

    .line 97
    :catch_17
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_18
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_16

    .line 97
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1c
    move-exception v0

    goto :goto_18
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 7
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, "result":Ljava/lang/Object;
    :try_start_1
    sget-object v2, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;->sAsInterfaceMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_d} :catch_14

    move-result-object v1

    .line 109
    .end local v1    # "result":Ljava/lang/Object;
    :goto_e
    return-object v1

    .line 106
    .restart local v1    # "result":Ljava/lang/Object;
    :catch_f
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_10
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_e

    .line 106
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_14
    move-exception v0

    goto :goto_10
.end method
