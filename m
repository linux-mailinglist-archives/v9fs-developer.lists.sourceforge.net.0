Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EF55EE8AD
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 23:53:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odezf-0004LQ-1r;
	Wed, 28 Sep 2022 21:53:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1odezd-0004LB-Df
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BHV/yJbIkGK5qQNJNI3iNQ3gbP+uXMdXAVbx7REK9Go=; b=JK9uvv3gmMHL6Jfe4STRgwWbjB
 yhN7BCrJuO2B0BrLGooGrhkcdtTTLOMwiE46aQxwq6Acw7p7IdyA3hnDjHEWVGU7BO1vhOuRmDh8i
 QaG3Q0+djiIMoyAXdvFh5Idy0vkgJDD7VYdxdXEEpgG+m/odXh/6gjsYrg0zrDvbW5Xs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BHV/yJbIkGK5qQNJNI3iNQ3gbP+uXMdXAVbx7REK9Go=; b=BFn9BDLV/mwWrU803tcKkdB/wp
 Dci+mc291wmXafXqVXSLzUQiKiTI7UhFy4g7ZyPlygtADuolWUYoyTqBMHQLwJQSMxr/wQezctHXT
 xLFUxWDOyrRd9HL6KklGvfp6+30ssRfBjDJXYXOVigD1zjIZVLNf7Y2vg3VwJOGGRIfc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odezc-005wi6-Fn for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:53:25 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4D786C01C; Wed, 28 Sep 2022 23:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664401997; bh=BHV/yJbIkGK5qQNJNI3iNQ3gbP+uXMdXAVbx7REK9Go=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2xL5HoPSL36MiwWb6YMyFPWRcAofCwW2O51mPBRKP6Wu4+6eCSPzLEvV1dElgnlis
 goPoiRFjrtWaFxfyLXaHeGTnVQgIsw27ASVP4UY0FF4QxBrIMrynT8fR/9D8sAKHmP
 MFLDxlWJp019Pi9HknmQ72LIX7yzfNvPSaSkA5PM5nAdwk3EciiY1mQkybn6t5N4SO
 UEITC5kjFzhBXwnH2+Z7pSJ5Eu8401/SKPIeavM9bQPJUVozBpeVpBYj4Um1sIfxHE
 AQs3OjOASyF8O7WZik22smPphUT8Q+FeBiZlh36jWI0akNXu/E+hPiI7NTo7eCv3PQ
 H7H0IStviAjAg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E49F7C009;
 Wed, 28 Sep 2022 23:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664401996; bh=BHV/yJbIkGK5qQNJNI3iNQ3gbP+uXMdXAVbx7REK9Go=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=3vq8WmaRPHEHacUrTeCpJZ7fB9QV5nwCbyyXxvRxw/yfFKWDbg/vUHcWK8ikg3a5S
 1maclwvEeS1YqcrPN2DgYP6PRLP3QaKOZ1tspvBqaxKtQ3+PrldQnfvol58tLXdiAC
 v0tyImF+5cQalVeNfeWNPwo9NbTmlum7t5JfQ3OtIje6mubFVvt0EIGpUL2Rrcvn+5
 6SQ/cclQZVQ92GeVmYnv6tcOEYEpFRxtgjDQ1LoLoHdAAyjp9T4ccQAkhmyjcor5rk
 cS+R4jdVpmjAIYBQLFF7/sxlAciHi4mfJQKmCUmgL47ubuMfbupa8j2Phx35IJOk7q
 cMhxvJanPZ6NQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c428fee3;
 Wed, 28 Sep 2022 21:53:11 +0000 (UTC)
Date: Thu, 29 Sep 2022 06:52:56 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YzTCOGCo5mIxwf9S@codewreck.org>
References: <00000000000015ac7905e97ebaed@google.com>
 <YzQuoqyGsooyDfId@codewreck.org> <YzQ12+jtARpwS5bw@unreal>
 <1783490.kFEjeSjHVE@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1783490.kFEjeSjHVE@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Wed, Sep 28,
 2022 at 02:57:07PM
 +0200: > OK, maybe it's just me, but ask yourself Leon, if you were the only
 guy left > (i.e. Dominique) still actively taking care for 9 [...] 
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
X-Headers-End: 1odezc-005wi6-Fn
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
Cc: lucho@ionkov.net, Leon Romanovsky <leon@kernel.org>, ericvh@gmail.com,
 netdev@vger.kernel.org,
 syzbot <syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Wed, Sep 28, 2022 at 02:57:07PM +0200:
> OK, maybe it's just me, but ask yourself Leon, if you were the only guy left 
> (i.e. Dominique) still actively taking care for 9p, would those exactly be 
> motivating phrases for your efforts? Just saying.

I didn't plan on replying (happy to disagree), but I'm actually grateful
for Leon to have taken the time to look here: Thank you!
While I probably would also have spotted the error (the change is
fresh), it saved me time even if you account for some bikeshedding.

(Not particularly happy with the amount of time I can allocate to 9p nor
the maintainance work I'm doing by the way, but I guess it's better than
leaving it completely unmaintained)

> From technical perspective, yes, destruction in reverse order is usually the 
> better way to go. Whether I would carve that in stone, without any exception, 
> probably not.

I think it's a tradeoff really.
Unrolling in place is great, don't get me wrong, but it's also easy to
miss things when adding code later on -- we actually just did that and
got another kasan report which made me factor things in to future-proof
the code.

Having a single place of truth that knows how to "untangle" and properly
free a struct, making sure it is noop for parts of the struct that
haven't been initialized yet, is less of a burden for me to think about.


... Just happened to be wrong about the "making sure it's noop" part
because I didn't check properly and my mental model had close functions
noop on NULL clnt->priv, like free functions...
(Uh, actually it is for RDMA, so the "problem" was that it left
clnt->trans set after later errors -- but conversely virtio's close
doesn't check so also had the problem and we really must ensure we don't
close something not open)

Anyway, I've sent a couple of patch (even fixing up the order to match
in create/destroy), I'll consider this closed.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
