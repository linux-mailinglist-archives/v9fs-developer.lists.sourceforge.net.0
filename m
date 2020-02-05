Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9856715348D
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 16:48:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izMv3-00082n-RF; Wed, 05 Feb 2020 15:48:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <l29ah@cock.li>) id 1izMv2-00082g-At
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 15:48:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6zqRzxVIodmI2c6PwpVBZfx3ea5BKouClE7rq5xldCI=; b=Xi0dGrxlj0S4TpOPeU+sSz80Og
 ouHZC+te3H1PkUk9K9ao+4wD7i3lS0qiLESseIxeKUDC/suVK4OTrIKEToEbbocIAtvCCzLEaUJHi
 VOlMQvFUnrL8gsYZdj0VBtmZFp9dYgtQ4HpZmvuwXZQ4/EOtXi6sa8H56p2ClqCH9jfI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6zqRzxVIodmI2c6PwpVBZfx3ea5BKouClE7rq5xldCI=; b=BlhQHhmT7AZ5eMBztN6ZXDAevN
 8uJxBYASnk+9c+RpGfA7a6RjL/hgoBGuxvWZtKzzltZGgeF2crZNsrhYKMtRdve4l8vPcqrDj7sJW
 kopeWxqcJRjzDLVli+zJyb0hL9PB0ALGOLqsRAX6J9aIkvPj2meBFKFgOQmpb9ktJpy0=;
Received: from mx1.cock.li ([185.10.68.5] helo=cock.li)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izMv0-00B5hA-9d
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 15:48:48 +0000
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on cock.li
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,NO_RECEIVED,NO_RELAYS shortcircuit=_SCTYPE_
 autolearn=disabled version=3.4.2
Date: Wed, 5 Feb 2020 18:48:29 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cock.li; s=mail;
 t=1580917711; bh=YpQAOhC6zw8KkgDRwc/Chjw22SjapGWj8KZDT6YUh08=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CrlkeOUt2vM5TosW5QTQIUNJkNFcAgcUy78QQI55D0r9c/GTV8eOZ4wRe68i1xwe5
 hDO6dATizGy1uUQLiAtFrkxa+DuGVwJHF4r92yjzRQDVnn+zAJfRHvJh5AUal8cFQU
 ICfzGOy6mJaePLx3l/YRO+3kOXHF4A2Ox4HEBdG7IBGSPNsJf5rkScU1jhbC+UG1fy
 g07PjICV/5Ygf8uvwrMGvP7WpYr2J09wRuHCpaN9WHwRrlFpEfT/cTK+u2z9i4d9l7
 8a4eZrntBmoQOP2WdCrcwB9KZCMvLNPm7a7CFyt6nIp8TNWXnLy9YPs0Qdh0+JmMW6
 kep5BFc6A/2rA==
From: l29ah@cock.li
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200205154829.wbgdp2r4gslnozpa@l29ah-x201.l29ah-x201>
References: <20200205003457.24340-1-l29ah@cock.li>
 <20200205073504.GA16626@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205073504.GA16626@nautica>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pasp.de]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [185.10.68.5 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izMv0-00B5hA-9d
Subject: Re: [V9fs-developer] [PATCH 1/2] 9pnet: allow making incomplete
 read requests
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
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Feb 05, 2020 at 08:35:04AM +0100, Dominique Martinet wrote:
> Sergey Alirzaev wrote on Wed, Feb 05, 2020:
> > A user doesn't necessarily want to wait for all the requested data to
> > be available, since the waiting time is unbounded.
> 
> I'm not sure I agree on the argument there: the waiting time is
> unbounded for a single request as well. What's your use case?

I want to interface with synthetic file systems that represent arbitrary data streams.
The one where i've hit the problem is reading the log of a XMPP chat client that blocks if there's no new data available.

-- 
()  ascii ribbon campaign - against html mail
/\  http://arc.pasp.de/   - against proprietary attachments


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
