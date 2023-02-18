Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 718C969B88B
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 08:49:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTHyC-0007Zh-17;
	Sat, 18 Feb 2023 07:49:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTHyA-0007Zb-5X
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 07:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SNQrITH6He6cyqDtohKqoAHimWnNUzPJH2XwvQbg/M0=; b=KSTcgQIPApWEmBXcfdKm2Wv3bL
 eCcn2X0pEndGSBn+25NtmYjKxozL22IMJSiUj0v4OA5IY42Ip5h01CqIow7+iXEsR54fVN/oZQjeg
 KL57ojIADcfP/UvORnAxNO5b1r537QTWpN/tlxKsKz8+lYXMdeTBH4zknxIuLo+/cTOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SNQrITH6He6cyqDtohKqoAHimWnNUzPJH2XwvQbg/M0=; b=EtTvzONFP1V2RRwYu3kDsTFGlu
 pe7RiHojJa9SrPzykah+uXSIS0WZOwpGQI8i+ubXrm6fCftuRmJF3T7H5snfhYOJa6TOKNdxzLruz
 +S8OD29wyNsSWE2JlYDLFA8IESHdGZSPjbly6ny9RI5FILSifzOOF7uYMCqduoO95cqM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTHy6-008Dte-4Z for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 07:49:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4D6B6C01E; Sat, 18 Feb 2023 08:49:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676706571; bh=SNQrITH6He6cyqDtohKqoAHimWnNUzPJH2XwvQbg/M0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JS5KXU4FKrbNhBKW5Blw6jUfAfcNRgKQujmRHI/Xv9y34Nk9A2ntsMHmoI8XdOEhk
 wGXgWn8ajn6nli/xt37l6PNmEBdf/6Ovgum7Pq8FEY9BiYqqTHllzXJqPtlFVJK9mz
 oFoELedp+tCLwxflPTVk6zUReBPXwJxjd2qM1cTs6+uofBE5EQS6V6WNHCJM2EZpzg
 pgDr5sh5/O1w8fjYosuDq4FFM7Khtcmex12fjQ1uzxmcPHW1rJiVxvo4gcsvS+01kY
 qGoqfCuSs3Q+YJFU3Lt2e6Id4nWu3Vinw8hQDd1hFvCVdO8g/v74XIYWd6yhH0ww8Z
 2lTzOWHs5DYDg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 8FD06C009;
 Sat, 18 Feb 2023 08:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676706570; bh=SNQrITH6He6cyqDtohKqoAHimWnNUzPJH2XwvQbg/M0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qiivNhLQc5gQ9M0Bn1CWrePFSoYcpOnRmkg4sGZOQzsgc1MGBKcsha28EyWcmPrl0
 h6KCVUk+DAl4dob68e3ivlq2VAoC6o4t8OFbb2KJXrNeigZz3gIBKXAcsakyIsRQY0
 UWIAbDAOikNYsXqHUNpqyeSjT+7VbeZ82TN8unh2bbv1lC1GS9EIRMiWA+PGOnNH5A
 MubQpCeIAd0CvHG9Z5UjyHYA+V5RtJEklUlAPYmPeGgPCAlSkStIC3+FtD/7vQ5Cot
 0MhY5Ur3Y3sQpwDr+kY1KFiEOXu7VgviRn1x8mzM7rMDP2BRwHf82LmLYeiexXT9Gt
 Yuq7W4nhL2HdQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f49989bc;
 Sat, 18 Feb 2023 07:49:01 +0000 (UTC)
Date: Sat, 18 Feb 2023 16:48:46 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CC3qyBFSFVI/S0@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-1-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:12AM
 +0000: > I'm gonna definitely submit the first couple patches as they are
 > fairly harmless - but would like to submit the whole series to [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTHy6-008Dte-4Z
Subject: Re: [V9fs-developer] [PATCH v4 00/11] Performance fixes for 9p
 filesystem
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:12AM +0000:
> I'm gonna definitely submit the first couple patches as they are
> fairly harmless - but would like to submit the whole series to the
> upcoming merge window.

Could you take the three patches I have in my 9p-next branch:
https://github.com/martinetd/linux/commits/9p-next

If you're going to submit some?
The async stuff still isn't good, but there three patches have had
reviews and should be good to go.

(I guess we can just send Linus two pull requests for 9p, but it doesn't
really make sense given the low number of patches)

> Would appreciate reviews.

Just one first review on the form: let's start a new thread for every
new revision of the patchset.

I also used to relink from the pervious cover letter and thought that
made more sense at the time, but I was told to split threads a while ago
and now I'm trying some new tools based on lkml.kernel.org's public
inbox thread view I can agree it's much simpler to grab a batch of patch
if older versions aren't mixed in the thread.
(For the curious, I'm just grabbing the thread to review on an e-ink
reader for my eyes, but there's also b4 that I've been meaning to try at
some point -- https://b4.docs.kernel.org/en/latest/ -- that will likely
work the same)

Anyway, off to look at patches a bit.

-- 
Dominiquee


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
