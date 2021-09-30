Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A834D41E48A
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Oct 2021 01:01:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mW53O-0003tT-7H; Thu, 30 Sep 2021 23:01:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1mW53L-0003tK-Kt
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Sep 2021 23:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=co/eYQssZq7rS2Huuw9XLYWOjbjK+U6Qfir0717BDLk=; b=UwPIFqEacAgbuVw0b42fOL35N0
 p8cuGhkUXghBomY+cWkNPAG57oHr7h/dMww0yx2nlPkcg+1qShW0LC4Sco1U/mFThRIjrNyx2z/Gc
 zWz0+rS1/nBdBIk7Q8KzjvefHHKjmM8o7MD0NqRbQ4hC1YhNGJgazB6WgCIAKfEt1G6I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=co/eYQssZq7rS2Huuw9XLYWOjbjK+U6Qfir0717BDLk=; b=YqPYVWI5EtMiYGPLU69Gl+WWAn
 VhyWakfF3MKpz7GisWlD/+bP1s9DkuY/17uAgHhH+oJb5qZkQp2kBCFoIFRWCCKBohIDlbDldTXFK
 +uzWT0Y7Zo7/xfAp/RWrpLyRmrmVKZj+7HmAXRFE2tQPXrFtC8MceTKMP49ObL9lyGSo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mW53F-0005Y9-Lb
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Sep 2021 23:01:23 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 10830C01D; Fri,  1 Oct 2021 01:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1633042867; bh=co/eYQssZq7rS2Huuw9XLYWOjbjK+U6Qfir0717BDLk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DYGkjuH8ZeuV7vFva+mw0mjlVZMl3feOY2QdbjW0+Z82jcxMHo6MCQOZCJx3M7t0o
 OQ6bSHnJFei3L66gdPwnx6JeV3lMx4zwyB3iJ/FV1Es++8VVppcVoqnS8lMJnp17w+
 mYqrKZuZSc+i54NoMV9TQY1tcjR5HM5scR/l1UWmRifrecYN8Ah6Gan47BnVFUHYUw
 XSLOxRnZWzAghEBi5ng1DmQfy2KwmZivhQngpziVH4qzdPKzbE7srqw7IurXtwkatI
 C7gFiLOLVv9WS+bSRcy4yX4Wu7JPbs5D75k/4EDbFYX26KWoeRaMtn652ATyf5UsjG
 WSKOdR0w2Jsow==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 919EEC009;
 Fri,  1 Oct 2021 01:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1633042865; bh=co/eYQssZq7rS2Huuw9XLYWOjbjK+U6Qfir0717BDLk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jv6hq4hHavym9uuapAsbRAqnpUvFcxHyLoKionzlfa4d6jTVc5dE1ShN5SKpMs9/N
 q5wLHfPzPlcKPyT38dz7XjaUoPJ7W9eTQ5Yv+A+HcjTE31Vp5eTlaaIJOxRiaUfA/n
 W3tej0aVfscvGImFBNLJ7tjLIB9natcCUfJ1OQzHvbE37/mtOTxSSXEIuAYhGWjyQx
 mXprr5Vrc/agXXfjHxD/nzXnzs1BEgfQHx1mehNTEnP5+cxH90h/IhqR2eG2ZUx+Mp
 XxlQCw4OSb80YB4GKrfhNWu0mSiHGCTPsMvNoKRekoO80BILhiyPfpjecgGHpEuFvx
 rB3vG9kCtyaow==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 18c6b030;
 Thu, 30 Sep 2021 23:00:59 +0000 (UTC)
Date: Fri, 1 Oct 2021 08:00:44 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Message-ID: <YVZBm+uG2k22x8Yt@codewreck.org>
References: <20210930212455.30047-1-sohaib.amhmd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210930212455.30047-1-sohaib.amhmd@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sohaib Mohamed wrote on Thu, Sep 30,
 2021 at 11:24:54PM +0200:
 > Warnings found by checkpatch.pl All this code is gone in linux-next (fscache
 work), so skipping this patch. The other patch is good,
 I'll take it tonight/this weekend - thanks for the cleanups! 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mW53F-0005Y9-Lb
Subject: Re: [V9fs-developer] [PATCH] fs: 9p: cache.h: cleanup some format
 warning
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Sohaib Mohamed wrote on Thu, Sep 30, 2021 at 11:24:54PM +0200:
> Warnings found by checkpatch.pl

All this code is gone in linux-next (fscache work), so skipping this
patch.

The other patch is good, I'll take it tonight/this weekend - thanks for
the cleanups!

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
