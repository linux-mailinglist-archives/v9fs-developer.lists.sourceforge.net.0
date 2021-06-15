Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A4A3A8658
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Jun 2021 18:24:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ltBr8-0006EZ-Du; Tue, 15 Jun 2021 16:24:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@kernel.org>) id 1ltBr6-0006EI-Ni
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Jun 2021 16:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gw97+usbNwltbLyvnIQ2VUuu3wkeYTY9wP0CLe5X0Hk=; b=SxndXcEH5vwZGJ22QNWkX6pkC4
 0EwsNHeLDXCj71jluZvIFWO+jTklfetBtboyJLXQ5cSinIafEAllCm42xwdvoXG50a0VqCH4MFlGt
 S8blqknmCt4eb2KFQqFm8TaN7vcFQJMExPFXLbJg4kiy3ZKPMmve93jn8dcgvHym4d7U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Gw97+usbNwltbLyvnIQ2VUuu3wkeYTY9wP0CLe5X0Hk=; b=m5jRizsFVDG842NrX5oYozsmHM
 GbsYeSzUr6ydpAxNxAt27qVd/L0q36T3sD4s+SPQeuKQOJ0nCWkWyTYCR+/GB51oSEqHgt7EVUf5H
 Ay9RsFRuGoZe748JFudkjIcEkdxgdK+id5QKv98ILdRhP/31Sy77yW+nDWx+3SUXhxTU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ltBr3-0001Qm-2Z
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Jun 2021 16:24:01 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D2F72616E9;
 Tue, 15 Jun 2021 16:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623774223;
 bh=b5z+9n+SQFtB1r1+Kvl47vN1hPmjk9XqUBLNxUuYBI8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=tscl1e10bMwK+/E1N5I5r6PT5IGP4BQhW2FDVfFcuJOYRKKX8DiUpflOYISKa+5VV
 /21/AFOhhHa6xqTQ7emAyXlfbblaLFGSaLGPixt+IhUWRAgSmec0oGY1lEgi1ghGQt
 AyQJqClFcb7XD0Y5Ib1ALBmyd2AGVazaGG6LVWVZfD+C22+zN9+hd4pOEKt5Ov6y97
 Ec2Y29SmuzWDD9r5BcC1lhE5lNGGQuHCdgid4YsE2CQj51hpFfsjJMAnlD7wszRPmc
 6Lkooom0EXE0W3xLQpdFx2EzGVTLgo+VDvBeiSBJ1dWrrJERSQGJ68E/DAnm3fDu8K
 eg7Xzl9nh010g==
Message-ID: <46e23dac5a459ece61250d36d3ac1cedb17f9433.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>
Date: Tue, 15 Jun 2021 12:23:41 -0400
In-Reply-To: <162377165897.729347.292567369593752239.stgit@warthog.procyon.org.uk>
References: <162377165897.729347.292567369593752239.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.2 (3.40.2-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ltBr3-0001Qm-2Z
Subject: Re: [V9fs-developer] [PATCH] netfs: Add MAINTAINERS record
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2021-06-15 at 16:40 +0100, David Howells wrote:
> Add a MAINTAINERS record for the new netfs helper library.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: Jeff Layton <jlayton@kernel.org>
> cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> cc: linux-mm@kvack.org
> cc: linux-cachefs@redhat.com
> cc: linux-afs@lists.infradead.org
> cc: linux-nfs@vger.kernel.org
> cc: linux-cifs@vger.kernel.org
> cc: ceph-devel@vger.kernel.org
> cc: v9fs-developer@lists.sourceforge.net
> cc: linux-fsdevel@vger.kernel.org
> ---
> 
>  MAINTAINERS |    9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index bc0ceef87b73..364465f20e81 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12878,6 +12878,15 @@ NETWORKING [WIRELESS]
>  L:	linux-wireless@vger.kernel.org
>  Q:	http://patchwork.kernel.org/project/linux-wireless/list/
>  
> +NETWORK FILESYSTEM HELPER LIBRARY
> +M:	David Howells <dhowells@redhat.com>
> +M:	Jeff Layton <jlayton@kernel.org>
> +L:	linux-cachefs@redhat.com (moderated for non-subscribers)
> +S:	Supported
> +F:	Documentation/filesystems/netfs_library.rst
> +F:	fs/netfs/
> +F:	include/linux/netfs.h
> +
>  NETXEN (1/10) GbE SUPPORT
>  M:	Manish Chopra <manishc@marvell.com>
>  M:	Rahul Verma <rahulv@marvell.com>
> 
> 

Acked-by: Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
