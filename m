Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BDB63D6F8
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 14:41:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0NL4-0000vD-Cy;
	Wed, 30 Nov 2022 13:41:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p0NKr-0000v0-AT
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wK7gil3l4vmYRUAOnl5jdLn8zStI0QDqyB8y/TsL16M=; b=ZvL20XmyxDf7l/7gRPGQY68eWO
 T4pUbc9DCH+AdNiszkGGeG+3zKLPHaU7HnY5QNjQSpal4dN0avTBfcVi8DKFQUlzNfqW1z+d3eQy0
 UXP7CyEayj6YVm2j3eX8FuxqeNZfkC1rEhj958shyz0D0Fvj257zBLsmHRYW4fU3VP4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wK7gil3l4vmYRUAOnl5jdLn8zStI0QDqyB8y/TsL16M=; b=AVzuPjcsiqYQUtZqCC+kzq44mH
 HAa/QPrkErxYSaJdabUdseYitRJgRKyT04i2gtt9dgZya+hwYdBk1dmiELymPvuVZbZSgXavIDPIo
 5l4cgi3NdWT3aJr73FiQCXcRZJiz80clh2zuIHfOv9I/dWeJsCcsr8ge0K8+kDICZuWk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0NKm-001Rke-La for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:41:09 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D2311C01E; Wed, 30 Nov 2022 14:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669815670; bh=wK7gil3l4vmYRUAOnl5jdLn8zStI0QDqyB8y/TsL16M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r+BMqFUF9WKhW5PNf+DWOmHLbcJkGyHVAL+R0MLQ1Kr8M5FadO0kfkdjfObPHvptQ
 9cf4j3/m2WOGjbVJEiFZMmm6CS3Wl1BcTFCIo0xmk3tXpSKxFWW8v8SHBnRArkuR81
 /r/azHxfNFtp3PmgW6PpqE2ETOiz81BS+KPkmX1ZEfHFj0TQc6keWXfr2WhaiQB7CZ
 Ef5tYMo/68sm1fkgXC+xHTRQ2Hq0n6ZbV3ji/yu3bK53rOqpU564liR5kuSXBAYj1p
 EYVtRIPGEGWZnLxLgJHe6KfqJbjpVBoU/m/wroLxtroq4bOiWtxvWmESWsfag/tCMC
 bb1NFfFdU4QaQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 974EFC009;
 Wed, 30 Nov 2022 14:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669815670; bh=wK7gil3l4vmYRUAOnl5jdLn8zStI0QDqyB8y/TsL16M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r+BMqFUF9WKhW5PNf+DWOmHLbcJkGyHVAL+R0MLQ1Kr8M5FadO0kfkdjfObPHvptQ
 9cf4j3/m2WOGjbVJEiFZMmm6CS3Wl1BcTFCIo0xmk3tXpSKxFWW8v8SHBnRArkuR81
 /r/azHxfNFtp3PmgW6PpqE2ETOiz81BS+KPkmX1ZEfHFj0TQc6keWXfr2WhaiQB7CZ
 Ef5tYMo/68sm1fkgXC+xHTRQ2Hq0n6ZbV3ji/yu3bK53rOqpU564liR5kuSXBAYj1p
 EYVtRIPGEGWZnLxLgJHe6KfqJbjpVBoU/m/wroLxtroq4bOiWtxvWmESWsfag/tCMC
 bb1NFfFdU4QaQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 2100fd79;
 Wed, 30 Nov 2022 13:40:55 +0000 (UTC)
Date: Wed, 30 Nov 2022 22:40:40 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y4ddWNXozZyH+fnc@codewreck.org>
References: <20221129162251.90790-1-schspa@gmail.com>
 <2356667.R3SNuAaExM@silver> <Y4dSfYoU6F8+D8ac@codewreck.org>
 <4084178.bTz7GqEF8p@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4084178.bTz7GqEF8p@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Wed, Nov 30,
 2022 at 02:25:59PM
 +0100: > > I'm also not convinced it'd fix anything here, we're not talking
 about a > > real server but about a potential attacker -- if [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p0NKm-001Rke-La
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
 Schspa Shi <schspa@gmail.com>, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Wed, Nov 30, 2022 at 02:25:59PM +0100:
> > I'm also not convinced it'd fix anything here, we're not talking about a
> > real server but about a potential attacker -- if a reply comes in with
> > the next tag while we're allocating it, we'll get the exact same problem
> > as we have right now.
> > Frankly, 9p has no security at all so I'm not sure this is something we
> > really need to worry about, but bugs are bugs so we might as well fix
> > them if someone has the time for that...
> > 
> > Anyway, I can appreciate that logs will definitely be easier to read, so
> > an option to voluntarily switch to cyclic allocation would be more than
> > welcome as a first step and shouldn't be too hard to do...
> 
> I would actually do it the other way around: generating continuous sequential
> tags by default and only reverting back to dense tags if requested by mount
> option.
> 
> Is there any server implementation known to rely on current dense tag
> generation?

No, I thought ganesha did when we discussed it last time, but checked
just now and it appears to be correct.

I had a quick look at other servers I have around (diod uses a plain
list, libixp uses a bucket list like ganesha...), but there are so many
9p servers out here that I'm far from keeping track...

Happy to give it a try and see who complains...

> If there is really some exotic server somewhere that uses e.g. a simple
> constant size array to lookup tags and nobody is able to replace that array by
> a hash table or something for whatever reason, then I am pretty sure that
> server is limited at other ends as well (e.g. small 'msize'). So what we could
> do is adjusting the default behaviour according to the other side and allow to
> explicitly set both sequential and dense tags by mount option (i.e. not just
> a boolean mount option).

Well, TVERSION doesn't have much negotiation capability aside of msize,
not sure what to suggest here...


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
