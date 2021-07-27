Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFED73D7821
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Jul 2021 16:07:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m8NkO-0004Jp-IE; Tue, 27 Jul 2021 14:07:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1m8NkN-0004Ji-3R
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 14:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QI9NM+ntTRyETfWyMRmRllPOnsq2Qxq/y2QwpHonQpc=; b=HSnj4N5Q9nzw1NSqPjDy9qN2Qz
 rpuGePrSnv3PRQ8AO0qFM7sgPw1x7HojE4E9C5iDTdrXd5AIw96TWNUIOaIHDBwhpYRgKM1xPYGiR
 98Byf0dx/nNzD9v7m9vdqq00ocnEvKEa0j6zL06QqQ0yHsQbLfcOuDAWSdXf3eHrnj80=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QI9NM+ntTRyETfWyMRmRllPOnsq2Qxq/y2QwpHonQpc=; b=J00zarJUF+ZCss8qesZTnynLcw
 0ehppnUXpcR+4u+LyfY0+yJYpsAIcsg/qX7xGZ/vfmMwe1VpOLrM6PFLGdc872C0LDSxgr2Xb6ojO
 cA48vSdd49vtRm0+dAIyaxCBnU3c9K9ByHtND/D7o914Psq558/PW5aJrk9WNVcGGE88=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8NkF-0008Pk-OC
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 14:07:51 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2A0D0C01E; Tue, 27 Jul 2021 16:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1627394857; bh=QI9NM+ntTRyETfWyMRmRllPOnsq2Qxq/y2QwpHonQpc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PD5r9CB+udLTN59lcofUNZFGQ83dOe+yv2Ptg7UPlGYMgMEtRbaXs3oGLKrxqmdjq
 2JTYnbbC/uGTd5pc7X+bdod6zLsuiqAn4J+M6BOG3IZyJuIcyL04QQKeO1+SYXN/nW
 hoSaTCBHX5IItNgtBuqUqpv0ijTIFmf5GeGtwpiWSSp9cg8slDmbJSQc1HmXdJeDK7
 V8HqEJWi9NBdDNfTHyyiS3ZQ2Nn1LAyTJGZI+sQcbvTAQuMY4fOz9+sgdXafoPTvP2
 RA17zfQLNnn+q/ij/RJk8W1tlwadwH/ey0U/gP/gu6E4/2d4nIC8qS9rIvihaEcL7J
 ZprzO8upwyzBg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id EB9A7C009;
 Tue, 27 Jul 2021 16:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1627394856; bh=QI9NM+ntTRyETfWyMRmRllPOnsq2Qxq/y2QwpHonQpc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pn05Bq1fkIQ5dMWWMMhjFU61rkNfdRvNZ+9xveK8HyiHwQfk4ASNjfg27JEONO2QG
 TUXgeU7ZgPP8Vb4GCcyoXRrJlTcgdaykkuLMUwcbs+70Mk8Pk5lfqxb4ChNuw8i5GG
 ZTmWvOM3kZN5x0BdrIHc3Hu7obCOTOHtcAKrFK2Rw8Kyx2VqmBb8/ZkurUREZuNutl
 YV+RnVQLTtemm99ui7jjZLNu2fgmsEf3+wnACbaEL4ZyqHg3QPsO5MIcwLvlYUGV20
 RgXsVQiQrnZ2iAjrByQ9VFYGEeCFetSuMQA5S0rkNBWdoXCr7/4ihXjlwZXhg+FxLc
 Bf3Gq1KcBGtcg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f1d2c809;
 Tue, 27 Jul 2021 14:07:29 +0000 (UTC)
Date: Tue, 27 Jul 2021 23:07:14 +0900
From: asmadeus@codewreck.org
To: Harshvardhan Jha <harshvardhan.jha@oracle.com>
Message-ID: <YQATEmmSsYABH/cu@codewreck.org>
References: <alpine.DEB.2.21.2107261654130.10122@sstabellini-ThinkPad-T480s>
 <20210727000709.225032-1-harshvardhan.jha@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210727000709.225032-1-harshvardhan.jha@oracle.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1m8NkF-0008Pk-OC
Subject: Re: [V9fs-developer] [PATCH] 9p/xen: Fix end of loop tests for
 list_for_each_entry
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
 linux-kernel@vger.kernel.org, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Harshvardhan Jha wrote on Tue, Jul 27, 2021 at 05:37:10AM +0530:
> This patch addresses the following problems:
>  - priv can never be NULL, so this part of the check is useless
>  - if the loop ran through the whole list, priv->client is invalid and
> it is more appropriate and sufficient to check for the end of
> list_for_each_entry loop condition.
> 
> Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>

Alright, taken and pushed to linux-next.
I'll send it to Linus next week-ish

FWIW, this isn't a merge so messing with the commit message is fine and
you didn't really need to resend (either is fine), but if you do for
next time please tag in the subject it's a v2 (e.g. [PATCH v2]),
optionally with a changelog below the three dashes that won't be
included in the final commit message (not really useful here as we discussed
the change just before, but for bigger subsystems it can help)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
