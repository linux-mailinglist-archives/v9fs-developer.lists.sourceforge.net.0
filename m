Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB746465DE
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Dec 2022 01:28:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p34mR-0007El-5T;
	Thu, 08 Dec 2022 00:28:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p34mQ-0007Ec-6D;
 Thu, 08 Dec 2022 00:28:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eW3gC1NH3+C0RdYCKj/to+9rt/7i7cjUIrV9nEiTYgo=; b=Z1zBSX5MwmgYZwTj4q7LvWpswZ
 MSPjWGTr96mmwlL6fUIhPh20gLFA6iKr7VZK/IAlLHzpuEeY48xJZxQrKTLnAFuEoP50d2Blm+HDx
 3agbfbiGGi2x0RdANI1Gu3qa3+5/6pFm5VhfScyU115UM/y2ISzv1PwmvwApvhqUjUXY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eW3gC1NH3+C0RdYCKj/to+9rt/7i7cjUIrV9nEiTYgo=; b=dmwUvnC22t8aFHBkVulQBjSOSX
 VoNN8pAtHwaGYV831lvBvdKs8i+h99Suc/9X1AWF1wlhVeujN9iXC67pKqriNGSbf9P1F/246WwHy
 cYi7d3TUB3amA2BUpCPVBbwa9VAyVbMG9Mzn1hAviRpt2a6pzwCSW7BQLB+910WES6yY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p34mM-009iwp-9D; Thu, 08 Dec 2022 00:28:50 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E6C52C01A; Thu,  8 Dec 2022 01:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670459326; bh=eW3gC1NH3+C0RdYCKj/to+9rt/7i7cjUIrV9nEiTYgo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mHt51cDiTdVXFt6Q/sgiwWrd0RBtZ/qNCj93w90pAwEQn4geAKHxl4+yH68xb47Yc
 l/U7aZ5x1ml5POPOxEf87aCKFe+4KrQoCAtJ5s4GxfS72lt4nQScdbrQBnAkTcKWr+
 NVu2pPJlb0lksBdksyRr8aiHxFKsU5turv/ux4Ub3fwe0d5RI21zDYEYb6pPSXD2y7
 eB59JZtY7u6sdxZWF1nC22KhbOiWg/+VQH/ZcAG3vEfPAE/wkGRBB5KSBfV2jSZyKV
 IohyVMyXz1yxGrSNSMubWlf/z1YbDeB7hp6FHqQ7EulCRnQZ/gl4TivgtF+pW24rWT
 ISh9SMiUjpobg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 035EEC01A;
 Thu,  8 Dec 2022 01:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670459326; bh=eW3gC1NH3+C0RdYCKj/to+9rt/7i7cjUIrV9nEiTYgo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mHt51cDiTdVXFt6Q/sgiwWrd0RBtZ/qNCj93w90pAwEQn4geAKHxl4+yH68xb47Yc
 l/U7aZ5x1ml5POPOxEf87aCKFe+4KrQoCAtJ5s4GxfS72lt4nQScdbrQBnAkTcKWr+
 NVu2pPJlb0lksBdksyRr8aiHxFKsU5turv/ux4Ub3fwe0d5RI21zDYEYb6pPSXD2y7
 eB59JZtY7u6sdxZWF1nC22KhbOiWg/+VQH/ZcAG3vEfPAE/wkGRBB5KSBfV2jSZyKV
 IohyVMyXz1yxGrSNSMubWlf/z1YbDeB7hp6FHqQ7EulCRnQZ/gl4TivgtF+pW24rWT
 ISh9SMiUjpobg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f0227caf;
 Thu, 8 Dec 2022 00:28:31 +0000 (UTC)
Date: Thu, 8 Dec 2022 09:28:16 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <Y5EvoGhao+z5nH84@codewreck.org>
References: <CAFkjPTn+F0-PD76G4m2Lp1_MbS_WdvsCngzD7Aa1w7qQYdgqjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTn+F0-PD76G4m2Lp1_MbS_WdvsCngzD7Aa1w7qQYdgqjg@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Eric! Eric Van Hensbergen wrote on Wed, Dec 07, 2022 at
 08:15:40AM -0600: > TLDR; I'm mucking about in the caching code, if someone
 else is doing > something there please let me know so we aren't working at
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p34mM-009iwp-9D
Subject: Re: [V9fs-developer] 9p cache code
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
Cc: David Howells <dhowells@redhat.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 "v9fs-users@lists.sourceforge.net" <v9fs-users@lists.sourceforge.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jim Garlick <garlick.jim@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Eric!

Eric Van Hensbergen wrote on Wed, Dec 07, 2022 at 08:15:40AM -0600:
> TLDR; I'm mucking about in the caching code, if someone else is doing
> something there please let me know so we aren't working at odds or
> duplicating effort.

I don't think anyone is actively working on it, added Christian in Cc
who's been helping a lot lately (he's also on the developers list at
least, but mail filters...)

afaik David Howells haven't really finished his netfs conversion, iirc
the write helpers aren't completely finished? But that was last year so
things might have improved under the rug without any change at 9p level...
But either way I don't think David is working on 9p at all right now
either, also added him in Ccs.
(I think the problem at the time was the writes were done a folio at a
time and there wasn't any mechanism to batch them unlike reads; but I
never really looked further)

> As some of you know I'm mucking about in the 9p caching code - wil try and
> upstream some RFC patches shortly.  Overall goal is to make simple forms of
> caching (readahead/writeback(maybe)) default on 9p2000.L while leavine
> cache=none default for 9p2000 and earlier.  My intent is to do some work on
> directory level caching next.  For the moment, I'm primarily concerned with
> in-memory caching (not fscache per se).  My draft experiments are here (but
> this is not what I will try and upstream as its a mess):
> https://github.com/v9fs/linux/tree/ericvh/v9fsperf
> 
> I've been crawling through the code including the new folio changes and
> have done some experiments on what needs to be done to get file-level
> caching working and be somewhat consistent.  I also think I know what I
> need to do to get directory caching coherent (as opposed to loose) but have
> not prototyped it yet.
> 
> One question I had for the community is if anyone has been using the
> fscache code (code=fscache).  On inspection there are several things that
> are clearly (to my eye) wrong -- several of them let in on my watch 10
> years ago when we were doing the 9p work at IBM.  So, before I do any heavy
> surgery here I wanted to make sure I wasn't going to be upsetting anyones'
> applecart and make sure i have regression tests for desired functionality.
> I was going to eventually get around to trying to fix fscache for 9p (if it
> is indeed broken), but it is at the bottom of my priority list at the
> moment so we'll see how much of this I get through over December (which is
> roughly the time I have allocated to work on this -- a 9p vacation if you
> will).
> 
> I'm going through a process of function checking the different cache levels
> using various test suites and also doing performance studies (some of the
> baseline of the latter can be seen in:
> https://github.com/v9fs/notebook/blob/main/perf.ipynb).

On that end I think having cache by default for virtio/qemu would be
appreciated as it's working "well enough" from my impressions.

Ganesha has a limit to the number of fids open and quickly explodes, but
I'm not aware of any nfs-ganesha 9p user right now, if there are any
they can restore cache=none... The problem with ganesha seems to be that
we lack any reclaim mechanism; files or directories seen will stay
partly open forever, and ganesha runs out of fids.
qemu closes unused fids after a while so doesn't have as much of a
problem, but that's still memory used on client and server so perhaps
something to look at eventually, but if it's not on your list I guess
it's fine for now.

Either way any fix or improvement would be more than welcome, I'm sure
there are bugs in here that were just waiting for you ;)


Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
