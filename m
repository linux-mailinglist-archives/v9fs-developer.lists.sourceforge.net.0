Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FC63F302A
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 17:51:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH6nS-0000sN-Mt; Fri, 20 Aug 2021 15:51:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@kernel.org>) id 1mH6nR-0000sG-Td
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 15:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PpEycLsHT+2JDvLXnUW0fGicSeqGurTmhaJ4myvEoSI=; b=NqQPAeUrXypOVckJdOfNODCD95
 P3xU3CmLiVIAEm83+kjWXmBaDxRYCYaAmNWuJ+qOrP45K59b+Igu2haRdvdiFN6+BSnkc1Zy+bACQ
 83ps+LqVYy2A//7MT0+jo/h+2JbL4jokvYDHi7hSz9iQgIVsf/XPkcwPsPr/rvkrqJqY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PpEycLsHT+2JDvLXnUW0fGicSeqGurTmhaJ4myvEoSI=; b=d2MZGRklemBQHbpWZU/te88Xlw
 aylufdkHxBRIlYUT1sbShFDgBJeDeX4ru2Ci4xn0vT2LImeIX5F+xTDcrAkYYr0VN1UQvRJ2EgLND
 UuFX3x0EUCzORP+fwV9mAG9OT/YPpaGF47fa3+Z7T3QqFB19O9saG0zKBeAKaQA6MlZ8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH6nL-00CuFj-6v
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 15:51:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 22846610FF;
 Fri, 20 Aug 2021 15:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629474653;
 bh=sIZQJdeQo+NqJE2KGZmLQeNMkwh4uu//4yYwZFjD3y0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=s09SvCLj1uqQUR0Q5tbmN47Tw8m3PlRFK5qq3kSZrfBVGIMEr+BE0NMWEMv8T3zw3
 QOCUJjIVPNRSYvWeS3+W5A9lnkBBBze0wcOYnRayZEfK5L+fAd5NPiE34iT76qjhWD
 rVXPOHQdVKvj7Kfqw9qu4uSNMjkY+6TzWBXg2a5dgz+G6q3DDrbm6X0HWqL8pi6hT0
 Vo5nAgWfNzZrRK9otPZV0FaLalhhxjWyHJ/M6jA0R9FbctN7cEX3XjfwpD7iq71ZJN
 wg0nYiJw3K8hy/0P5lcC/ZMjeepEHoWOnV6RboA3vgkwhqo7e1uogwGwI8RDzLlshM
 21E/WCrTBZhDA==
Message-ID: <7efb04fe6e0c867e7c87d75cf3349221b08b4210.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Laight <David.Laight@ACULAB.COM>, "torvalds@linux-foundation.org"
 <torvalds@linux-foundation.org>, "linux-fsdevel@vger.kernel.org"
 <linux-fsdevel@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Date: Fri, 20 Aug 2021 11:50:51 -0400
In-Reply-To: <c1318459eaab436aacb225982c49c4b4@AcuMS.aculab.com>
References: <20210820135707.171001-1-jlayton@kernel.org>
 <20210820135707.171001-2-jlayton@kernel.org>
 <c1318459eaab436aacb225982c49c4b4@AcuMS.aculab.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2021-08-20 at 15:49 +0000,
 David Laight wrote: > From:
 Jeff Layton > > Sent: 20 August 2021 14:57 > > > > We've had
 CONFIG_MANDATORY_FILE_LOCKING
 since 2015 and a lot of distros > > have disab [...] 
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1mH6nL-00CuFj-6v
Subject: Re: [V9fs-developer] [PATCH v2 1/2] fs: warn about impending
 deprecation of mandatory locks
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
Cc: "bfields@fieldses.org" <bfields@fieldses.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "david@redhat.com" <david@redhat.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>, "w@1wt.eu" <w@1wt.eu>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "luto@kernel.org" <luto@kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "ocfs2-devel@oss.oracle.com" <ocfs2-devel@oss.oracle.com>,
 "ebiederm@xmission.com" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, 2021-08-20 at 15:49 +0000, David Laight wrote:
> From: Jeff Layton
> > Sent: 20 August 2021 14:57
> > 
> > We've had CONFIG_MANDATORY_FILE_LOCKING since 2015 and a lot of distros
> > have disabled it. Warn the stragglers that still use "-o mand" that
> > we'll be dropping support for that mount option.
> > 
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Jeff Layton <jlayton@kernel.org>
> > ---
> >  fs/namespace.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/fs/namespace.c b/fs/namespace.c
> > index ab4174a3c802..ffab0bb1e649 100644
> > --- a/fs/namespace.c
> > +++ b/fs/namespace.c
> > @@ -1716,8 +1716,16 @@ static inline bool may_mount(void)
> >  }
> > 
> >  #ifdef	CONFIG_MANDATORY_FILE_LOCKING
> > +static bool warned_mand;
> >  static inline bool may_mandlock(void)
> >  {
> > +	if (!warned_mand) {
> > +		warned_mand = true;
> > +		pr_warn("======================================================\n");
> > +		pr_warn("WARNING: the mand mount option is being deprecated and\n");
> > +		pr_warn("         will be removed in v5.15!\n");
> > +		pr_warn("======================================================\n");
> > +	}
> >  	return capable(CAP_SYS_ADMIN);
> >  }
> 
> If that is called more than once you don't want the 'inline'.
> I doubt it matters is not inlined - hardly a hot path.
> 
> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 

ACK. Of course. That really needs to not be inline. I'll fix that up in
my tree.

Thanks!
-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
