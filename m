Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B233F3111
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 18:06:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH72e-0003Si-Iv; Fri, 20 Aug 2021 16:06:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1mH72e-0003Sc-8P
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:06:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GF+9T0Ih6PGRDmnpF7y3m7Ek5lAEd8Onvr8y3uDPIKc=; b=fAad7k2zcaxHthI7CDSGmm2rMc
 r1aFPL//1HUZx4+a79RfGokna80ZAKxNVjTKfCI4lPOlvjHgO6PmXUOkFo0kLz9JUdOsEcKNh0yOa
 08xc1bsWwYx3hA8T+39NiUMaU+JrgtjC5fZXv0/VNp/ABX4wQF5k03/3wfKIxGfFoBbE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GF+9T0Ih6PGRDmnpF7y3m7Ek5lAEd8Onvr8y3uDPIKc=; b=eMcQkUPeobLoS7CpHz73QsJn8a
 NKX73621Gy2WX5OY0Zz9u/h++JpPjDtpAnEZtuw2/b6auw0uQ/MP2IWFTyTYvHTfgaY1etRNyEMYh
 RpZHKVuA8zoiPNlglipkm2G90yFO0YrvtzdL9h+SuNhOuXb+6YnDl4KRKqhVmD+KSv+c=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH72d-0007Dz-2d
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:06:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A85A6120F;
 Fri, 20 Aug 2021 16:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629475601;
 bh=1QCYUd2guY39hOw2llzjvrTtJB7CGjys+kLQwo6Btmk=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=mZ/2JBAHhQl+eLZehCg7K2AqdaLVrvNPVWtiwJpj9/WxH2/4paCHgwGuF4KuYVMem
 kV1J/Y7kvOvoSfG978r2jnfAZZvcoX/Eecq1N6ZgxSbOc7zxyOZB9WyYFNcXahUSLi
 n/rDVzyVbUfQ5An4kAvT3elU/aXGLU38xGCvg6BDc10/SzoehmUYy7V1F4G8k5AnRW
 rMbeyULqvkLRh6f0IhSkIIRRezMofzLEVqwfTQE35yxvF3SPBXcjNl7ykQUgaJJhvO
 wSioQS7ATqTAvZqIeMwP2/wQhQH5Ir3ppq6qag08FDJlnDHFisROCFg/QDGUZaO/ER
 VkLpu8WxV43Yg==
Message-ID: <5c533ef663b9447206754c46afcab65d107dd207.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Hildenbrand <david@redhat.com>, torvalds@linux-foundation.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri, 20 Aug 2021 12:06:38 -0400
In-Reply-To: <0f4f3e65-1d2d-e512-2a6f-d7d63effc479@redhat.com>
References: <20210820135707.171001-1-jlayton@kernel.org>
 <20210820135707.171001-2-jlayton@kernel.org>
 <0f4f3e65-1d2d-e512-2a6f-d7d63effc479@redhat.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mH72d-0007Dz-2d
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
Cc: bfields@fieldses.org, linux-nfs@vger.kernel.org, linux-doc@vger.kernel.org,
 stable@vger.kernel.org, willy@infradead.org, w@1wt.eu,
 cluster-devel@redhat.com, linux-mm@kvack.org, rostedt@goodmis.org,
 ebiederm@xmission.com, luto@kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, 2021-08-20 at 17:52 +0200, David Hildenbrand wrote:
> On 20.08.21 15:57, Jeff Layton wrote:
> > We've had CONFIG_MANDATORY_FILE_LOCKING since 2015 and a lot of distros
> > have disabled it. Warn the stragglers that still use "-o mand" that
> > we'll be dropping support for that mount option.
> > 
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Jeff Layton <jlayton@kernel.org>
> > ---
> >   fs/namespace.c | 8 ++++++++
> >   1 file changed, 8 insertions(+)
> > 
> > diff --git a/fs/namespace.c b/fs/namespace.c
> > index ab4174a3c802..ffab0bb1e649 100644
> > --- a/fs/namespace.c
> > +++ b/fs/namespace.c
> > @@ -1716,8 +1716,16 @@ static inline bool may_mount(void)
> >   }
> >   
> >   #ifdef	CONFIG_MANDATORY_FILE_LOCKING
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
> 
> 

No reason at all. I'll send out a v3 set in a bit with that change.

Thanks!
-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
