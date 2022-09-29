Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CF35EED9C
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 08:10:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odmkG-0008VE-De;
	Thu, 29 Sep 2022 06:10:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1odmkE-0008V4-ME
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 06:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b6fbfU9gi0snzzejOeEzrU2sbLgK+W1PTjhzilDeqEg=; b=cApKSsXf65ccMe/kj2O8C5A8ZG
 BEUk8XrJq7udsoan/ZUdFWru1C3kVlMoPeQy0qL/YEFrDIhDfJM88Z3O6sFAWpnXwUNyR8mf4rNm6
 FDax1yyRYVFwmeyVpzCFZE6Il0/TyxkhUawa6edvNyBWdcZCtFLa54KPELQiyR0iZuEA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b6fbfU9gi0snzzejOeEzrU2sbLgK+W1PTjhzilDeqEg=; b=ZyQqzrgGay6YG0K1CI1UFfuVtP
 02ZtWciRtTuw+N0TpvD9HCJHEfzI0kvR24M8qeRgcGMMvB0PwNplrI2Jq8nYHhmBBrebYaH1zYkl9
 E0a24yAwdrRdoQUN4lukyvsovvghap2bh6wwXnf0/ggjo2pHZ1nj0JNZHLPrsIObu7+4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odmkP-006HoB-Up for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 06:10:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7E61462011;
 Thu, 29 Sep 2022 06:10:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E3AEC43470;
 Thu, 29 Sep 2022 06:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664431807;
 bh=7xmld9n+ZLflyYVZz9glPsXOPPIb/gqWQ8A/fN+pZ54=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DK+7r5ydZMxp87D2zNRYNIdT0cZ5cYfu9nq3mKD9uJW1HIP4axW6y2mtMFDbflQt1
 DsJe/SuoQ7Uug+VddWBQy6CgspEYI1uBsmXG3ZCBUpWAmXjRIFvLn1vMFe8/Us298k
 Rv054bf0QFjnFHQXN4lZhbvQt8MFPhPHAWHsXl/G0Gf4MDNHC86srEMYWWXwWbhFsR
 jlGDP3Kpf5CLP+3SmFjT1ayifVf81Qsf94vp/AHoIqufh06G2N9XSRw4xzBU8AhCHa
 ba/fJQJMYNisrCi5lA2eE9/ToZQ9wUyMBh1exyuP8kGoeWJVf9fYRRyB5X1TYmqz76
 uRcV5Y0lZBkJQ==
Date: Thu, 29 Sep 2022 09:10:03 +0300
From: Leon Romanovsky <leon@kernel.org>
To: asmadeus@codewreck.org
Message-ID: <YzU2u+hEmx0kZhb5@unreal>
References: <00000000000015ac7905e97ebaed@google.com>
 <YzQuoqyGsooyDfId@codewreck.org> <YzQ12+jtARpwS5bw@unreal>
 <1783490.kFEjeSjHVE@silver> <YzTCOGCo5mIxwf9S@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzTCOGCo5mIxwf9S@codewreck.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 29, 2022 at 06:52:56AM +0900,
 asmadeus@codewreck.org
 wrote: <...> > > From technical perspective, yes, destruction in reverse
 order is usually the > > better way to go. Whether I would carve that in stone,
 without any exception, > > probably not. > > I think it's a [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1odmkP-006HoB-Up
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
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 29, 2022 at 06:52:56AM +0900, asmadeus@codewreck.org wrote:

<...>

> > From technical perspective, yes, destruction in reverse order is usually the 
> > better way to go. Whether I would carve that in stone, without any exception, 
> > probably not.
> 
> I think it's a tradeoff really.
> Unrolling in place is great, don't get me wrong, but it's also easy to
> miss things when adding code later on -- we actually just did that and
> got another kasan report which made me factor things in to future-proof
> the code.
> 
> Having a single place of truth that knows how to "untangle" and properly
> free a struct, making sure it is noop for parts of the struct that
> haven't been initialized yet, is less of a burden for me to think about.

It is not bikeshedding or tradeoff, but matter of well-proven coding
patterns, which are very helpful for review and code maintaining.

Thanks


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
