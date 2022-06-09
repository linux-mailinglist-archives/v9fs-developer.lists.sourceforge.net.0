Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46339544C5C
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Jun 2022 14:44:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzHWT-0006Hs-FG; Thu, 09 Jun 2022 12:44:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nzHWR-0006Hk-SL
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 12:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W2pDJyYht7VOnF3QgO48EKFIgXumd2pCO0LJ2y8eqgA=; b=ERZFQf9O3uLte42PupuinPx+hM
 ZvPY3G4w3xiz9Kp0v1wIb05dVvZMj3IaNMpaFR81GTtQs5CnapLd6NFs4/U4bkvfNzIQ43ktOhX51
 J2Y02gaZZyX2ig/QZQEuPrbJ5v3bI+TAnb0uNbKLCFaILOukt4gDUzBSzuEpYVgjb6fk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W2pDJyYht7VOnF3QgO48EKFIgXumd2pCO0LJ2y8eqgA=; b=Iuwjr3kGWwMAsYtV+MZfwyE2PP
 Wi300G09EPvM4cn2/zR/afv3O9MxbkrVrd6qj62R8U88XKuvuIR+yTjIPs/70j+RyiOQ2NcJTDwIO
 KdueJN6XSlghXnZXJLPQzCHF5PX7pf/WbV5PuPKskq2fh3uRwMOrYJ6X9N+6x81FbvUg=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzHWN-00046b-RB
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 12:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=W2pDJyYht7VOnF3QgO48EKFIgXumd2pCO0LJ2y8eqgA=; b=XwsV5kVPYRzw8zsik48ZXpsC7h
 uDwZnQpMlIxxjUheod91CQGw864EqMlZVWZq09/Mxscjowvp+hI1riI0px/ZDhl565V/TO6vVRtNx
 jlypaJo+m0C2Nml78GnSuwbLj7ltbP0bvS/hxwQ73dKzvwIr8BvEz0yItvmcrWm0XPRcVBAQW3voy
 gImgVviuU2LwSIf9TG9G/FYsLKvnNH7EUgkcysLtrvXZCvWmvAUKG/2i5/noqXURujrSPYw4VhyzW
 eo5Fk7lhbJC9C1FdTQd/H4tzIXC4wCqoWGswEfe2Lealfbs1yskeMg1AgTv5eo6KFC+SnQddzg28M
 hYXyPM6+R/vKmDbOZ/BpHYlNvHyugj9zk7IlobMnEe+k/swj+hxMCRFJMIWkqX9ip8zIAwPGYlY1y
 Xmqu+p1OZ2NfgpAB3edEsE4aYQl2AUBx7LXvHdZSlI9aKjAxClCxVUEtVkAF4H1yM66o4YqDpM3g5
 uaF2nvE2kQyUMvg7ufHN3roO+Fhi0vgn5jjHyE8M63qgOBrD8dXKyq4AxZF42nAMkdHY3T4DouP0I
 6AW/Yy897JCJUD0tfe9O2uJ+QTBGaAFy3Tdze9z5k3vDvOXALMP2pG12q6wc2sGKt7l5kmZ3mRIEw
 SgGmlyMq6DK6kIgvpoOYhgMUw534Qo6BBwPQK5wqU=;
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Tyler Hicks <tyhicks@linux.microsoft.com>
Date: Thu, 09 Jun 2022 14:44:04 +0200
Message-ID: <7291261.iO0hoOTYzs@silver>
In-Reply-To: <20220607034110.GA7401@sequoia>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
 <1849605.JvGbLJQp6r@silver> <20220607034110.GA7401@sequoia>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Dienstag, 7. Juni 2022 05:41:10 CEST Tyler Hicks wrote:
 > On 2022-06-01 16:28:49, Christian Schoenebeck wrote: > > On Dienstag, 31.
 Mai 2022 16:28:29 CEST Tyler Hicks wrote: > > > On 2022-05-30 19: [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nzHWN-00046b-RB
Subject: Re: [V9fs-developer] [PATCH v2 1/5] 9p: Fix refcounting during full
 path walks for fid lookups
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
Cc: v9fs-developer@lists.sourceforge.net, Jianyong Wu <jianyong.wu@arm.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Dienstag, 7. Juni 2022 05:41:10 CEST Tyler Hicks wrote:
> On 2022-06-01 16:28:49, Christian Schoenebeck wrote:
> > On Dienstag, 31. Mai 2022 16:28:29 CEST Tyler Hicks wrote:
> > > On 2022-05-30 19:14:43, Christian Schoenebeck wrote:
> > > > On Freitag, 27. Mai 2022 01:59:59 CEST Tyler Hicks wrote:
> > > > > Decrement the refcount of the parent dentry's fid after walking
> > > > > each path component during a full path walk for a lookup. Failure to
> > > > > do
> > > > > so can lead to fids that are not clunked until the filesystem is
> > > > > 
> > > > > unmounted, as indicated by this warning:
> > > > >  9pnet: found fid 3 not clunked
> > > > 
> > > > That explains why I saw so many fids not being clunked with recent
> > > > Linux
> > > > kernel versions while doing some 9p protocol debugging with QEMU
> > > > recently.
[...]
> 9p maintainers, is there anything else that I can help with to get this
> bug fix reviewed/merged? Thanks!

Dominique is the only active 9p maintainer for a while and barely has time for 
9p anymore (hint: implied call for volunteers hidden in this sentence).

Dominique, do you have a time slice for this issue? I agree that it makes 
sense to bring this issue forward.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
