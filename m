Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4664F31C62E
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 06:22:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBsox-0006kG-2e; Tue, 16 Feb 2021 05:22:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <smfrench@gmail.com>) id 1lBsov-0006k9-R5
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 05:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r7yF3z7ORk4Hs+lXeZICPrDRsFJoinna0ZNMygBvUq4=; b=l9I1UFhnCLFJOhJPsenwkZYbSv
 C5MWsmgm3jlGxHtnOfdOAArkFpl4tQA3DqM6Qp2oxyq/iHkDwu8owv2BuI5VGfEqGXBQPy0fyzWgw
 s3ImNVVVwBZhcnWeOF2HwExjW/Di+1RgJDjJxQVIFRySkQpnBJfPzAF0wB9Aw+Uk2xLM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r7yF3z7ORk4Hs+lXeZICPrDRsFJoinna0ZNMygBvUq4=; b=XgWmMVQOZsvXcTI/xwYmOtDitb
 RbsLj8addBop55cEwZUxSsTOyVBwps6atSlrwr6L3sn8jU6+MrjSC8MxkQQC+n3HRjWJqro2n7cBq
 htRrxMuw8610uAd/13oMbP+lPvwBu1nWSD9UA9tRSGHZM5hKgDLbOMixHHopwP3p8IZE=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lBsoo-0008MI-JR
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 05:22:43 +0000
Received: by mail-lf1-f49.google.com with SMTP id w36so13976139lfu.4
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 15 Feb 2021 21:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r7yF3z7ORk4Hs+lXeZICPrDRsFJoinna0ZNMygBvUq4=;
 b=TJGb4pg5/3nrFTftQGz/Z1+ruTsxgkng2tDMWmd2HnufWq/j3+ZEwfRb6KTJoNk0E0
 fK7ZpQYejDCARUgqpiCFIQM2nK+AxdIDiQkU/cC6g1gDRMwCt3YZMbQlvl7rofEQfTC7
 MIics0Dfz3qpW8GVc6HTEv0ttKfYFB3WRvo4e8+4YQ3uQbQ8PRwd8kMVmTmQdmqEnPwy
 CVYArxPC2Qpndro6LBALYqXMeGdf34550EoY0hSkM2zHuJDz2EA4SuvklCe2GiBDKXGF
 f8lyVZy8YKFcNLxrl3fTPlRWbL/B4meelbrH/mtAN+UC+Q53aYoVM0RCQDyxLcu1DZ+p
 F6+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r7yF3z7ORk4Hs+lXeZICPrDRsFJoinna0ZNMygBvUq4=;
 b=ErAkeImeH2cVsiGGwje0rFZB2A7nX3eqebEcujlum6jQ2eIWuG/uDe0bIh7dA5hD6z
 IHrJeqRHXcC40MIU6buselduye5GuMEGsaTuCZVKem1JGO1fIls5+3pl2S+orvFudiAt
 rvd5lE1nkKHzC/KApf/6H5Esykz3AEBeG8XCotjImfcbfOINT8JNSUEh+xWLr9DM5Fua
 MPn7UT+L7ctaLzoM4ellP5MxHosmnJC9nTLArUZPET1JK5nHJukB6Z/W37MqBf3fGCyD
 afDMI7n+wamf951pkS15YJOGYm8FFCX8goehfQdNGaJDotdPiWKMNNcgVIgGwKFEkz/w
 41Mw==
X-Gm-Message-State: AOAM532Pq6Iexgc5xxLZ25XhI8uIbO3BRNEtMvS0ZD6YOte711VNmH5c
 dPsR5OQqNfMj0wgyI/ayfMp24f8uOEfbBrdWL+U=
X-Google-Smtp-Source: ABdhPJytw/XzbIWleKkW+UNIXt86HNGxwpyD+NXYNCrONiCZVl2ZgbD2MAcasnzpl4KhIL873RGx/GWBBwdp2/0yqbw=
X-Received: by 2002:a19:80d1:: with SMTP id
 b200mr11220680lfd.184.1613452951921; 
 Mon, 15 Feb 2021 21:22:31 -0800 (PST)
MIME-Version: 1.0
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <9e49f96cd80eaf9c8ed267a7fbbcb4c6467ee790.camel@redhat.com>
 <CAH2r5mvPLivjuE=cbijzGSHOvx-hkWSWbcxpoBnJX-BR9pBskQ@mail.gmail.com>
 <20210216021015.GH2858050@casper.infradead.org>
In-Reply-To: <20210216021015.GH2858050@casper.infradead.org>
From: Steve French <smfrench@gmail.com>
Date: Mon, 15 Feb 2021 23:22:20 -0600
Message-ID: <CAH2r5mv+AdiODH1TSL+SOQ5qpZ25n7Ysrp+iYxauX9sD8ehhVQ@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (smfrench[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lBsoo-0008MI-JR
Subject: Re: [V9fs-developer] [PATCH 00/33] Network fs helper library &
 fscache kiocb API [ver #3]
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs <linux-nfs@vger.kernel.org>,
 William Kucharski <william.kucharski@oracle.com>,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-afs@lists.infradead.org,
 David Howells <dhowells@redhat.com>, linux-mm <linux-mm@kvack.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 15, 2021 at 8:10 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Mon, Feb 15, 2021 at 06:40:27PM -0600, Steve French wrote:
> > It could be good if netfs simplifies the problem experienced by
> > network filesystems on Linux with readahead on large sequential reads
> > - where we don't get as much parallelism due to only having one
> > readahead request at a time (thus in many cases there is 'dead time'
> > on either the network or the file server while waiting for the next
> > readpages request to be issued).   This can be a significant
> > performance problem for current readpages when network latency is long
> > (or e.g. in cases when network encryption is enabled, and hardware
> > offload not available so time consuming on the server or client to
> > encrypt the packet).
> >
> > Do you see netfs much faster than currentreadpages for ceph?
> >
> > Have you been able to get much benefit from throttling readahead with
> > ceph from the current netfs approach for clamping i/o?
>
> The switch from readpages to readahead does help in a couple of corner
> cases.  For example, if you have two processes reading the same file at
> the same time, one will now block on the other (due to the page lock)
> rather than submitting a mess of overlapping and partial reads.

Do you have a simple repro example of this we could try (fio, dbench, iozone
etc) to get some objective perf data?

My biggest worry is making sure that the switch to netfs doesn't degrade
performance (which might be a low bar now since current network file copy
perf seems to signifcantly lag at least Windows), and in some easy to understand
scenarios want to make sure it actually helps perf.

-- 
Thanks,

Steve


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
