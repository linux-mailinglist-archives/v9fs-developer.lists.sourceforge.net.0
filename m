Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC6F3D6A7D
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Jul 2021 02:00:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m8AWf-0000kW-32; Tue, 27 Jul 2021 00:00:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1m8AWd-0000kN-9K
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 00:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AqWBIB/P4cglBp3v+EdtFD5gnv4amdJeHzvQ+TsnBuU=; b=lXZL5rrbJlwyToS3Qtaic7Lg7D
 CnBPpENVua7mlm+DIkExz/6JG7XN9EZE5UrMKcY3OBDooUibQdWj1O4u8n3OxjVzaFwTSFYQh//up
 j5Ff2BnMJDcyBjH93Jj6NHNFkDSeZWKe1fnYvJH9tZZFnM6mz9mpyOmzBDMaSZ+XN7nw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AqWBIB/P4cglBp3v+EdtFD5gnv4amdJeHzvQ+TsnBuU=; b=SA+EAYcDRbh4AWLJGjyjoecu5b
 PTn/nrf1FvOfsw30Ki9JEGgR/tO6e5KwvAZXCAxh+r0x+lr9BqqAFGpdUtrciburrG8jUX7GF6btj
 Xy1FHUlyZ5BbrluqlColkrnjpXlq6CCBbZLbFj1SRasgfuZQNSNB8aVd8juNTTZe3NbM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8AWQ-0001HN-EU
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 00:00:47 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B710CC009; Tue, 27 Jul 2021 02:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1627344017; bh=AqWBIB/P4cglBp3v+EdtFD5gnv4amdJeHzvQ+TsnBuU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JlDKAnlU39KnHu8bxfIxaZRWzNJQfxcS0j5Cpgs2W1tAzNLhN7Cy1Ida9gcfAg848
 Pn0w6gXZoPYmJ24Z+B8YI53JCMgaYRoVGqtk8xcEXHGwPxlPILXsEWSPDKhVTzUow8
 90vgG2cRgHIrgte/Os5377+aoHAt8puIOf4asPsPldGH77Qpn4S5Jwxv3JJgQa7Iqd
 dR42VJUX5U2oHLJjBVU43lZNo2FyoYVQEqV5G5STknNkj4i9tBw2RkDo4IxVxtxPlj
 QLtM8qbwcm1alScM2SOuUdIjMePmlIVSX0KXGe63LhXnPqD4kFOIl4s1Fe7A9KGB3n
 vlM6gvXEulfsA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4FEBEC009;
 Tue, 27 Jul 2021 02:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1627344017; bh=AqWBIB/P4cglBp3v+EdtFD5gnv4amdJeHzvQ+TsnBuU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JlDKAnlU39KnHu8bxfIxaZRWzNJQfxcS0j5Cpgs2W1tAzNLhN7Cy1Ida9gcfAg848
 Pn0w6gXZoPYmJ24Z+B8YI53JCMgaYRoVGqtk8xcEXHGwPxlPILXsEWSPDKhVTzUow8
 90vgG2cRgHIrgte/Os5377+aoHAt8puIOf4asPsPldGH77Qpn4S5Jwxv3JJgQa7Iqd
 dR42VJUX5U2oHLJjBVU43lZNo2FyoYVQEqV5G5STknNkj4i9tBw2RkDo4IxVxtxPlj
 QLtM8qbwcm1alScM2SOuUdIjMePmlIVSX0KXGe63LhXnPqD4kFOIl4s1Fe7A9KGB3n
 vlM6gvXEulfsA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 7ce8ee03;
 Tue, 27 Jul 2021 00:00:08 +0000 (UTC)
Date: Tue, 27 Jul 2021 08:59:53 +0900
From: asmadeus@codewreck.org
To: Stefano Stabellini <sstabellini@kernel.org>
Message-ID: <YP9MeeqOKcyYRxjK@codewreck.org>
References: <20210725175103.56731-1-harshvardhan.jha@oracle.com>
 <YP3NqQ5NGF7phCQh@codewreck.org>
 <alpine.DEB.2.21.2107261357210.10122@sstabellini-ThinkPad-T480s>
 <d956e0f2-546e-ddfd-86eb-9afb8549b40d@oracle.com>
 <alpine.DEB.2.21.2107261654130.10122@sstabellini-ThinkPad-T480s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2107261654130.10122@sstabellini-ThinkPad-T480s>
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
X-Headers-End: 1m8AWQ-0001HN-EU
Subject: Re: [V9fs-developer] [External] : Re: [PATCH] 9p/xen: Fix end of
 loop tests for list_for_each_entry
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
 linux-kernel@vger.kernel.org, Harshvardhan Jha <harshvardhan.jha@oracle.com>,
 kuba@kernel.org, v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Stefano Stabellini wrote on Mon, Jul 26, 2021 at 04:54:29PM -0700:
> > > Yes, I did test it successfully. Aside from the commit messaged to be
> > > reworded:
> > How's this?
> > ===========================BEGIN========================================
> > 9p/xen: Fix end of loop tests for list_for_each_entry
> > 
> > This patch addresses the following problems:
> >  - priv can never be NULL, so this part of the check is useless
> >  - if the loop ran through the whole list, priv->client is invalid and
> > it is more appropriate and sufficient to check for the end of
> > list_for_each_entry loop condition.
> > 
> > Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>

Will take the patch with this text as commit message later tonight


> > > Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
> > > Tested-by: Stefano Stabellini <sstabellini@kernel.org>

Thanks for the test!

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
