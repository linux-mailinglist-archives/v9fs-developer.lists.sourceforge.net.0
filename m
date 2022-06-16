Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0984454E280
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jun 2022 15:52:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1puo-0007H3-S5; Thu, 16 Jun 2022 13:52:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o1pun-0007Gx-2c
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 13:52:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Hb1WIC7htcZUnTVocd9sTq0i8DWUd+UIspEOkNnz10=; b=GGceyJMTTJ91+T1R4TxTqfpDx2
 500ugSxwgVoquPVDfI0LZClHramiHWHfGjN0aKjQjwPrVVa56yY4B/dG76tMf6dnVuBFZN1fUtsa+
 wFYJnjXQUCNH7v4XSr0HIGd2mIrR3pefGyQtrs5JlxD4s0Hneezp2IpGkQOc/2ZvSnTo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2Hb1WIC7htcZUnTVocd9sTq0i8DWUd+UIspEOkNnz10=; b=EjcnYzkIEck+4k2A3a4Tdc4LQK
 cUlX0pVR0LGa8oMNeSFOHmw3/CobKBNxwQh0AQYauD6BCqJ/5yX9xfv1KXwB3hgKwej99JyHE3k38
 3OF/gDI0QVwzqKg3sVkAt/AvxWi5DkCxRaLwjNs0dXFxZwo8zm5oksaBTBADx2J9eTew=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1pug-0003td-H5
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 13:52:03 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 44DE9C01F; Thu, 16 Jun 2022 15:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655387513; bh=2Hb1WIC7htcZUnTVocd9sTq0i8DWUd+UIspEOkNnz10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rdxn534uKTaSDTnJiKZKi3gw63uExrASQ8SFeMr3Ze1hbArPYP1vZ4blzabc8AMAA
 tRTYSmBpprD6zoelusqs7oaZOgz8lZxCCmEPCSeh8nw109GGqJjdPFP8MV7ieaslqq
 JRO90MUCrLC2rGp3Cv2VCAgZt0mOYsNk5nDBgmu+y/SWxFNyVLRpoypJz/NS71r/S3
 mFQWkcluCHS0ml4fH0tpAbVHkTZvpIyXRtsxdV2B4VSGPbKf5K9NGCgsJ0KtkNZPgN
 iKjIitmiBo1KOxxv7lmA/O6fk0ZCseUFiLa0Tqh0sT8Zc7D0pPrfl8T0S9XYeXltUH
 HQad/TpMqM7WA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 319D6C009;
 Thu, 16 Jun 2022 15:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655387512; bh=2Hb1WIC7htcZUnTVocd9sTq0i8DWUd+UIspEOkNnz10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QTlFwM8XKRVvm2Y//7ChStOXQIIwD2Lu4eHvWvT2h0qHXFRtDtdO1mT0YWLnSyG6X
 nYBJiK36PBA9rueqp54TNCCcrmJzMC4GMxd0km7GjC3PuSd1Y+/vvfTGBpSjtIvY1w
 XcprBK83g+J5v1zhy32WW0zgbl0TyxGpZF7uvVDkYsz33vcbYKCz5N/BKodb5eKryM
 0nM/nilLra97HaoleGvFSO77l8v/5n96g0BDhPA5TjLwjIblOO3u1rmzjSvBt06t5c
 IqKmEZySzErOC20CfAPn7X3N7ApmdVnIgR3qFJs5AKe3++/Dzh/HzTTeoDFqHemJlH
 N0JIVIUu35rIw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c6d6cc5f;
 Thu, 16 Jun 2022 13:51:46 +0000 (UTC)
Date: Thu, 16 Jun 2022 22:51:31 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yqs1Y8G/Emi/q+S2@codewreck.org>
References: <YqW5s+GQZwZ/DP5q@codewreck.org> <YqiC8luskkxUftQl@codewreck.org>
 <1796737.mFSqR1lx0c@silver> <22073313.PYDa2UxuuP@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22073313.PYDa2UxuuP@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Jun 16,
 2022 at 03:35:59PM
 +0200: > 2. I fixed the conflict and gave your patch a test spin, and it
 triggers > the BUG_ON(!fid); that you added with that patch. Bac [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o1pug-0003td-H5
Subject: Re: [V9fs-developer] [PATCH] 9p: fix EBADF errors in cached mode
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Jun 16, 2022 at 03:35:59PM +0200:
> 2. I fixed the conflict and gave your patch a test spin, and it triggers
> the BUG_ON(!fid); that you added with that patch. Backtrace based on
> 30306f6194ca ("Merge tag 'hardening-v5.19-rc3' ..."):

hm, that's probably the version I sent without the fallback to
private_data fid if writeback fid was sent (I've only commented without
sending a v2)

> 1. your EBADF patch is based on you recent get/put refactoring patch, so it won't apply on stable.

ugh, you are correct, that was wrong as well in the version I sent by
mail... I've hurried that way too much.

The patch that's currently on the tip of my 9p-next branch should be
alright though, I'll resend it now so you can apply cleanly if you don't
want to fetch https://github.com/martinetd/linux/commits/9p-next

> Did your patch work there for you? I mean I have not applied the other pending
> 9p patches, but they should not really make difference, right? I won't have
> time today, but I will continue to look at it tomorrow. If you already had
> some thoughts on this, that would be great of course.

Yes, my version passes basic tests at least, and I could no longer
reproduce the problem.

Without the if (!fid) fid = file->private_data though it does fail
horribly like you've found out.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
