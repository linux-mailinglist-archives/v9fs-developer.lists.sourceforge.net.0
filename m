Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ED6633A6B
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 11:46:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxQnS-0003YT-3v;
	Tue, 22 Nov 2022 10:46:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1oxQnO-0003YL-0o
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 10:46:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n8rOvLnkpr7DU4/g+Ojdkm89PZHuDF2laztQuxOpyCI=; b=UcBtmOGv5UXkiNpFKZDgYJ+gyO
 oX6ecF9823j9gCUDqJNGn3gBF7csQc2ORbNO2kPe7mgG5Qfmfy2xX1YKCiGGl/3ZkthE8tKQWRaJb
 wGwuRrS3H+bKOPHh4FzjjyJBL0i8BnUmuYcr/w2nAjEJw/Niqmrb3apSmP23aMDKtuaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n8rOvLnkpr7DU4/g+Ojdkm89PZHuDF2laztQuxOpyCI=; b=VJKm5vG3xSp2uHYYUEKG+qxrIh
 0u0wo/ZuTwUbUX0NdLR6YeTVry2kp1PlR8fIGyOqfaJz91Y+zVbBSD/WOTYTcctWNwKCMK0UN9X0m
 /4lx20j4qUDJuMV4h1kBl3znhFkICG/otK2fBJIw49RVJSkxpog8WzwTEf7v+i05wFGo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxQnK-00BTCL-12 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 10:46:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=n8rOvLnkpr7DU4/g+Ojdkm89PZHuDF2laztQuxOpyCI=; b=lpWTvJ3v5Va4Mt6qKKjEdQ08qC
 pCLdCeTc/pJMUuHkSbDybeq8lVRBQGuRvxVvJuyLnGVECKmdbUKLiadFAiRUGZInxM4d3vWlEQcgj
 c8UzV9kJN9mMMaDwkRgS7oF0AAjM/PFFK4UGcoB67QIiCREXE17WeMJC+mbx9edCmQRee4xaxP/3B
 3QJ/TryXBGJm610Ilr4ndx1TRLZevHVRhN1hI097ZU/JWGhcPpgvlA+tGwioI/wI9XpYTsiKMfg3Q
 sTsfGPXYNcfiHZDrHBpMPRm5QXQwj7ZLYvhzLlc8QFTO05IdEB7vo4CQ+vN53OL3qvZmR71+84Uvq
 LuWN9kDK6D5ognMMybyCN7EvDdD15uo6KpEkS7pFysYXyh6/Cfp+OtX51/V6RuAHjZhT6taEwRwZg
 g9QobxjQR1Wb8+Lvl9aEUuRyYvGw25jzEnJa4APJfXrnVVto/HdvjDA0TE5Yi19LOLjkTtHmr58N0
 dKtgYNC26090VksegOCTK3oJ5U9562vFuuyA3/B95+8GVMriny2Yz4BtV+oea2X/WFty7ZLXZhmFF
 tjZMhWE7+58TshFnaBTdQJafN8imr7ylAHLJTRSeKtBj9uhN8pshSNv7ferWpt3TzdlOuup5O03K7
 Al4U3tDCppEDyXhaWEgemHEFAkmgEKTU1QktQbyfY=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 22 Nov 2022 11:46:13 +0100
Message-ID: <2955638.xlpIv7zoH0@silver>
In-Reply-To: <Y3waS1oq4BmitGLT@codewreck.org>
References: <20221118135542.63400-1-asmadeus@codewreck.org>
 <37091478.n1eaNAWdo1@silver> <Y3waS1oq4BmitGLT@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tuesday, November 22,
 2022 1:39:39 AM CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Mon, Nov 21, 2022 at 05:35:56PM +0100:
 > > Looks good (except of s/rreq/req/ mentioned by Stefan [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1oxQnK-00BTCL-12
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p/xen: check logical size for
 buffer size
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: v9fs-developer@lists.sourceforge.net,
 Stefano Stabellini <sstabellini@kernel.org>, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tuesday, November 22, 2022 1:39:39 AM CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Mon, Nov 21, 2022 at 05:35:56PM +0100:
> > Looks good (except of s/rreq/req/ mentioned by Stefano already).
> 
> Thanks for the review (I've taken this as a 'reviewed-by' under the
> assumption of that fix, sorry for being a bit aggressive at collecting
> these -- I'd rather overcredit work being done than the other way around)

Yes, you can add my RB of course!

> I'll send this and the three other commits in my 9p-next branch to Linus
> tomorrow around this time:
> https://github.com/martinetd/linux/commits/9p-next
> 
> 
> > >  		memcpy(&req->rc, &h, sizeof(h));
> > 
> > Is that really OK?
> > 
> > 1. `h` is of type xen_9pfs_header and declared as packed, whereas `rc` is 
of 
> >    type p9_fcall not declared as packed.
> > 
> > 2. Probably a bit dangerous to assume the layout of xen_9pfs_header being 
in
> >    sync with the starting layout of p9_fcall without any compile-time 
> >    assertion?
> 
> I've done this in a follow up that will be sent to Linus later as per
> Stefano's suggestion.

Great, one patch less to send, thanks! :)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
