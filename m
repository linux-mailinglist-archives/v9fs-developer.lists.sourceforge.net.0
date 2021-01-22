Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C35E830080E
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Jan 2021 17:02:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2ysq-0004au-O8; Fri, 22 Jan 2021 16:02:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bfields@fieldses.org>) id 1l2ysp-0004ah-Lp
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Jan 2021 16:01:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C1uyBn2BQyVBzkzoIFDiDLUaJ4GVYrCTmuJOgOCNLm0=; b=czaH6YMw2sRgJHPCkp9cOoXho+
 r8LMWOQigNurEDu5JAyk2ryXDEAO1/GjgYZhCguUdyWRmBFL3plJiDCOdHy3xOizQ1jq0scQO6v/p
 Qllk4uKYPkIyag3tglTAWpwYdUvoau0FqhpEZTaC9Itt9nUnyeqMa2h/Ra/ntFApJPks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C1uyBn2BQyVBzkzoIFDiDLUaJ4GVYrCTmuJOgOCNLm0=; b=mYbKcjuYydqPM6py/36jFtoljK
 Mxseajw6IEkDzrVOtYjl9hQWT58bp233Ya56emn2Fdn1CBXqfrG4f7iYhjipsJDBz13EoFlbtVKxQ
 vij+wfNU41SIbhFf4NjaRLiql9GakdF8vBgE9vAfgWO911zbebYh6t/83J/zwD6aHF9A=;
Received: from fieldses.org ([173.255.197.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l2ysW-00Gi5c-II
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Jan 2021 16:01:59 +0000
Received: by fieldses.org (Postfix, from userid 2815)
 id 465896EA0; Fri, 22 Jan 2021 11:01:29 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.11.0 fieldses.org 465896EA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fieldses.org;
 s=default; t=1611331289;
 bh=C1uyBn2BQyVBzkzoIFDiDLUaJ4GVYrCTmuJOgOCNLm0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wS+CszPvgU+UvUOL7glyffz488y1gAW2j+6KJGj+4oMkNlv7gRF31pfQZjlqnHUT0
 1yUos2dQdiC5ry8dTqU/3rvAsvNqyzNB3vhDLNVSC8R0w+7zf0DydKatw+L5rjSrFG
 VKX7er2E95K03LAilNk+NFD2lxGQVieg6S9d4xhI=
Date: Fri, 22 Jan 2021 11:01:29 -0500
From: "J. Bruce Fields" <bfields@fieldses.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210122160129.GB18583@fieldses.org>
References: <20210121190937.GE20964@fieldses.org>
 <20210121174306.GB20964@fieldses.org>
 <20210121164645.GA20964@fieldses.org>
 <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
 <1794286.1611248577@warthog.procyon.org.uk>
 <1851804.1611255313@warthog.procyon.org.uk>
 <1856291.1611259704@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1856291.1611259704@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fieldses.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l2ysW-00Gi5c-II
Subject: Re: [V9fs-developer] [RFC][PATCH 00/25] Network fs helper library &
 fscache kiocb API
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jan 21, 2021 at 08:08:24PM +0000, David Howells wrote:
> J. Bruce Fields <bfields@fieldses.org> wrote:
> > So, I'm still confused: there must be some case where we know fscache
> > actually works reliably and doesn't corrupt your data, right?
> 
> Using ext2/3, for example.  I don't know under what circumstances xfs, ext4
> and btrfs might insert/remove blocks of zeros, but I'm told it can happen.

Do ext2/3 work well for fscache in other ways?

--b.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
