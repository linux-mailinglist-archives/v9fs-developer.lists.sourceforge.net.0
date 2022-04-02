Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ED44F03C2
	for <lists+v9fs-developer@lfdr.de>; Sat,  2 Apr 2022 16:06:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1naeOQ-0007o6-OJ; Sat, 02 Apr 2022 14:06:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1naeOP-0007nu-G9
 for v9fs-developer@lists.sourceforge.net; Sat, 02 Apr 2022 14:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QF/L8ZAU7j5y7JRj5btGXMpteEczUHnHYv99nubh5rY=; b=iul1zLEqkxCk1iAbGezDyRtjUl
 KY7IGEmbd8Zhc9teO/d0MsZnFB5In5M2DkpokJbUHuczR/R/UlMjBGzcBiKs6UYdbImIXUTDkAtYL
 Rw3Ojwbd3WFeO8SQfCGuU/uEmlKphyEv+X1pMriyuq/YXc4DhC1z4MNuoNumcW03hHVU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QF/L8ZAU7j5y7JRj5btGXMpteEczUHnHYv99nubh5rY=; b=DQaHey6fAMPrVukO6rdT+0ZxpH
 zDoL+cV3R9CceycVhYprzJvkWc/NLJhA2vqBl7P8ackdi1jnUDg2eyLeLxLOxIP3GO/jFSncRUvvg
 fhrpAthCfGaJ45RMrsAUk8t7MjUiPVPr8qYhNBT0408RlGIbUVIqHeq6JD6NzVCu0Kkc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1naeOM-0007ic-24
 for v9fs-developer@lists.sourceforge.net; Sat, 02 Apr 2022 14:06:16 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 67938C01C; Sat,  2 Apr 2022 16:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648908367; bh=QF/L8ZAU7j5y7JRj5btGXMpteEczUHnHYv99nubh5rY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cz0keKF8XrbJrd13FKLXdjk5cblY2+TmAH7SisQg0LttYmrf0o6LPJbJ4A+sMHqKV
 Bh2jFBWHklP8UObJim5JhOC4Rp/MpkWZmq7EKwmlfb/VtAk1avuhlDzn/5H9k8d0o0
 sD3goubXyga4aBW8aBUMSzsf8vz34HhAf7qtrSckcbx3LWC+05nbHOrGWk9S46nh5c
 pbMoln895pU9jzESCKPuqImeBADLGnF9GREre2DyYmA+fyxzvyQgNFHPPUBmu+kS1P
 8KssMiuErCjeXxOsAGZXuG8LLjr62P0griklkcAL8LcwkTl558ZYFTaZvY8cULZUZV
 8xQyNvoeomzrA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 9A39BC009;
 Sat,  2 Apr 2022 16:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648908356; bh=QF/L8ZAU7j5y7JRj5btGXMpteEczUHnHYv99nubh5rY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p1+fZsSBMPo5YaUvR39ibrs5HezA1QFmBvNjfzOIIzFZEhuJGVz0wWtcc2+9BkY1O
 i11i1quPvXJKpjuiqMOZNYT3ZRlreMQaaGbLXJQ7VGpwbCWcHHja8+VBIeVaWir7bE
 hzwp+9lziS7wO2Og4ZGPe8bLkJozFHo9vmyoU/NQfGpztyA5ndM7BfLo8uRVWTwift
 xbBDBZ55WY5Pa7rYDZKsvL+nxn4S1D5ARXbus4jAk30Zy9Z8jnN7/RjPbWYk8pim+T
 DAuNkwRIhJo5NjegZ2AnC8TznPzzzqvz4LTbGRYcknbrnzvTJKdMyFzVvxZCz7dDWy
 qYaqJZIyBlVrw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4655c428;
 Sat, 2 Apr 2022 14:05:51 +0000 (UTC)
Date: Sat, 2 Apr 2022 23:05:36 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YkhYMFf63qnEhDd0@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <8c305df4646b65218978fc6474aa0f5f29b216a0.1640870037.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c305df4646b65218978fc6474aa0f5f29b216a0.1640870037.git.linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Dec 30,
 2021 at 02:23:18PM
 +0100: > So far 'msize' was simply used for all 9p message types, which is
 far > too much and slowed down performance tremendously with l [...] 
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
X-Headers-End: 1naeOM-0007ic-24
Subject: Re: [V9fs-developer] [PATCH v4 12/12] net/9p: allocate appropriate
 reduced message buffers
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Dec 30, 2021 at 02:23:18PM +0100:
> So far 'msize' was simply used for all 9p message types, which is far
> too much and slowed down performance tremendously with large values
> for user configurable 'msize' option.
> 
> Let's stop this waste by using the new p9_msg_buf_size() function for
> allocating more appropriate, smaller buffers according to what is
> actually sent over the wire.

By the way, thinking of protocols earlier made me realize this won't
work on RDMA transport...

unlike virtio/tcp/xen, RDMA doesn't "mailbox" messages: there's a pool
of posted buffers, and once a message has been received it looks for the
header in the received message and associates it with the matching
request, but there's no guarantee a small message will use a small
buffer...

This is also going to need some thought, perhaps just copying small
buffers and recycling the buffer if a large one was used? but there
might be a window with no buffer available and I'm not sure what'd
happen, and don't have any RDMA hardware available to test this right
now so this will be fun.


I'm not shooting this down (it's definitely interesting), but we might
need to make it optional until someone with RDMA hardware can validate a
solution.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
