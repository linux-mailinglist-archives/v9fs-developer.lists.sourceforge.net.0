Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 933B731DDC4
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Feb 2021 17:59:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lCQB3-00044I-I8; Wed, 17 Feb 2021 16:59:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hubcap@omnibond.com>) id 1lCQB0-00043o-64
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 16:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7sO3sUZqmmuiy5ZWICfkEsaBnSxzPGcJa4JjW5AEhLI=; b=ReSSadJI9ApzH/NODd8VY6WqPR
 ZXm1VYMW0uhIywQnd5hES5GzGrHrWOejQkbshj4+xXcfb2Ba8hnhjONJ203L4w+HeIaj2FwCejV4e
 KKeOQolqdHgbQP02OfzjjBruDjA9ctYuadhSUgqXavz83pHBq/A7tzYn2O6RKywFdfDk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7sO3sUZqmmuiy5ZWICfkEsaBnSxzPGcJa4JjW5AEhLI=; b=SyxL3f9wpEhvRe/MjnMtN0eYsI
 bqNS4SW0RQTE5M3ByIMOXie0IHlYLNCqmfHqUz2Rfy+MhXzeRkYDuFalOnd92di4H1nbGfqZLMtQE
 VHorgxohLyMoQqE4yobCop2sYWsjNQUwfmjKHxgSJ3Yj/na0qfzPF2ENS/xXEvKgPAfc=;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lCQAo-0000vn-SW
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 16:59:41 +0000
Received: by mail-ot1-f47.google.com with SMTP id 100so12633969otg.3
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 17 Feb 2021 08:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=omnibond-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7sO3sUZqmmuiy5ZWICfkEsaBnSxzPGcJa4JjW5AEhLI=;
 b=wkvcOIo/YOiyjJMcPp9t49oCoUuB0gAAXQOA0MaUAjtskFk4Y0zabPTmfPgIVj7S9X
 6m4bAQCAN+3eyk2moKhxkMLMHHsa4aCZhxjaV8ydaA1JKvJevC6E7yHwnT+GGn2n6Ozi
 46vBTDf/msm46ed3SMv2GWg6LW7yHHgTcQP8J1x7kK5lUTCGzzB3bPk5SP4FKAeyEFDz
 p6ciTaj85L6iXgw0dC/67tFnsvY0vAY/nZ4dNNdw2UUOJTgGSEEbrdVEXlJxJJZIm1BJ
 TuwrXToQ9KalPFlBbTGo7eqFOHbfFuTrqO8W7W9EGN/qBxvcyw3G+iuQ9petlOE3k5Wu
 UoWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7sO3sUZqmmuiy5ZWICfkEsaBnSxzPGcJa4JjW5AEhLI=;
 b=Pd9yJKHyEJ0OlqiiYAy488BBQmJaSz22ASZ/C1dRi22LaYQSpYoxGnoj4wSycynD2X
 8FU2zHEHT1CanN3hFbZi5wHSd49dB1iococD36hl0O3z+Xbnng0dZkuiom3nhfNvID4T
 anY6WBswZJMxcJsSLKNvBf5u8LW3vMfdOBAiQnNxgDpfStzVEW2GpxXyc/Q1yPM5LoT9
 6YLJDdBlrP7f4cP8vNOrzAxRN9ypmARFfSqC9clLPKCgyUSSufhWdY0eq1hEumrdyzKr
 ughOL36IuVPnSEkEHxlXt0mz2TjdNePLj36/6mBeu9WcC80l/uRlxd7PYEmPaxGPjwY0
 0FrA==
X-Gm-Message-State: AOAM530jqQ96xSIrL3yqurDqZXkYbm42mOie58TsYPrfEDkdMyDDkacv
 E3E2EyRRURWCOHEJwHerMzbIzdctaooIcfubaqBeWQ==
X-Google-Smtp-Source: ABdhPJwChss0o2dxG2RNWJW1xeyysww7AKgNgkTjjECbssh7P0+Vree7tQLd/y6uY6aD7E7WIsZvOGZ0HXpRVi3fZGQ=
X-Received: by 2002:a9d:6c4c:: with SMTP id g12mr66707otq.53.1613581166449;
 Wed, 17 Feb 2021 08:59:26 -0800 (PST)
MIME-Version: 1.0
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
 <20210216103215.GB27714@lst.de>
 <20210216132251.GI2858050@casper.infradead.org>
 <CAOg9mSQYBjnMsDj5pMd6MOGTY5w_ZR=pw7VRYKfP5ZwmHBj2=Q@mail.gmail.com>
 <1586931.1613576553@warthog.procyon.org.uk>
In-Reply-To: <1586931.1613576553@warthog.procyon.org.uk>
From: Mike Marshall <hubcap@omnibond.com>
Date: Wed, 17 Feb 2021 11:59:15 -0500
Message-ID: <CAOg9mSTyFX+2MMSV77hLDUpHogQ=KXO5oNduA90FLoowPGk0Jw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.47 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: omnibond.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.47 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lCQAo-0000vn-SW
Subject: Re: [V9fs-developer] [PATCH 03/33] mm: Implement readahead_control
 pageset expansion
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, Steve French <sfrench@samba.org>,
 linux-mm <linux-mm@kvack.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew has looked at how I'm fumbling about
trying to deal with Orangefs's need for much larger
than page-sized IO...

I think I need to implement orangefs_readahead
and from there fire off an asynchronous read
and while that's going I'll call readahead_page
with a rac that I've cranked up with readahead_expand
and when the read gets done I'll have plenty of pages
for the large IO I did.

Even if what I think I need to do is somewhere
near right, the async code in the Orangefs
kernel module didn't make it into the upstream
version, so I have to refurbish that. All that to
say: I don't need readahead_expand
"tomorrow", but it fits into my plan to
get Orangefs the extra pages it needs
without me having open-coded page cache
code in orangefs_readpage.

-Mike

On Wed, Feb 17, 2021 at 10:42 AM David Howells <dhowells@redhat.com> wrote:
>
> Mike Marshall <hubcap@omnibond.com> wrote:
>
> > I plan to try and use readahead_expand in Orangefs...
>
> Would it help if I shuffled the readahead_expand patch to the bottom of the
> pack?
>
> David
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
