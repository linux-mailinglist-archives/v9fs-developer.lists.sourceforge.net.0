Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 694B85F6B64
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Oct 2022 18:19:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ogTap-0007pr-AH;
	Thu, 06 Oct 2022 16:19:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1ogTao-0007pl-3d
 for v9fs-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 16:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T+IXJzmq/2WngGlQ5qi23u/jPWBGvN0VOrhDWGZUyYw=; b=G5+B5Ry1WfIiecU2+LQ2lGxg7G
 irIDM+g/AD7KNLNHorGp1pCXPRDgEoCYTPu1oFzB6FC0L2mSuDYSD3VAeUTXbQpTTvOl01msHhQVR
 gvDZtc7WxllfOtiWlq/RcX6oBzAKDJ8gMPNHNcTkROES1/o6vGMFI/XAIKBOx/6xCfks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T+IXJzmq/2WngGlQ5qi23u/jPWBGvN0VOrhDWGZUyYw=; b=lUjLVgHGjG9PHpAJBUC0MA3q+5
 kPffggW50rdM9au6vymAZ3bhI0GxoGXHvxDNK+3I1s5XkqeL+iek1mz1puBnk2zWFOvmtqBeIHnRK
 Qv7gMKv9C8iCnjXtjXn49WWqzsD08HZMWhlNjIPq5im6zesArSh1wJK/iFgU6JbMwuCw=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ogTaj-0002Jg-Vf for v9fs-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 16:19:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D621DB81FCF;
 Thu,  6 Oct 2022 16:19:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBB7DC433D6;
 Thu,  6 Oct 2022 16:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1665073153;
 bh=ZgXM77/CXlz1KembRPwUCZZrHGoZx+VZ1yM34EffbDU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gEShlUmDsmrXFXkkL6VV7Tkd4KDRKAAj4NZuGie4VsVXHZydPqgc8prwovsqfWB6L
 MCElEH85luzIXRFjWFJ6ZX07qiAqTRF5oyrMiPWvWWI7Js2zPfWkBEMMr267knlXEV
 fgNiLhGl/45LlWkH1k/InWUQsgzNCeNWTCeP+GMXMctcoP+BZf7gXsfLoglwyqzi1s
 uO/wUhFVDCKYJTxxe0r/aSDasdXzJvWsi+FFu60VRt2eTJUfDoOtFowcNfgSQeLAop
 hGhR/v6A/Ig5JTp/YU4IYN1Sa4hW8LR/oSHXNzQvjgCamlxAcFC0wuxl/IPgFpljev
 vMno992AvkUxw==
Date: Thu, 6 Oct 2022 19:19:08 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yz7//EA4mfR7KL3D@unreal>
References: <cover.1664442592.git.leonro@nvidia.com>
 <024537aa138893c838d9cacc2e24f311c1e83d25.1664442592.git.leonro@nvidia.com>
 <Yzww1LRLIE+It6J8@kadam> <YzyfM1rJrmT1Qe4N@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzyfM1rJrmT1Qe4N@codewreck.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 05, 2022 at 06:01:39AM +0900, Dominique Martinet
 wrote: > Dan Carpenter wrote on Tue, Oct 04, 2022 at 04:10:44PM +0300: >
 > On Thu, Sep 29, 2022 at 12:37:55PM +0300, Leon Romanovsky wrote: [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ogTaj-0002Jg-Vf
Subject: Re: [V9fs-developer] [PATCH 1/2] Revert "9p: p9_client_create: use
 p9_client_destroy on failure"
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
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 davem@davemloft.net, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Oct 05, 2022 at 06:01:39AM +0900, Dominique Martinet wrote:
> Dan Carpenter wrote on Tue, Oct 04, 2022 at 04:10:44PM +0300:
> > On Thu, Sep 29, 2022 at 12:37:55PM +0300, Leon Romanovsky wrote:
> > > Rely on proper unwind order.
> > > 
> > > This reverts commit 3ff51294a05529d0baf6d4b2517e561d12efb9f9.
> > > 
> > > Reported-by: syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com
> > > Signed-off-by: Leon Romanovsky <leon@kernel.org>
> > 
> > The commit message doesn't really say what the problem is to the user.
> > Is this just to make the next patch easier?
> 
> Yes (and perhaps a bit of spite from the previous discussion), and the
> next patch was not useable so I am not applying this as is.
> 
> The next patch was meant as an alternative implementation to this fix:
> https://lore.kernel.org/all/20220928221923.1751130-1-asmadeus@codewreck.org/T/#u
> 
> At this point I have the original fix in my -next branch but it hasn't
> had any positive review (and well, I myself agree it's ugly), so unless
> Leon sends a v2 I'll need to think of a better way of tracking if
> clnt->trans_mod->create has been successfully called.
> I'm starting to think that since we don't have so many clnt I can
> probably just fit a bool/bitfield in one of the holes of the struct
> and just keep track of it; that'll be less error-prone than relying on
> clnt->trans (which -is- initialized in create() most of the time, but
> not in a way we can rely on) or reworking create() to return it as I
> originally wanted to do (rdma still needs to populate clnt->trans behind
> the scenees before create() returns, so the abstraction is also quite
> ugly)
> 
> The current breakage is actually quite bad so I'll try to send that
> today or tomorrow for merging next week unless Leon resends something we
> can work with... Conceptually won't be different than the patch
> currently in next so hopefully can pretend it's had a couple of weeks of
> testing...

I can't resend anything in near future and most of the time have very
limited access to computer due to holidays here.

Thanks

> -- 
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
