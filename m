Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 552442029B2
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Jun 2020 10:45:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jmvbe-0002W8-T2; Sun, 21 Jun 2020 08:45:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jmvbc-0002Vz-PV
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 08:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FrDbLSJW9s2HKTBcBmkBT7nyml3Kka4J7L2yJm/Ggm0=; b=nFuKSopiQtAd7CcCRbUh9IIJqU
 Tbal12K0369AnkqfYwSOOIFZveOc0XdHBlAVl9CKoGJZkV/4/A4Y/2LVLH1YJggAVc/tCwUFQWlNB
 cPiaMnMddd0luzTEDPqAyTjPtNG76kTVNJ2OexckDEZpdqop1J4cQPpoHD9T6xLq2Ktw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FrDbLSJW9s2HKTBcBmkBT7nyml3Kka4J7L2yJm/Ggm0=; b=PIRUP+dYs/dHs5FprwOkUUWZ1g
 bMe2mCC21W08XnZGUXSfvvgBphBh4ofG7LI1dZak10JWVs6iA0qkNg7GkTG0UphWVJVVuhkmjSRGe
 E0f1WlKu7h1q+/Ir8VDBYgB1cxKdWn40JURobp1JKD+6w65xe4eO2AbRrvdOB+f5do6M=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jmvba-00CRQB-N5
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 08:45:36 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 0BA2CC01A; Sun, 21 Jun 2020 10:45:28 +0200 (CEST)
Date: Sun, 21 Jun 2020 10:45:13 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Message-ID: <20200621084512.GA720@nautica>
References: <20200618190807.GA20699@nautica>
 <20200620201456.14304-1-alexander.kapshuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200620201456.14304-1-alexander.kapshuk@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jmvba-00CRQB-N5
Subject: Re: [V9fs-developer] [PATCH] net/9p: Validate current->sighand in
 client.c
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

Alexander Kapshuk wrote on Sat, Jun 20, 2020:
> Use (un)lock_task_sighand instead of spin_lock_irqsave and
> spin_unlock_irqrestore to ensure current->sighand is a valid pointer as
> suggested in the email referenced below.

Thanks for v2! Patch itself looks good to me.

I always add another `Link:` tag to the last version of the patch at the
time of applying, so the message might be a bit confusing.
Feel free to keep the link to the previous discussion but I'd rather
just repeat a bit more of what we discussed (e.g. fix rcu not being
dereferenced cleanly by using the task helpers as suggested) rather than
just link to the thread

Sorry for nitpicking but I think commit messages are important and it's
better if they're understandable out of context, even if you give a link
for further details for curious readers, it helps being able to just
skim through git log.


Either way I'll include the patch in my test run today or tomorrow, had
promised it for a while...

Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
