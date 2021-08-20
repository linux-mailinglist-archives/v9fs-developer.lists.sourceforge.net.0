Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D90DF3F3127
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 18:09:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH74s-0001Qi-CA; Fri, 20 Aug 2021 16:09:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <SRS0=Q8y1=NL=goodmis.org=rostedt@kernel.org>)
 id 1mH74q-0001QW-N4
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VsuNd1A9vjigXcnFL7738u6bjobA5wdLz2DYREmz1ss=; b=Q46ytivtzOC1Cf9Y6QSYWmUzFJ
 Cx23IYQ3PRSZu0g/dAhvvND/7GkTyPuoLPH2gmAfVzEEQqahWgWHNGVMbEUpszkQ3ETsqEGiusmi0
 SWm2oLqgGUi8uPc3GvR+R8UkV0d8HLXOwi4ip7kCBlJspq1Q+IfNk1VsHDtZh7Den0gQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VsuNd1A9vjigXcnFL7738u6bjobA5wdLz2DYREmz1ss=; b=jkZhzqAbPha1Bz9DZsfstvdJ4l
 8bjWwyOUZg6CIPoKLTX63lF2bQZra4g2jJH2pGIpptedMRA50AyPHVMlG5l5b6TLQpCoNXuTdwjAC
 l9KMBt+N6gbT/wQOydVwQ6bXo1bQ1/QdHZHA3TLc2qX6hD8alnptsUBYW7Y8vQsnUPgQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH74o-00CvB9-NB
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:09:04 +0000
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8898D61213;
 Fri, 20 Aug 2021 16:08:55 +0000 (UTC)
Date: Fri, 20 Aug 2021 12:08:48 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: David Hildenbrand <david@redhat.com>
Message-ID: <20210820120848.5692d25a@oasis.local.home>
In-Reply-To: <0f4f3e65-1d2d-e512-2a6f-d7d63effc479@redhat.com>
References: <20210820135707.171001-1-jlayton@kernel.org>
 <20210820135707.171001-2-jlayton@kernel.org>
 <0f4f3e65-1d2d-e512-2a6f-d7d63effc479@redhat.com>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri,
 20 Aug 2021 17:52:19 +0200 David Hildenbrand <david@redhat.com>
 wrote: > > +static bool warned_mand; > > static inline bool may_mandlock(void)
 > > { > > + if (!warned_mand) { > > + warned_mand = true;
 > > + pr_warn("======================================================\
 [...] Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1mH74o-00CvB9-NB
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
Cc: stable@vger.kernel.org, bfields@fieldses.org, linux-nfs@vger.kernel.org,
 linux-doc@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, willy@infradead.org, w@1wt.eu,
 cluster-devel@redhat.com, linux-mm@kvack.org, ebiederm@xmission.com,
 luto@kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, torvalds@linux-foundation.org,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, 20 Aug 2021 17:52:19 +0200
David Hildenbrand <david@redhat.com> wrote:

> > +static bool warned_mand;
> >   static inline bool may_mandlock(void)
> >   {
> > +	if (!warned_mand) {
> > +		warned_mand = true;
> > +		pr_warn("======================================================\n");
> > +		pr_warn("WARNING: the mand mount option is being deprecated and\n");
> > +		pr_warn("         will be removed in v5.15!\n");
> > +		pr_warn("======================================================\n");
> > +	}  
> 
> Is there a reason not to use pr_warn_once() ?

You would need a single call though, otherwise each pr_warn_once()
would have its own state that it warned once.

	const char warning[] =
		"======================================================\n"
		"WARNING: the mand mount option is being deprecated and\n"
		"         will be removed in v5.15!\n"
		"======================================================\n";

	pr_warn_once(warning);

-- Steve


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
