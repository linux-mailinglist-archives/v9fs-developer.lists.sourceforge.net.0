Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4484031C628
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 06:18:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBsko-0006aa-Lh; Tue, 16 Feb 2021 05:18:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <smfrench@gmail.com>) id 1lBskn-0006a5-1i
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 05:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wujt3rEkfz1gBVeqiGJuebMiBQ6EXLfMvV1N3ToSLEg=; b=eQPWge1W5ugGxz3M1/WhyENpZx
 JNw3RHTmTND6+gLT7k/tczo437YBZh4WYTt18vVfH3rmMCIoDw9yOETUQVmFGMzRzM5FpdCft/kAy
 L00fdO84RIZNQ50ufuqpUdk4mclPsOyTmVJ9zP9itNyaINmXAk9FEdbavY3rouAeIlRg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wujt3rEkfz1gBVeqiGJuebMiBQ6EXLfMvV1N3ToSLEg=; b=P0beyW7HOrddyIK4q4Yg3STBOM
 ca262kW9KykrVeS/Gg2jtDWdVP2HXH8Ml0C7G9oenwQs/+yY2Gyljtf+CagqLRXSC8FeATIAcHWcG
 stXAt2j6pJVIFFpwJfEMtrz9hFqgScHaaaYaaCc/VAG2k30LehEp/UQMScyaEpQN48QM=;
Received: from mail-lf1-f42.google.com ([209.85.167.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lBske-00AUne-ER
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 05:18:28 +0000
Received: by mail-lf1-f42.google.com with SMTP id z11so13911407lfb.9
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 15 Feb 2021 21:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wujt3rEkfz1gBVeqiGJuebMiBQ6EXLfMvV1N3ToSLEg=;
 b=G1pqEFCRklKjZBFj6/WMCJvTupO2n0FY8ZdI0lPq/s4scqtvILGzYRjptwygMdmpRa
 M+KeFCamCX7+3s612uofPbUoy+TvLFU2pQ6phK0LV2NAzy93/pvgpyeDNCKXu1m3TIsR
 /JRe1NQ7zecm8IoIWOnai/+Mb1HWXFbRLmwpW94ujHQvIiP4qK1vE9bzvHL3luJjXbCX
 v/3dxDs4i1sCs7N3E+GWC4A0+6hExVYA1awT07sNClmS58kanpx9GZxOEdpkTmEh67Sn
 MWdV18swd+PP8ozVqBEaOcsJb8YvbLp79/4tz2d3bqmg33RlROI3BkfhaKA8qUFbErCF
 pzEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wujt3rEkfz1gBVeqiGJuebMiBQ6EXLfMvV1N3ToSLEg=;
 b=J/fb8dJo1mClK+Xiu/bxliqDBy6Z2Cs62cCbgzzkqGbkbDB4IgWObsqCTbVmlBrA+c
 w2VOtc28fvpWQ/opsRV1rfdjUArkb3QGUZaz8dRJu9f7VE05qGkZ4lmYBByUnUaQmr49
 YoT2qOSJ1Lz2IuC1Obdi3Sm+HjrtTsp5IoHnLwv/GSjg7X214H9X+628fHX2qB1uGxiA
 2f8Ht6L7iV1nPG+Lm8kaapnwZU0yMf5kaCCy7liA3cthKwM3+xGHq+AEZ2cgUBUzPRgZ
 Pla1lfWGs6OhWtThnDLAF1fkKgJP9e4gsUwlLHC0wrdpkM6U9vrGFa25e0VXmsbX2R+X
 hkKA==
X-Gm-Message-State: AOAM531QvB/goZTb3mvDZW3b8r6hLnmLxJMBT13bsM4QXMuECJe1QozV
 IEwwUhJd5+ZWs6pWIVcs4hmNGdsCPwFAUZMMAxA=
X-Google-Smtp-Source: ABdhPJy9H3EXUc8XuYPIQKDxwM3oPFRhR4c+QWVWNLoFZd2YMqS0S6y9PDhVsr2YqLR65ivGiOSLLFSUYk3dT5a6PGE=
X-Received: by 2002:a05:6512:2118:: with SMTP id
 q24mr4994475lfr.133.1613452693694; 
 Mon, 15 Feb 2021 21:18:13 -0800 (PST)
MIME-Version: 1.0
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <9e49f96cd80eaf9c8ed267a7fbbcb4c6467ee790.camel@redhat.com>
 <CAH2r5mvPLivjuE=cbijzGSHOvx-hkWSWbcxpoBnJX-BR9pBskQ@mail.gmail.com>
 <20210216021015.GH2858050@casper.infradead.org>
In-Reply-To: <20210216021015.GH2858050@casper.infradead.org>
From: Steve French <smfrench@gmail.com>
Date: Mon, 15 Feb 2021 23:18:02 -0600
Message-ID: <CAH2r5mv=PZk_wn2=b0VQcaom9TEw1MGLz+qB_Ktxxm2bnV9Nig@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (smfrench[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lBske-00AUne-ER
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
>
> We're not there yet on having multiple outstanding reads.  Bill and I
> had a chat recently about how to make the readahead code detect that
> it is in a "long fat pipe" situation (as opposed to just dealing with
> a slow device), and submit extra readahead requests to make best use of
> the bandwidth and minimise blocking of the application.
>
> That's not something for the netfs code to do though; we can get into
> that situation with highly parallel SSDs.

This (readahead behavior improvements in Linux, on single large file sequential
read workloads like cp or grep) gets particularly interesting
with SMB3 as multichannel becomes more common.  With one channel having
one readahead request pending on the network is suboptimal - but not as bad as
when multichannel is negotiated. Interestingly in most cases two
network connections
to the same server (different TCP sockets,but the same mount, even in
cases where
only network adapter) can achieve better performance - but still significantly
lags Windows (and probably other clients) as in Linux we don't keep
multiple I/Os
in flight at one time (unless different files are being read at the same time
by different threads).   As network adapters are added and removed from the
server (other client typically poll to detect interface changes, and SMB3
also leverages the "witness protocol" to get notification of adapter additions
or removals) - it would be helpful to change the maximum number of
readahead requests in flight.  In addition, as the server throttles back
(reducing the number of 'credits' granted to the client) it will be important
to give hints to the readahead logic about reducing the number of
read ahead requests in flight.   Keeping multiple readahead requests
is easier to imagine when multiple processes are copying or reading
files, but there are many scenarios where we could do better with parallelizing
a single process doing copy by ensuring that there is no 'dead time' on
the network.


-- 
Thanks,

Steve


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
