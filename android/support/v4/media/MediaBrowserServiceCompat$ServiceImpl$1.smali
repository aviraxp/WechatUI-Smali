.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->connect(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

.field final synthetic val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6

    .prologue
    .line 300
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$rootHints:Landroid/os/Bundle;

    iput p5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 303
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 306
    .local v0, "b":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$500(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V

    .line 309
    .local v1, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$pkg:Ljava/lang/String;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 310
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$rootHints:Landroid/os/Bundle;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    .line 311
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 313
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$pkg:Ljava/lang/String;

    iget v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$uid:I

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$rootHints:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 317
    iget-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    if-nez v3, :cond_89

    .line 318
    const-string v3, "MediaBrowserServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No root for client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :try_start_67
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnectFailed()V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6c} :catch_6d

    .line 339
    :cond_6c
    :goto_6c
    return-void

    .line 322
    :catch_6d
    move-exception v2

    .line 323
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MediaBrowserServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 328
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_89
    :try_start_89
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$500(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v3, :cond_6c

    .line 330
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v6, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_b3} :catch_b4

    goto :goto_6c

    .line 333
    :catch_b4
    move-exception v2

    .line 334
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v3, "MediaBrowserServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$500(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c
.end method
