Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C75B68BEA0
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 14:47:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP1pj-0006aR-Kz;
	Mon, 06 Feb 2023 13:46:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pP1pi-0006aD-DU
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:46:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cNptTWB17ETc2diWkphpfOXoCzvvMeZEzICFPan5Kno=; b=MH/4AH878424AhCsCO3grIaFdD
 G5g9nqLmSnQYZms2SO7+lI5etZjRCS0LCadWAIMhmhcZrjKHB2AhXG1exYZHf7zIsHHIm8Pvv4i67
 wULJKqP73xhqUIMKzc9H0LeNuKjPt1UBgcT4TtF4fYOIVuogH09r3v05F6BW5eVzKhUA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cNptTWB17ETc2diWkphpfOXoCzvvMeZEzICFPan5Kno=; b=cJhGC9tW9rvi3rOEJoV+twyWbH
 MxwHAOXxbGKxQMOZ0CvPPOnY/F+254mGlC5p+h5SjzyyS2raTpbakuzvZ7Lc58j2xIExnbaqAzpX9
 jHloSRddeEfxLez7V8ZMz/vd8/vutS9TyokEQPWbNQgoLNIOwd2NnXq+Uu+8uDEgm99Q=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pP1pe-0005Kl-2c for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:46:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=cNptTWB17ETc2diWkphpfOXoCzvvMeZEzICFPan5Kno=; b=wWN3FFDAFzt770NESVbWoyqV2n
 DFjfKkFomWMuQR6974K088VE2X4jVoYDwQVMxpSakT9mKzjZlmvRJdszOvoBMStY5KSrx0+0GJ/CB
 Aat0u8Q5cFbpzevdOfnxvsoyaSbMJ15+FC1S+J9osmmfJ0YYV0CFNUG4hYc2P5lqRH1CLxiQ9FlOd
 sKCFZ/57lAPo/j8eT3pBMlkcmYoNYu/HdsgCg+kEo0jmD3VRaqlW5AI5bNfeH0XtDH3nZBy7CJU8c
 Q7h0wwmNBXnuCD9UF/WZfD8Bcu5kg/0fxOsVc8y1QQG1QFN9mldWsCPSBCSXXO8w4n+h/e7YV+Xn3
 ihfiNW8LYWCCU1yUz0UzqkdPM6MvIhSRIrLkxlB+KbYbU6m5xOgih88a+8J8xyFpuHB5PnJaMUc68
 joOVU8nWAC69YWBNUpFSDWGSQ58wVofmLMNp1hDaL0/wW8ZO0lOxdqcgxjUJ3vpRtlilvpCn7w0uC
 LmIUbtYybKU+jSIkek8MJaX8koqrxyADPjnm/9OWIVXxZ67d64EwezeYz7FGpjP7pC8qW9DbAAJPz
 NuUHKcX9RmiuQOuCiirDd+YT6W1GQXwFm3znVB1pCSjxGNV7AF7tda5QNbffjR3Lq7FdLafv4ohQ4
 swO+AzV4ywyBsSpMWkWZmu0hgwBYukJlgAKrEkOp4=;
To: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 06 Feb 2023 14:46:46 +0100
Message-ID: <3428263.euj80CISbX@silver>
In-Reply-To: <CAFkjPTkcGC_eBp8Db2b48rtbFads+2KGkD1DZRL=C6k-4uX0oA@mail.gmail.com>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <9010570.AfT4dvHSuA@silver>
 <CAFkjPTkcGC_eBp8Db2b48rtbFads+2KGkD1DZRL=C6k-4uX0oA@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, February 6,
 2023 2:23:57 PM CET Eric Van Hensbergen wrote: > On Mon, Feb 6,
 2023 at 7:04 AM Christian Schoenebeck > <linux_oss@crudebyte.com>
 wrote: > > > > > The particular call path you r [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pP1pe-0005Kl-2c
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
 filesystem
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, February 6, 2023 2:23:57 PM CET Eric Van Hensbergen wrote:
> On Mon, Feb 6, 2023 at 7:04 AM Christian Schoenebeck
> <linux_oss@crudebyte.com> wrote:
> >
> > > The particular call path you ran into though may be fixed in a
> > > different way -- so calls to setattr trigger a flush of the writeback
> > > buffer -- this happens regardless of whether we are working on an open
> > > file or not.  Might be easy enough to prevent flushing if the file
> > > isn't currently open (because there should be nothing to flush) -- but
> > > I had a second question: why are we flushing in the first place, this
> > > seems to be traced back 12 years to a commit from Aneesh where he is
> > > concerned that if we change the mode or ownership of the file then we
> > > won't be able to writeback, but that shouldn't be a concern because if
> > > someone has the file open under the original permissions then they
> > > should be able to write regardless of someone changing permissions
> > > underneath them.
> >
> > I can't say for sure what the motivation was, as not being involved on the
> > party back then, but keep in mind that Linux client currently collects a
> > constantly growing amount of open FIDs indefinitely, and at a certain 
point
> > e.g. QEMU is forced to close some open FIDs to prevent a crash, which QEMU 
re-
> > opens later on when those FIDs are accessed by client again.
> >
> 
> Indeed - the fact that there are double the number of fids to
> accommodate the "extra" writeback_fid was one of the motivations for
> trying to remove it.  The flush here doesn't really help with that as
> the fid held on to for writeback as well as the fid held on to for the
> cached dir_entry will still be held regardless.  The second held fid
> won't actually get dealt with until I finish the patch series with the
> multiple WIP patches...but will get back to working on that once we
> are done with this.

Can't we just close old pages when a certain number is piled up? Originally I 
assumed that the generalized, shared cache code would do that automatically at 
a certain point.

> On a secondary note, I was mostly trying to reproduce your problems on
> my M1 mac (w/ qemu running native on the M1) -- the open FID problem
> happens MUCH, MUCH sooner.  I think by default you only get 256 open
> files on OSX.  dbench with 8 threads always triggers handle failures -
> so we may need to adjust any constants for fid reclaiming on qemu when
> running on mac.

Yes, I am aware of that. Apple has much more conservative default limits for a 
user process. For instance the default limit for maximum open files is really 
very, very low, around 200 as you said.

Independent of macOS hosts, QEMU's 9p server should in general increase the 
limit of open files (on all host systems) to whatever the maximum is on the 
system. That's what other file servers do on startup as well. It's on my TODO 
list for QEMU (~next months). Linux client should still close cached files at 
a certain point as well though.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
