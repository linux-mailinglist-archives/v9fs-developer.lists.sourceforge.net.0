Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E36D31534FA
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 17:07:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izNDV-0000QA-DT; Wed, 05 Feb 2020 16:07:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1izNDU-0000Q3-So
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 16:07:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8njvVT5TxxbOuqoISBkBHMZb0EhrDsPv1cxXKfGhv40=; b=Kx2yvPqXQWADG1QlbZFwkxKQ5P
 uG/RiF2Uo/7pt7KjLWm3M9zQq9ZKfymjUIGbFCox2fRbOgeo2fBcgzaznw/k4PlQcLIcCCMWJsDKq
 BdMRwyRX/IVvuvD8VPYFQZ50AaFmbUab5nZXSx6rPDCU4obz1hVRMT3xQhx0p0jzEqKU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8njvVT5TxxbOuqoISBkBHMZb0EhrDsPv1cxXKfGhv40=; b=bkIyCjxdYzCefWaqQaWfdbD2xR
 jg83yEb0Eq1zrkRTgVU3DiaIzQsbwkU1tXZOVAxHsDsMA+VKmvYcaTDkx13+XmC2ZJ2jY0ilvRwm/
 urMy+AL2qCqUsmbAnZ0BxNnvV7eDuJONETWgor6TffUpZjzmsNhVX7SS0yd7b0042prQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izNDT-000KbK-3Z
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 16:07:52 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 738DAC009; Wed,  5 Feb 2020 17:07:44 +0100 (CET)
Date: Wed, 5 Feb 2020 17:07:29 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: l29ah@cock.li
Message-ID: <20200205160729.GA10862@nautica>
References: <20200205003457.24340-1-l29ah@cock.li>
 <20200205073504.GA16626@nautica>
 <20200205154829.wbgdp2r4gslnozpa@l29ah-x201.l29ah-x201>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205154829.wbgdp2r4gslnozpa@l29ah-x201.l29ah-x201>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cock.li]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izNDT-000KbK-3Z
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

l29ah@cock.li wrote on Wed, Feb 05, 2020:
> On Wed, Feb 05, 2020 at 08:35:04AM +0100, Dominique Martinet wrote:
> > I'm not sure I agree on the argument there: the waiting time is
> > unbounded for a single request as well. What's your use case?
> 
> I want to interface with synthetic file systems that represent
> arbitrary data streams.
> The one where i've hit the problem is reading the log of a XMPP chat
> client that blocks if there's no new data available.

Definitely a valid use case for 9p, please rephrase your commit message
to describe the problem a bit better.

I'll wait for a v2 removing the 'total' variable from
p9_client_read_once anyway, unless you disagree.


Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
