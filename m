Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D6D5EDBAD
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 13:23:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odVAD-00048L-FR;
	Wed, 28 Sep 2022 11:23:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1odVAC-00048F-2M
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 11:23:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R+tt35RwTcDp8NVFqyIj6r8e594PICPVfST0BDBn7xk=; b=hI7xRP4FZl9+cemPqV5lj3yLOL
 ci1ya8gHznLo9UdAIisQJnAl1vcrte00Fy81N8xPWNpUbMtTUxhnxB18q0ov/7DVM+K0FNgZ+S3ht
 ZpjXjQoyM+aMSVNwetpXflRfZSXY9b9Vf7S0W+mLROfDxnbCwvDmZvw5xqaK9/ikWxn4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R+tt35RwTcDp8NVFqyIj6r8e594PICPVfST0BDBn7xk=; b=johQe0sD4BLrUn44EPMhKZvD42
 8nGMSh3cTyoSi4OZ9egmupCHBkyklde0HiCBJfPbYdnTBoKCrP4cgy/+kwpnWWAWiJ4K5QrDzr/rU
 Ep00Qq0sR3ivLGXCjUwtlIYRH8iitcsyE+WnKDmf03craWxja/x0SfYdMf+whkhtwD7Y=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odVAH-005UxQ-Vi for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 11:23:52 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id ABF61C020; Wed, 28 Sep 2022 13:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664364217; bh=R+tt35RwTcDp8NVFqyIj6r8e594PICPVfST0BDBn7xk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tjAURJkUG3o+n3RG+G2zkCPBfuw65v9S0a7AySU6xqJmFpCWu2vhro9Jpjx9b2urX
 lvZBUko6OF1huj7hLxqAM5OqqgyQwx1SrjNXatZfsqiPlYiL1BQUho608ft8BevLJY
 HJ7RTBA2T565CJU5ihWEOK5uV4XB9SjxmQjTRLtJTCnT8A6nNIDyZwvjgKRzOoEO74
 qU9ynhEl2KZ49SM3hPrYocxX3dCKEIyaMgX3vx6WD984t/ECs5/4bR9TdfAOSKARdc
 vrBpjJyv0m+dAcSonnZ9LMit8CCERuMvmWlTBnhfDSa6GVILNyN+S7F1eKw2wSq/mZ
 pQKF97Jmu5A2Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id F011DC009;
 Wed, 28 Sep 2022 13:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664364216; bh=R+tt35RwTcDp8NVFqyIj6r8e594PICPVfST0BDBn7xk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EKIEJoDTJ7Yc9jBpEtFLr2sp/gEB8RrIEQoj8Lu7A8jxb4E9DzbWsBvtcaFP0UCo9
 y13FjvUHpuzgm1XG9JZmoCene6H6DMzMntMQEUgzT3XWBY+fF2unGl/mciRmc6a+9r
 Exqk4x/OnmD1aAGxYBEGqoBItPVkSvABteTh1c+2FCAKDw4jr3gq5GwCLeMlDt/0VO
 jKkkBToQ1UGz9xVg4EPZnnkFpvitZYmkpNQtu9GsOlb8jAZG4D0KkfDIaxSiXKo0vW
 P0ftQJe6r6qocm5Qhz4DQf4iu6wBtSMvlaE18HVVdb4Cuhh5bUj+ylVhrayIMu8tvq
 YagPFpHIVaKkA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d4a4fd30;
 Wed, 28 Sep 2022 11:23:29 +0000 (UTC)
Date: Wed, 28 Sep 2022 20:23:14 +0900
From: asmadeus@codewreck.org
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YzQuoqyGsooyDfId@codewreck.org>
References: <00000000000015ac7905e97ebaed@google.com> <YzQc2yaDufjp+rHc@unreal>
 <YzQlWq9EOi9jpy46@codewreck.org> <YzQmr8LVTmUj9+zB@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzQmr8LVTmUj9+zB@unreal>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Leon Romanovsky wrote on Wed, Sep 28,
 2022 at 01:49:19PM +0300:
 > > But I agree I did get that wrong: trans_mod->close() wasn't called if
 > > create failed. > > We do want the idr_for_each_entry() tha [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1odVAH-005UxQ-Vi
Subject: Re: [V9fs-developer] [syzbot] KASAN: use-after-free Read in
 rdma_close
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 syzbot <syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com>,
 linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Leon Romanovsky wrote on Wed, Sep 28, 2022 at 01:49:19PM +0300:
> > But I agree I did get that wrong: trans_mod->close() wasn't called if
> > create failed.
> > We do want the idr_for_each_entry() that is in p9_client_destroy so
> > rather than revert the commit (fix a bug, create a new one..) I'd rather
> > split it out in an internal function that takes a 'bool close' or
> > something to not duplicate the rest.
> > (Bit of a nitpick, sure)
> 
> Please do proper unwind without extra variable.
> 
> Proper unwind means that you will call to symmetrical functions in
> destroy as you used in create:
> alloc -> free
> create -> close
> e.t.c
> 
> When you use some global function like you did, there is huge chance
> to see unwind bugs.

No.

Duplicating complicated cleanup code leads to leaks like we used to
have; that destroy function already frees up things in the right order.

And, well, frankly 9p is a mess anyway; the problem here is that
trans_mod->create() doesn't leave any trace we can rely on in a common
cleanup function, but the original "proper unwind" missed:
 - p9_fid_destroy/tags cleanup for anything in the cache (because, yes,
apparently fuzzers managed to use the client before it's fully
initialized. I don't want to know.)
 - fcall cache destory

I'm not duplicating all this mess. This is the only place that can call
destroy before trans_mod create has been called, I wish we'd have a
pattern like "clnt->trans = clnt->trans_mod->create()" so we could just
check if trans is null, but a destroy parameter will do.

... Well, I guess it's not like there are out of tree trans, I could
just change create() to do that if I had infinite time...

--
Dominique




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
