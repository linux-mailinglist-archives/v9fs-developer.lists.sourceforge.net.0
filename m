Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA4E5769E7
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:31:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCTq7-00084s-G4; Fri, 15 Jul 2022 22:31:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oCTq5-00084m-Tt
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XVWBfw25/xbELFTjDfF1NZ0Lppo6CvFhF/8lmkwM8Tc=; b=cfWErSzd1ZUoB7+Bdct3zkvvPF
 jPjYj22B24x5m0lp47XxkBgaRS5UsEoBvBrXAZjRGgf3efdmd1H9LiWmLLa1Qv3W8DOBFKOrTdTea
 wxGAcvX5zPSQONo5F+0Pfp9T0R7O/fRkdV7L9l7F17JhwpPir51XHDGLMILc6gJ/SUGA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XVWBfw25/xbELFTjDfF1NZ0Lppo6CvFhF/8lmkwM8Tc=; b=FqW3i3PTl+5vG4N3vCB0FCzMcF
 npVcA3Czlz+sQ0ybwm4r7dXKJVSAmFu92tYhM6/k6okEYjhPsUuJOPGAaGQeuwyDcFJ4lxcWCdV7x
 MwceC0LJYHBc0ABfrqXyIIy1FUQlxQUMg0ikOnG1X1dV8vTHPCSfx4Sb0+fBvQV33zP4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCTq3-000Wvo-TO
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:31:12 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 94C94C009; Sat, 16 Jul 2022 00:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657924265; bh=XVWBfw25/xbELFTjDfF1NZ0Lppo6CvFhF/8lmkwM8Tc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y0l4aIPQuM9ZuawOHbdnwDk2TF9dPuWBEvzrKzLGpgTjDHRIR5EPAJ1nCZxP/YrNs
 +P/2ivp8/TZfFF2FCnBQNbCdY3YDNCuYARBr9mHvUFcfAHCHbDAXqb8dXNDCEZN2mI
 wrDPZFLmS+8ve8bObhvJ1FKnEFkR7hWTJjs47IsmOfmXSr4DGddEqjhbiGci/o08hC
 aREWswUGHyxqC5kFlObTLWEcsuXor8e96Uq2HWr3U9alT6+oq0zrUSr4r1yGAYkSqK
 AF9MGHg9cCGbUdpdFhbhHDgoCTkmk0EUvywYo5fORRxPo+IjhcXbiDEOTQwumHDCR8
 CVGYduC+Luzvw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E2533C009;
 Sat, 16 Jul 2022 00:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657924265; bh=XVWBfw25/xbELFTjDfF1NZ0Lppo6CvFhF/8lmkwM8Tc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y0l4aIPQuM9ZuawOHbdnwDk2TF9dPuWBEvzrKzLGpgTjDHRIR5EPAJ1nCZxP/YrNs
 +P/2ivp8/TZfFF2FCnBQNbCdY3YDNCuYARBr9mHvUFcfAHCHbDAXqb8dXNDCEZN2mI
 wrDPZFLmS+8ve8bObhvJ1FKnEFkR7hWTJjs47IsmOfmXSr4DGddEqjhbiGci/o08hC
 aREWswUGHyxqC5kFlObTLWEcsuXor8e96Uq2HWr3U9alT6+oq0zrUSr4r1yGAYkSqK
 AF9MGHg9cCGbUdpdFhbhHDgoCTkmk0EUvywYo5fORRxPo+IjhcXbiDEOTQwumHDCR8
 CVGYduC+Luzvw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 83975ade;
 Fri, 15 Jul 2022 22:31:00 +0000 (UTC)
Date: Sat, 16 Jul 2022 07:30:45 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YtHqlVx9/joj+AXH@codewreck.org>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1657920926.git.linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Fri, Jul 15,
 2022 at 11:35:26PM
 +0200: > * Patches 7..11 tremendously reduce unnecessarily huge 9p message
 sizes and > therefore provide performance gain as well. So far [...] 
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
X-Headers-End: 1oCTq3-000Wvo-TO
Subject: Re: [V9fs-developer] [PATCH v6 00/11] remove msize limit in virtio
 transport
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Fri, Jul 15, 2022 at 11:35:26PM +0200:
> * Patches 7..11 tremendously reduce unnecessarily huge 9p message sizes and
>   therefore provide performance gain as well. So far, almost all 9p messages
>   simply allocated message buffers exactly msize large, even for messages
>   that actually just needed few bytes. So these patches make sense by
>   themselves, independent of this overall series, however for this series
>   even more, because the larger msize, the more this issue would have hurt
>   otherwise.

Unless they got stuck somewhere the mails are missing patches 10 and 11,
one too many 0s to git send-email ?

I'll do a quick review from github commit meanwhile
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
