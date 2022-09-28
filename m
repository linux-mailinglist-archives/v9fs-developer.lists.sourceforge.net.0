Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E925EDC0F
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 13:54:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odVdh-0004c0-7M;
	Wed, 28 Sep 2022 11:54:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1odVdf-0004bt-9c
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 11:54:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KnYd69pb8JCWe/e7vyu9vi6t6Jb33OX+CSamUGuXc38=; b=Na1KVNjwP9ZHzyiD8/Xgaa/+dV
 KKpzwyQTtSz1CaepJhQB1oH5MworSANz4n4RswyNTldYO2oOP0b0VBz+3DWFxX6VxyWk5OSPn9Hb7
 JJg5bimGobeTZngfi0ALdjeREWJtxUzvGawq+QLOytd/wkjR36DwbqWec0X7GfTvLB0Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KnYd69pb8JCWe/e7vyu9vi6t6Jb33OX+CSamUGuXc38=; b=c92uxM3Iv7lCRKp+9H84RFucqd
 dGNPtjApoMf6Nyb0gtE4+/ch8PbZRrZGCqeSh0O4N+k1ptOPf81u9HB1uoUe2w9OsBgoEv9+FlxJb
 JtfbWkBqEsjXYBRTw/S1E5KNK4SHhowPMiJ7bspK8R1merThqQaE3a5hpm+D+EFLZqsA=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odVdr-0001I9-5d for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 11:54:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7141CB82038;
 Wed, 28 Sep 2022 11:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB66AC433C1;
 Wed, 28 Sep 2022 11:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664366048;
 bh=hulhezLqRBKK8E1gjp7vWO38O+DMT/KxUVnBXOBSOQs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ciZbc4xklNIJ97bZwBY5d7bmodICuHbMRWrgm8tempqdCWxWdya+TI6BcT5FCDlVb
 83spigJLPisO/aER9kNRqrXLyGJY7q1tKoxORHltsXfb/JjO6EC/8zdQXRYUviXJhA
 lKgb3UJjuBtBGGNb1mjDWlVU/co4yEAVssSepnumbGj5qYHzA172ZKI2iVtnvyHzd5
 vlIAE0ginJ3c2F7mJ0ZTI/0CzkiwkIYSZfuGwDPZkS/eVMkd7Zq3Z1co8eP/egAzGd
 dR8AubT7rWigPqSLxaxuwgjBP7IFL1z0eV9U2gF/VFYnk9ocCPk3uap3XbTCATHap0
 ZdXVmuBB8RiuA==
Date: Wed, 28 Sep 2022 14:54:03 +0300
From: Leon Romanovsky <leon@kernel.org>
To: asmadeus@codewreck.org
Message-ID: <YzQ12+jtARpwS5bw@unreal>
References: <00000000000015ac7905e97ebaed@google.com> <YzQc2yaDufjp+rHc@unreal>
 <YzQlWq9EOi9jpy46@codewreck.org> <YzQmr8LVTmUj9+zB@unreal>
 <YzQuoqyGsooyDfId@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzQuoqyGsooyDfId@codewreck.org>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 28, 2022 at 08:23:14PM +0900,
 asmadeus@codewreck.org
 wrote: > Leon Romanovsky wrote on Wed, Sep 28, 2022 at 01:49:19PM +0300:
 > > > But I agree I did get that wrong: trans_mod->close() was [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1odVdr-0001I9-5d
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

On Wed, Sep 28, 2022 at 08:23:14PM +0900, asmadeus@codewreck.org wrote:
> Leon Romanovsky wrote on Wed, Sep 28, 2022 at 01:49:19PM +0300:
> > > But I agree I did get that wrong: trans_mod->close() wasn't called if
> > > create failed.
> > > We do want the idr_for_each_entry() that is in p9_client_destroy so
> > > rather than revert the commit (fix a bug, create a new one..) I'd rather
> > > split it out in an internal function that takes a 'bool close' or
> > > something to not duplicate the rest.
> > > (Bit of a nitpick, sure)
> > 
> > Please do proper unwind without extra variable.
> > 
> > Proper unwind means that you will call to symmetrical functions in
> > destroy as you used in create:
> > alloc -> free
> > create -> close
> > e.t.c
> > 
> > When you use some global function like you did, there is huge chance
> > to see unwind bugs.
> 
> No.

Let's agree to disagree.

> 
> Duplicating complicated cleanup code leads to leaks like we used to
> have; that destroy function already frees up things in the right order.

It is pretty straightforward code, nothing complex there.

Just pause for a minute, and ask yourself how totally random guy who
looked on this syzbot bug just because RDMA name in it, found the issue
so quickly.

I will give a hint, I saw not symmetrical error unwind in call trace.

Thanks


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
