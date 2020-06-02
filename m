Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 332F71EB594
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Jun 2020 08:03:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jg012-0004EM-Q0; Tue, 02 Jun 2020 06:03:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jg010-0004EF-RY
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Jun 2020 06:03:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zQqME1rD2Cxf3onQWUz/PjkY+UbSxqpe7+LY2QvEoBM=; b=Z639KNaa1puB55BLczB5A3TLHB
 RRCcQDwDwURNwIQ/4kBxxYmlaxvgLoBPdQV93W9IlMwBJp2K9EDLy94fkhwoPzD60dAgxLasq1dh0
 H0U3II0Fp1EzgTzbCPuxtJHjIjdWXkih+GpgA73Z1kYea2z4qpeJwHD5uwZQCRsPWL94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zQqME1rD2Cxf3onQWUz/PjkY+UbSxqpe7+LY2QvEoBM=; b=CCnRkEmSTKbmbnTzkolc0TYOTB
 o1arIIUwPTbgqrdSUlMUut1RNfIqvbYGjGP4JtQmyYIW6sKtfHXNzo/ysv3m38BZM4FmDbGcGojeB
 K7yrMhKqj/7DHxY+obsqJhTBQCqUGw21P5S4sPqkbXDeEuacDQ8fkggGsN5xdLlviTow=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jg00y-0093Uq-On
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Jun 2020 06:03:10 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 4FC2AC009; Tue,  2 Jun 2020 08:03:01 +0200 (CEST)
Date: Tue, 2 Jun 2020 08:02:46 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Stefano Stabellini <sstabellini@kernel.org>
Message-ID: <20200602060246.GA16791@nautica>
References: <20200521193242.15953-1-sstabellini@kernel.org>
 <20200522055847.GA2833@nautica>
 <alpine.DEB.2.21.2006011406100.12801@sstabellini-ThinkPad-T480s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2006011406100.12801@sstabellini-ThinkPad-T480s>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jg00y-0093Uq-On
Subject: Re: [V9fs-developer] [PATCH v2] 9p/xen: increase XEN_9PFS_RING_ORDER
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
Cc: jgross@suse.com, lucho@ionkov.net, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 xen-devel@lists.xenproject.org, boris.ostrovsky@oracle.com,
 Stefano Stabellini <stefano.stabellini@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Stefano Stabellini wrote on Mon, Jun 01, 2020:
> > LGTM, I'll try to find some time to test this by the end of next week or
> > will trust you if I can't make it -- ping me around June 1st if I don't
> > reply again until then...
> 
> Ping :-)

I actually did think about this patch this weekend! . . .but didn't
quite make it :/
Anyway, as promised pushed to linux-next, I'll submit this for 5.8

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
