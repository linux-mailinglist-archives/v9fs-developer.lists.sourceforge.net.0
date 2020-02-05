Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3C1153AAA
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 23:06:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izSoW-0007jG-0U; Wed, 05 Feb 2020 22:06:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <l29ah@cock.li>) id 1izSoU-0007j8-Db
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 22:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i62LnGibB8Dl1NiIwGsJPRsRIqWbf+8hhkVnsrmEm0U=; b=bUwjmWUGTqBypl66jSZFbdU/He
 ZAa4l0CwgTJeyCwNHH+wydYD3LF9P4iPTQi4wHgCF7o0KPwyZ/uU8YI1OfNG0ofp0SfjnVibIOXmi
 qrL9xxvaHdkhrsx5wOQ7aso05iraX/KUVK6Zo6Sl5ZPawxIE54mQaUebJQ4dD/RNBPOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i62LnGibB8Dl1NiIwGsJPRsRIqWbf+8hhkVnsrmEm0U=; b=T5HVBpn1PddXQHkPk9BFgKSnNV
 e19jN3Nv0H4E+3FyMEo5pbbhqkm8qkc8chSkIuHtX3h7BDn3W3sJRF0AQwqnyMNE4z6Qdhu8QpGFH
 dHiAHFONjMYGvOuJ9s8s0X9Emi5nqDXH2NwtcyByyhn8ni+B0UO8RtCjF6BiejtAnyoI=;
Received: from mx1.cock.li ([185.10.68.5] helo=cock.li)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izSoS-00BLDu-Gu
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 22:06:26 +0000
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on cock.li
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,NO_RECEIVED,NO_RELAYS shortcircuit=_SCTYPE_
 autolearn=disabled version=3.4.2
Date: Thu, 6 Feb 2020 01:06:07 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cock.li; s=mail;
 t=1580940369; bh=EEta4kxNqs0o9NP0rc52RRu2fAQhB8tslJRFLKGaEbE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yxVdJxXB3pX66l/rR2aXkcgiQvJFMrGBeOholbRzEHBhzj5c8WPi/3V7av68qSt2X
 FKkBhrB/+tWK0SWKuX92l82aPumRQfDii5eriYPz8wZKK4TPeiQg8r0R6wPMd3ULPK
 rTWZAFRHOztRCQu2HQ/od0Pe7szXp5orGQF/wLmgA8odyNQ6vt+1uVFHVSL17sjWC4
 zXoaxW/EJFxPwdvLk4852KcuTpKnHHUSgZUxojDaZjzIGh7+pMpSdslQcPT1GovoK4
 m15fJXH5VxrzzUUUKLNqZDKYYBHnjKnm/49K03a2nT8zp0nXUaTRPV1EWX7nLRJGXJ
 49lMSS0t2HJ1g==
From: l29ah@cock.li
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200205220607.m7tu6hsdr3xhm6l4@l29ah-x201.l29ah-x201>
References: <20200205204053.12751-1-l29ah@cock.li>
 <20200205215446.GB3942@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205215446.GB3942@nautica>
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
X-Headers-End: 1izSoS-00BLDu-Gu
Subject: Re: [V9fs-developer] [PATCH] 9pnet: allow making incomplete read
 requests
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
 Sergey Alirzaev <l29ah@cock.li>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Feb 05, 2020 at 10:54:46PM +0100, Dominique Martinet wrote:
> > [...]
> > +		if (n != count) {
> > +			*err = -EFAULT;
> > +			p9_tag_remove(clnt, req);
> > +			return n;
> >  		}
> > -		p9_tag_remove(clnt, req);
> > +	} else {
> > +		iov_iter_advance(to, count);
> > +		count;
> 
> Any reason for this stray 'count;' statement?
> If you're ok with this I'll just take patch without that line, don't
> bother resubmitting.

No reason, i've just accidentally left it.

> Will take a fair amount of time to make it to linux-next though, test
> setup needs some love and I want to run tests even if this should be
> straightforward...

Thanks!

-- 
()  ascii ribbon campaign - against html mail
/\  http://arc.pasp.de/   - against proprietary attachments


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
