Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31446458F71
	for <lists+v9fs-developer@lfdr.de>; Mon, 22 Nov 2021 14:32:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mp9R2-0007Bs-W9; Mon, 22 Nov 2021 13:32:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1mp9R1-0007Bl-Fb
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Nov 2021 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fhLYsN37BNK91WHy0l5pcGO68F+xD/Qi0X1ctJLUJPA=; b=cz5ntc0NvnLbM7peL0qjAt7j20
 IClrLQvcEIGjomeOrfWcpILe1TuLKLRGwVMrlW9Fpz3iRTz5a0UsSM2HNhQm8yOcHvo8WapE3f5F4
 9D9LkmpibrcNEgg4yZXuehlwLI4zg0x4wR6A/TLowGp9d7oNPs5AnE4yp3SH2Y0/n6/w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fhLYsN37BNK91WHy0l5pcGO68F+xD/Qi0X1ctJLUJPA=; b=MZ1uhPrFsXfVeKRVzXBXr/Iehc
 jAB2ZTn+vMzYwLRxNeSES9hWkxxPVjtfM9MeflcZm2453/SZvEknjJixljI3h48IIQSgQgkioVPHS
 ocXTyRPhRDDUFjRSjpfGzsyoLhG6DXQuE8nmp8Fbc2lQKmsS6xB7AvtvUNZ7fQrroNSk=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mp9Qw-0003RQ-5T
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Nov 2021 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=fhLYsN37BNK91WHy0l5pcGO68F+xD/Qi0X1ctJLUJPA=; b=afvdlbHrksI8nqCRxeFljPpIwr
 qsutE3PqllxGcYq4gEDoERF/5i/YaPzdatZMp1reCLJAvrvmhTjsLV6cuiFq5NkBp/WHGloF2QH4B
 stTwzQkUsPd7kowGNCMtTaqu+qboaNGhQUnJIqAib+sXomTGZ7l3z9/P5gbhra6br5BiEF6l2CtEa
 5AcKQZ0Z1Xc+V+MTOx49FKfh96AfghmTu8rgdHhTf2hEB2/ldE7sBazcuafRijCU0m5/pgS4Aj0Wa
 vavoeIMinNwYHuzfQ+bkZtqVphvE0TZZBSHJnCcdvkN1RzlM8196woI5cflKV8ZSO84Qw2wyBhS0R
 bFqwWNAZkVfdpY6sgKgxO7TJI5Dn36dovbd1jW9ZXxrX3JKyAdYpNoHoZ0ODcCmx646pvNQBnPWXZ
 NqnyhkfLMhP4XBz3CEUFtn8VtcHBmE0JHrhNvERamqiz+da2W077pjOXbB/8xntPF+QeOqzzlGlXs
 0HcAYH+avM2V8BFMHGBmwV0YTxCuCU4p+7XL6MJUcVaM5NSgnmDn3owzC9aiW8PwXmnhtkoL1vsEu
 70kcyvGF2sbEypaxu0lN09c0HhZn7hJLG/EDSdWlX9w1IKPkFUT0LelV3tIKIFs8zMyMr4iCJ7xdT
 BwTZuANNvgXFRxMVMdpXFAxwwwJEJj3lbm3G8tSpI=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 22 Nov 2021 14:32:23 +0100
Message-ID: <1797352.eH9cFvQebf@silver>
In-Reply-To: <YZrEPj9WLx36Pm3k@codewreck.org>
References: <YZl+eD6r0iIGzS43@codewreck.org> <4244024.q9Xco3kuGk@silver>
 <YZrEPj9WLx36Pm3k@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag, 21. November 2021 23:12:14 CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Sun, Nov 21, 2021 at 05:57:30PM +0100:
 > > > Although frankly as I said if we're going to do this, [...] 
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
X-Headers-End: 1mp9Qw-0003RQ-5T
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

On Sonntag, 21. November 2021 23:12:14 CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Sun, Nov 21, 2021 at 05:57:30PM +0100:
> > > Although frankly as I said if we're going to do this, we actual can
> > > majorate the actual max for all operations pretty easily thanks to the
> > > count parameter -- I guess it's a bit more work but we can put arbitrary
> > > values (e.g. 8k for all the small stuff) instead of trying to figure it
> > > out more precisely; I'd just like the code path to be able to do it so
> > > we only do that rechurn once.
> > 
> > Looks like we had a similar idea on this. My plan was something like this:
> > 
> > static int max_msg_size(enum msg_type) {
> > 
> >     switch (msg_type) {
> >     
> >         /* large zero copy messages */
> >         case Twrite:
> >         case Tread:
> >         
> >         case Treaddir:
> >             BUG_ON(true);
> >         
> >         /* small messages */
> >         case Tversion:
> >         ....
> >         
> >             return 8k; /* to be replaced with appropriate max value */
> >     
> >     }
> > 
> > }
> > 
> > That would be a quick start and allow to fine grade in future. It would
> > also provide a safety net, e.g. the compiler would bark if a new message
> > type is added in future.
> 
> I assume that'd only be used if the caller does not set an explicit
> limit, at which point we're basically using a constant and the function
> coud be replaced by a P9_SMALL_MSG_SIZE constant... But yes, I agree
> with the idea, it's these three calls that deal with big buffers in
> either emission or reception (might as well not allocate a 128MB send
> buffer for Tread ;))

I "think" this could be used for all 9p message types except for the listed 
former three, but I'll review the 9p specs more carefully before v4. For Tread 
and Twrite we already received the requested size, which just leaves Treaddir, 
which is however indeed tricky, because I don't think we have any info how 
many directory entries we could expect.

A simple compile time constant (e.g. one macro) could be used instead of this 
function. If you prefer a constant instead, I could go for it in v4 of course. 
For this 9p client I would recommend a function though, simply because this 
code has already seen some authors come and go over the years, so it might be 
worth the redundant code for future safety. But I'll adapt to what others 
think.

Greg, opinion?

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
