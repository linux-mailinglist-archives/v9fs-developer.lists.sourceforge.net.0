Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0174D3BD9
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 22:13:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS3cM-0002q8-BT; Wed, 09 Mar 2022 21:13:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nS3cL-0002q2-Dm
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 21:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nm5pH9XDPHw4sLqK0wRUP3IUgWZ9k/HZP1+vWbNTOPY=; b=HqdIEp0OvF2If1ZSJgNEGyQXSm
 KQaV3vDLwsuu8xlZYu9MhAE2vvPNv4Fbe0YaCXLQp7ZVbjoVfbVzmIfFj15va79amTK7c/ryEyopU
 7rH5p//R0FbrrfqsMK6o3fX/5zbK3scwV9RXHh5Q7oM+IUIE/4HXk5KmvNvv/how+vpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nm5pH9XDPHw4sLqK0wRUP3IUgWZ9k/HZP1+vWbNTOPY=; b=jEgoWlX/BgClvKGgkPm6BEsl+Q
 QP86jn8xRv7CLZ/ESn4V9h8m7hryh6HtT3LYwhZOVxxFSIyBugez6ThZVY5UWwlDs5h8guHFNPP46
 tDXm1jc1ZuaANLoIgCMlpG5nf2sg4jc3JVCW63XLwoZNF130V3MGM6lJtO5nsl7V8W2M=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS3cJ-00081s-B6
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 21:13:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 55568619DA;
 Wed,  9 Mar 2022 21:12:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CFE7C340F4;
 Wed,  9 Mar 2022 21:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646860375;
 bh=iRtGcZSySF09u13R1mT5NLROo7Lq5VVmijSoeUqM3ds=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=qqZNH2I1hX/JXgejzg8J5o0RBIaMFKyeq+jxOEujWuRmeL8cFAcORukF3OATCbFsE
 zxqka9zCPUPZtwq3cs5vLlUvHTuQIBqlC9oggV3q+JsnzOMIhTSHI3AdL2F61VfcOl
 uJclZFett5KSVbAu633cHl813HG5HeYRnzyLGPB8Kr0TgdL9LBuXiXMgOxJIbXba5G
 1TzcbW44p9l4cM33AjRDUzZU19yCPGUXJ0NY0Nnom1M+Av+ogdEPQCGpFE9/8Bhsx3
 dzRv2Gpp9lrtGqRqxWpX83pgjpDVBc1cfpFHBo3JlCsT7eN0/YJAwCg5BWrv6dQ5sG
 DiTv+0laLP1Fw==
Message-ID: <92ebc9fbdda967c14274f2b246ef3f77a1f21224.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Wed, 09 Mar 2022 16:12:52 -0500
In-Reply-To: <164678220204.1200972.17408022517463940584.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678220204.1200972.17408022517463940584.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-03-08 at 23:30 +0000, David Howells wrote: >
 Make afs use netfslib's tracking for the server's idea of what the current
 > inode size is independently of inode->i_size. We really want to u [...]
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nS3cJ-00081s-B6
Subject: Re: [V9fs-developer] [PATCH v2 19/19] afs: Maintain
 netfs_i_context::remote_i_size
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2022-03-08 at 23:30 +0000, David Howells wrote:
> Make afs use netfslib's tracking for the server's idea of what the current
> inode size is independently of inode->i_size.  We really want to use this
> value when calculating the new vnode size when initiating a StoreData RPC
> op rather than the size stat() presents to the user (ie. inode->i_size) as
> the latter is affected by as-yet uncommitted writes.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> cc: linux-afs@lists.infradead.org
> 
> Link: https://lore.kernel.org/r/164623014626.3564931.8375344024648265358.stgit@warthog.procyon.org.uk/ # v1
> ---
> 
>  fs/afs/inode.c |    1 +
>  fs/afs/write.c |    7 +++----
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/afs/inode.c b/fs/afs/inode.c
> index 5b5e40197655..2fe402483ad5 100644
> --- a/fs/afs/inode.c
> +++ b/fs/afs/inode.c
> @@ -246,6 +246,7 @@ static void afs_apply_status(struct afs_operation *op,
>  		 * idea of what the size should be that's not the same as
>  		 * what's on the server.
>  		 */
> +		vnode->netfs_ctx.remote_i_size = status->size;
>  		if (change_size) {
>  			afs_set_i_size(vnode, status->size);
>  			inode->i_ctime = t;
> diff --git a/fs/afs/write.c b/fs/afs/write.c
> index e4b47f67a408..85c9056ba9fb 100644
> --- a/fs/afs/write.c
> +++ b/fs/afs/write.c
> @@ -353,9 +353,10 @@ static const struct afs_operation_ops afs_store_data_operation = {
>  static int afs_store_data(struct afs_vnode *vnode, struct iov_iter *iter, loff_t pos,
>  			  bool laundering)
>  {
> +	struct netfs_i_context *ictx = &vnode->netfs_ctx;
>  	struct afs_operation *op;
>  	struct afs_wb_key *wbk = NULL;
> -	loff_t size = iov_iter_count(iter), i_size;
> +	loff_t size = iov_iter_count(iter);
>  	int ret = -ENOKEY;
>  
>  	_enter("%s{%llx:%llu.%u},%llx,%llx",
> @@ -377,15 +378,13 @@ static int afs_store_data(struct afs_vnode *vnode, struct iov_iter *iter, loff_t
>  		return -ENOMEM;
>  	}
>  
> -	i_size = i_size_read(&vnode->vfs_inode);
> -
>  	afs_op_set_vnode(op, 0, vnode);
>  	op->file[0].dv_delta = 1;
>  	op->file[0].modification = true;
>  	op->store.write_iter = iter;
>  	op->store.pos = pos;
>  	op->store.size = size;
> -	op->store.i_size = max(pos + size, i_size);
> +	op->store.i_size = max(pos + size, ictx->remote_i_size);

Ahh ok, so if i_size is larger than is represented by this write, you'll
have a zeroed out region until writeback catches up. Makes sense.

>  	op->store.laundering = laundering;
>  	op->mtime = vnode->vfs_inode.i_mtime;
>  	op->flags |= AFS_OPERATION_UNINTR;
> 
> 

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
