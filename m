Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF49A240B9D
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Aug 2020 19:06:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k5BGD-0003jP-Di; Mon, 10 Aug 2020 17:06:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1k5BGC-0003jB-3m
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 17:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bG1UX7UvzyL+s17qjFjJT/RaH5grYgUy2tkao7iejMk=; b=TUTXoNWRHf5dO/5BT+Qwu7Pf3c
 ufe3fP0CROeBQfl23Uyc27j1t+T4EygSwt2K987opTj8YIzW5rsgRZKyIiUQLe/qHVKp7tOUxzvuQ
 ZstFcRyojeFKAffPdr14Vf6G+2JkTBFy4JJxZhpUBlSEnVBlIHIBqdpsL3KGZevdRswQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bG1UX7UvzyL+s17qjFjJT/RaH5grYgUy2tkao7iejMk=; b=RMSz63dqdmQNVS19+ub+3NxjdR
 9xtL38TO8TaJQ4OqNpqwAvTMg27GUbhUwr8zoKxHCdQSei2g2r7kQ16joIW1ayxBHXEnRcDQ596KF
 Bo+1MXMZnoJ0zC5Xmf7xltGTNxmWrmsnm8G5pS3McEG9ezyb2sGOmelHSQyyN0EsUpUc=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k5BFs-005qmI-UM
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 17:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597079190;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bG1UX7UvzyL+s17qjFjJT/RaH5grYgUy2tkao7iejMk=;
 b=gXSEszn4R5yaE8Xi18eY28IJzTmzzo+mu7WpxUaGkNAcwTPdRIbitQGScLWhfbEY+yBVh8
 bF/b235hZWziI0RSayhRF9QqQM6/tu7Y1gqh5JpjOC1BeeW4HGjuXfZqZqJt2U1yafpQu7
 Dm/9XYxnG7S3ERO+V4v73q3rGs3QOic=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-ABEUP8ApOKWA_9bUN_1-nA-1; Mon, 10 Aug 2020 13:06:28 -0400
X-MC-Unique: ABEUP8ApOKWA_9bUN_1-nA-1
Received: by mail-qv1-f70.google.com with SMTP id q12so7665318qvm.19
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 Aug 2020 10:06:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=bG1UX7UvzyL+s17qjFjJT/RaH5grYgUy2tkao7iejMk=;
 b=OvIAYzQISwi5tn1xTsp5pR4y2CkZfwBI7JBwcTL4gdIaDVMCoaOr2OTAo71Du1gJjA
 GcZ9VHw3G2HmOLDiMAz9OHnky3qJyZcu6QoO92O/dV6yPgvAS3WUMWJlhQzo6lqOgFWX
 0oRsXEcBTDjCg+aK8/VbUPcaWeHF+0iFM8/dm3Ar0lbm4yup+nHifGg9rKH8bkpZ70OC
 /RqvF/G/XREXrdawDAnH3vRxNw43KVPSvts4TtsDw7EXYStZ5OdOSjMx29IoReq5hUsY
 pnSQG2+wzunBP7q3FMpVxmfNFuo4B5D/W3U9UhK4fwzOtIiVtOiTSKfW8XOpfCwydaLq
 gdNA==
X-Gm-Message-State: AOAM530ziHXk9QXScHgKZJvwrFniEmRqAzEqrVdfsRrIGVF14KfU+JuB
 Y25JCedLyZtiKLVI9BL7Z0z1VWbkLNHfAUM+heRFbT2Ofx/b0NNngs9ly7WRYh28MG9j5JA3FFe
 e/CG8855J3KXmDVyv8MwlC0Tdel1g6kLXBTs=
X-Received: by 2002:ac8:4117:: with SMTP id q23mr29005612qtl.186.1597079188355; 
 Mon, 10 Aug 2020 10:06:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxlWfqS29REyKPSWZucycGqedyBlydewM4zc1ic5w6qlLsuinsxlRcAI6mVIAmH2h++AmLqgw==
X-Received: by 2002:ac8:4117:: with SMTP id q23mr29005574qtl.186.1597079188107; 
 Mon, 10 Aug 2020 10:06:28 -0700 (PDT)
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net. [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id l1sm15922877qtp.96.2020.08.10.10.06.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Aug 2020 10:06:27 -0700 (PDT)
Message-ID: <fecc577d696f9cd58bbb2fae437c8acea170f7bf.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Wysochanski <dwysocha@redhat.com>, David Howells
 <dhowells@redhat.com>
Date: Mon, 10 Aug 2020 13:06:26 -0400
In-Reply-To: <CALF+zO=DkGmNDrrr-WxU6L1Xw8MA4+NrqVbvNMctwSKjy0Yh_w@mail.gmail.com>
References: <447452.1596109876@warthog.procyon.org.uk>
 <1851200.1596472222@warthog.procyon.org.uk>
 <667820.1597072619@warthog.procyon.org.uk>
 <CAH2r5msKipj1exNUDaSUN7h0pjanOenhSg2=EWYMv_h15yKtxg@mail.gmail.com>
 <672169.1597074488@warthog.procyon.org.uk>
 <CALF+zO=DkGmNDrrr-WxU6L1Xw8MA4+NrqVbvNMctwSKjy0Yh_w@mail.gmail.com>
User-Agent: Evolution 3.36.4 (3.36.4-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1k5BFs-005qmI-UM
Subject: Re: [V9fs-developer] [GIT PULL] fscache rewrite -- please drop for
 now
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
Cc: CIFS <linux-cifs@vger.kernel.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Eric Van Hensbergen <ericvh@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 Steve French <smfrench@gmail.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2020-08-10 at 12:35 -0400, David Wysochanski wrote:
> On Mon, Aug 10, 2020 at 11:48 AM David Howells <dhowells@redhat.com> wrote:
> > Steve French <smfrench@gmail.com> wrote:
> > 
> > > cifs.ko also can set rsize quite small (even 1K for example, although
> > > that will be more than 10x slower than the default 4MB so hopefully no
> > > one is crazy enough to do that).
> > 
> > You can set rsize < PAGE_SIZE?
> > 
> > > I can't imagine an SMB3 server negotiating an rsize or wsize smaller than
> > > 64K in today's world (and typical is 1MB to 8MB) but the user can specify a
> > > much smaller rsize on mount.  If 64K is an adequate minimum, we could change
> > > the cifs mount option parsing to require a certain minimum rsize if fscache
> > > is selected.
> > 
> > I've borrowed the 256K granule size used by various AFS implementations for
> > the moment.  A 512-byte xattr can thus hold a bitmap covering 1G of file
> > space.
> > 
> > 
> 
> Is it possible to make the granule size configurable, then reject a
> registration if the size is too small or not a power of 2?  Then a
> netfs using the API could try to set equal to rsize, and then error
> out with a message if the registration was rejected.
> 

...or maybe we should just make fscache incompatible with an
rsize that isn't an even multiple of 256k? You need to set mount options
for both, typically, so it would be fairly trivial to check this at
mount time, I'd think.

-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
