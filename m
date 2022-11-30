Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AF963CF25
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 07:17:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0GP0-0002VA-UA;
	Wed, 30 Nov 2022 06:17:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p0GOz-0002V2-TE
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 06:17:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W9hCW6luP/6v5RJwLkkF/k888Scy0g/o6MDl4j/XRHU=; b=cvVd5UF9nEfQ/gTxQ5FdlQhJC8
 4YryYOP0daWQvxQl72nsbb54YDYA/j8NoQHf5cCMYGTG9wExfvB8+yCODQWz4b+LrcN61imuGboBb
 XBzQL5Vcow3GT0G8dhdlcs6m2H7DgRzSTxHV1C4+8otRPDtihTNA6/CurIPcEBiayBKM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W9hCW6luP/6v5RJwLkkF/k888Scy0g/o6MDl4j/XRHU=; b=QD6pT/2emzicbuCKeGkL3k3Hoq
 8VPWsbQhhlm/BceEiFB+8fXP2M0kHYpq3QhtGvrfndBWKf1V10uYbx9JbF7SKciZ+ZTjNp2Kv6amz
 7+pYKT13cjYdWnQlwxv5rp1xhg5xpD9SY5CCaAPqOV6TMFfjsszBJHf+PEXP5ZX16EiU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0GOv-000xkz-JB for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 06:17:01 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 8FE71C01C; Wed, 30 Nov 2022 07:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669789018; bh=W9hCW6luP/6v5RJwLkkF/k888Scy0g/o6MDl4j/XRHU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1/WStNFu/qvvUeJzbRrYmBBmJm5F3XViTKHrJOCR3zXkxpll1kHROlVW4jx4zE1Wj
 vDMjfYZumSudB1G6Q92ZlEOrFYzQEh5z0S/WGcclSF4iWIEquytdGstE58SC48lNpc
 LvRn1hcUVOpvmCE5Y8Y2+AINouobOy8au46aeONML6m9zpHrcqZffWM+Bwxvpy4vkn
 oPGPqviOM+KYE9KKF4ZCMpAcWjEk8C+/viR0zzwX498IYZ8FAlJUcpnr/aLiUykbSH
 6p23ieTooboPr4dEeSuBmH2q9nsApN54L9aUjnmYJed+cm2/SXPgLaSkATlWgeav7u
 DUpMcfnt/AHBA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B9D6BC009;
 Wed, 30 Nov 2022 07:16:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669789008; bh=W9hCW6luP/6v5RJwLkkF/k888Scy0g/o6MDl4j/XRHU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BYFRPQXzBgX7gJTqn47e4RxS/7ps97i2zn3eVZuaHgaKv2hDkmzps3FlohwTNURPd
 71YfW1/fCri2W7mzIphgRoxP+AXz1VfbvcEMmCoRmgZRZVEo2PuUopH9hkqk1A+K2g
 ggwUkEBKG2I0UF4cm7ziFvO8ULQJdWdbOBi9nwzrSnFsKYkCmPbI+9cYMjzonE/OJh
 Zk6tjZMWmgbn6zcedPOwCi/kWIffm/JSk1OF5sXivUZYREfQr+JSPaFP0PYraf6pwE
 Icw/YK9dhvyzzUI7EWbdl5aP2GyqmlcMVK3zlir1r8o2BTTKcj4Mk8NYhTshSNuRYm
 GctMFTzkWI/hw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 074f5648;
 Wed, 30 Nov 2022 06:16:32 +0000 (UTC)
Date: Wed, 30 Nov 2022 15:16:17 +0900
From: asmadeus@codewreck.org
To: Schspa Shi <schspa@gmail.com>
Message-ID: <Y4b1MQaEsPRK+3lF@codewreck.org>
References: <20221129162251.90790-1-schspa@gmail.com>
 <Y4aJzjlkkt5VKy0G@codewreck.org> <m2r0xli1mq.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m2r0xli1mq.fsf@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  (fixed Christophe's address,
 hopefully that will do for good...)
 Schspa Shi wrote on Wed, Nov 30, 2022 at 10:22:44AM +0800: > > I'm happy
 to believe we have a race somewhere (even if no sane server > > would produce
 it), but right now I don't see it looking at the [...] 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p0GOv-000xkz-JB
Subject: Re: [V9fs-developer] [PATCH] 9p: fix crash when transaction killed
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
Cc: lucho@ionkov.net, syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

(fixed Christophe's address, hopefully that will do for good...)

Schspa Shi wrote on Wed, Nov 30, 2022 at 10:22:44AM +0800:
> > I'm happy to believe we have a race somewhere (even if no sane server
> > would produce it), but right now I don't see it looking at the code.. :/
> 
> And I think there is a race too. because the syzbot report about 9p fs
> memory corruption multi times.

Yes, no point in denying that :)

> As for the problem, the p9_tag_lookup only takes the rcu_read_lock when
> accessing the IDR, why it doesn't take the p9_client->lock? Maybe the
> root cause is that a lock is missing here.

It shouldn't need to, but happy to try adding it.
For the logic:
 - idr_find is RCU-safe (trusting the comment above it)
 - reqs are alloced in a kmem_cache created with SLAB_TYPESAFE_BY_RCU.
 This means that if we get a req from idr_find, even if it has just been
 freed, it either is still in the state it was freed at (hence refcount
 0, we ignore it) or is another req coming from the same cache (if
 refcount isn't zero, we can check its tag)
 The refcount itself is an atomic operation so doesn't require lock.
 ... And in the off chance I hadn't considered that we're already
 dealing with a new request with the same tag here, we'll be updating
 its status so another receive for it shouldn't use it?...

I don't think adding the client lock helps with anything here, but it'll
certainly simplify this logic as we then are guaranteed not to get
obsolete results from idr_find.

Unfortunately adding a lock will slow things down regardless of
correctness, so it might just make the race much harder to hit without
fixing it and we might not notice that, so it'd be good to understand
the race.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
