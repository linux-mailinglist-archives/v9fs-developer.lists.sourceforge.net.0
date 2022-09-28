Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E96885EDA6A
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 12:49:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odUdH-0002Dh-D8;
	Wed, 28 Sep 2022 10:49:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1odUdF-0002DQ-K0
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 10:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+TNrnRxQ1UHXn4df2AYPGpuRwD+ZcIGeqOA1sNqgcXg=; b=KhU1mj1684076eaQUTNFA/IsMO
 VVIV4XB8E0Izx6ZSHW9duMKzphXfZcmEyYmh3/44cfDD7/oPL42DcLbZJlbbMA9gLh2SbdVmblwnx
 dFaYEbV9Gc+9KIk5BP5norJWIiHnPnTZB3yIWqvcTM2nIQ55IZ/aPvVoGKZDf0kws0cA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+TNrnRxQ1UHXn4df2AYPGpuRwD+ZcIGeqOA1sNqgcXg=; b=Qau/BcBuQCPtMLe0UpUQOHAOZL
 JkAiiVzGCALUTcYihW1v3Rxh86/MaGYCsAHnyaDnCiXQZciypdr/JokXmrnBPfNwP4fxgcQvAvmYI
 ClEnbOAYI5l40ZfYmSALEe9r9qhWB9cGsYb6OyZrbXBGdGij4rd06ebT381qQ3d+rJtQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odUdB-0006fb-By for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 10:49:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BF64461E0A;
 Wed, 28 Sep 2022 10:49:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1CBDC433D6;
 Wed, 28 Sep 2022 10:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664362164;
 bh=3bIQetYYgSam2FLQHAYrxvXLhb/+Gd5oeD+JuaALYZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o3p4PK+9QhzFzE+LWKF+cJkA+lJhnXOMfmpMqpDeZ04ojFR90Vgfw5Xe2cwMBfPwW
 bbMUUzAKPqdklWtE0/VtBCB+h6xtq7K0ISh0AbsyYjS0GzZFF70+9ufcPYYsE4ZEdx
 3Tt0dOqXGWFAtzh+vf+6GHFq+Xa+AOAZqX0nUg3T8pvng9GrHvnscywnsqpwVmpmlz
 vNMrta0SRo/4BNaDZS+vTaSlyrf05szizxotRVM1jFCDr36reTvRtb6WbQdonySEp6
 gP+dxV+jaJPUXVcSR4W70RNuasT+biVizlfb3L/m2fpLAhCny+Z3rsmSfp7AfXLh4/
 edPRNjPfm8hpg==
Date: Wed, 28 Sep 2022 13:49:19 +0300
From: Leon Romanovsky <leon@kernel.org>
To: asmadeus@codewreck.org
Message-ID: <YzQmr8LVTmUj9+zB@unreal>
References: <00000000000015ac7905e97ebaed@google.com> <YzQc2yaDufjp+rHc@unreal>
 <YzQlWq9EOi9jpy46@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzQlWq9EOi9jpy46@codewreck.org>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 28, 2022 at 07:43:38PM +0900,
 asmadeus@codewreck.org
 wrote: > Leon Romanovsky wrote on Wed, Sep 28, 2022 at 01:07:23PM +0300:
 > > The bug is in commit 3ff51294a055 ("9p: p9_client_create: [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1odUdB-0006fb-By
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

On Wed, Sep 28, 2022 at 07:43:38PM +0900, asmadeus@codewreck.org wrote:
> Leon Romanovsky wrote on Wed, Sep 28, 2022 at 01:07:23PM +0300:
> > The bug is in commit 3ff51294a055 ("9p: p9_client_create: use p9_client_destroy on failure").
> 
> Thanks for looking
> 
> > It is wrong to call to p9_client_destroy() if clnt->trans_mod->create fails.
> 
> hmm that's a bit broad :)
> 
> But I agree I did get that wrong: trans_mod->close() wasn't called if
> create failed.
> We do want the idr_for_each_entry() that is in p9_client_destroy so
> rather than revert the commit (fix a bug, create a new one..) I'd rather
> split it out in an internal function that takes a 'bool close' or
> something to not duplicate the rest.
> (Bit of a nitpick, sure)

Please do proper unwind without extra variable.

Proper unwind means that you will call to symmetrical functions in
destroy as you used in create:
alloc -> free
create -> close
e.t.c

When you use some global function like you did, there is huge chance
to see unwind bugs.

> 
> I'll send a patch and credit you in Reported-by unless you don't want
> to.
> 
> -- 
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
