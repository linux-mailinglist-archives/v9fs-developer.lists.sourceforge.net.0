Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C1145BBC2
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Nov 2021 13:22:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mprIP-0004pW-OX; Wed, 24 Nov 2021 12:22:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1mprIL-0004pK-2r
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Nov 2021 12:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rnnh51cxcefUFgbd3NlMnfTWFCiiqqU0gNz9ZYEeKqQ=; b=GCOWTqlCte0UH0tAPYG2C/nelG
 KPc9MyYX+xZxXOMw0gnUKZfZr0sXmlJD/o457PWcw5t3xT0TlloAEMZrpJ4spJ2TT4fkL8bu831sW
 uEx0ERmTPkujAj0FX9ZZgPgu52rdpKwimVZNpgRm6iuJVCUTdEkFHbYjJOL0XtARecgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rnnh51cxcefUFgbd3NlMnfTWFCiiqqU0gNz9ZYEeKqQ=; b=RQpB5yK+/us1Xr2i7tObtAgr4n
 nWIgVd/xxOanIFDL8hdGpVHkcv8mNrxbfOwBUJ+UTII0x5YVW+EHNVDVqTAHKJySEvjZ96U6O6a3H
 PRPozdMrfzXFlcVUcupcz+LEhJ3D4yDZGFCjAKKWwxDKnNJ8VXH8fnwwN3BHSPNYsisI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mprIF-007Nbo-WC
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Nov 2021 12:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=rnnh51cxcefUFgbd3NlMnfTWFCiiqqU0gNz9ZYEeKqQ=; b=k9QxUcqK8au7iZnh/L72mYkvW3
 Umrk4sMzWXXqElSYQp0PP8qp73Lo/NDHFRZkjUZbhjROBv05c4lEuDUYXnzDZRZGobJ1olY7Wrd55
 YDCYGiZTP3kHbgk8wa5VMHrhDGkGWNsnlMlaHcfBItEJW6cw4+VeQJ0fnz+QxO+hrsIb1hKm/6T82
 3a0unJy5zwzBxYspiwxrmVXSIYTSG0yGB4yEkjOrDkgdWGRVhUiguoXCB8P5S6xiBx5hkOdRydva5
 1npxH+9f4v5KTkGpG8KsayEK60NlBX7whaN6NPepLEjFK99kimaHkaH4ZoeXPEJh2eppR42NW8mSV
 ofjiN3zt8eoPAz+EAB3fpmU6w6D9DONDtwQ2sPDxpDZm6ER4dPevwrcjFk61Ew3taVmkN3gRjsFZV
 m3BmriXMBRTLzY0Y91AV+0U6wMBmm+6SK/Db6cBxfemEJk4ZjW4kb67NoAq1MPdwymTSG8NGgzJYM
 zpH5U6Ifs1SxXCOXqGAw/kES1D6POfYS+7rByII2hNsN3dPSMijVqkTo5hORKLa/UqJ4v7q60IJGZ
 jQCnXjjBWS7G/rjmvgyNvP0YkgtFE0VwTW5JbOKwYDO+IM1dmej20ZI3TG+tO7YS9RicPkTACebBI
 4AzDxFn2zIMJhvL1V/OaJ4d0jeaNBdo6aLThRwv4w=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 24 Nov 2021 13:22:20 +0100
Message-ID: <2311686.9pNgMZ9BYA@silver>
In-Reply-To: <YZwbJiFcLgwITsUe@codewreck.org>
References: <YZl+eD6r0iIGzS43@codewreck.org> <1797352.eH9cFvQebf@silver>
 <YZwbJiFcLgwITsUe@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag, 22. November 2021 23:35:18 CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Mon, Nov 22, 2021 at 02:32:23PM +0100:
 > > I "think" this could be used for all 9p message types ex [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mprIF-007Nbo-WC
Subject: Re: [V9fs-developer] [PATCH v3 6/7] 9p/trans_virtio: support larger
 msize values
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 22. November 2021 23:35:18 CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Mon, Nov 22, 2021 at 02:32:23PM +0100:
> > I "think" this could be used for all 9p message types except for the
> > listed
> > former three, but I'll review the 9p specs more carefully before v4. For
> > Tread and Twrite we already received the requested size, which just
> > leaves Treaddir, which is however indeed tricky, because I don't think we
> > have any info how many directory entries we could expect.
> 
> count in Treaddir is a number of bytes, not a number of entries -- so
> it's perfect for this as well :)

Yes it is in bytes, but it's currently always simply msize - P9_READDIRHDRSZ:
https://github.com/torvalds/linux/blob/5d9f4cf36721aba199975a9be7863a3ff5cd4b59/fs/9p/vfs_dir.c#L159

As my planned milestone for this series is max. 4 MB msize, it might be okay
for now, but it is something to keep in mind and should be checked whether it
will slow down things.

On the long term, when msize >4MB is supported, this definitely must be
addressed.

> > A simple compile time constant (e.g. one macro) could be used instead of
> > this function. If you prefer a constant instead, I could go for it in v4
> > of course. For this 9p client I would recommend a function though, simply
> > because this code has already seen some authors come and go over the
> > years, so it might be worth the redundant code for future safety. But
> > I'll adapt to what others think.
> 
> In this case a fallback constant seems simpler than a big switch like
> you've done, but honestly I'm not fussy at this point -- if you work on
> this you have the right to decide this kind of things in my opinion.
> 
> My worry with the snippet you listed is that you need to enumerate all
> calls again, so if someday the protocol is extended it'll be a place to
> forget adding new calls (although compiler warnings help with that),
> whereas a fallback constant will always work as long as it's small
> messages.
> 
> But really, as long as it's not horrible I'll take it :)

Maybe I can find a compromise. :)

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
