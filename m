Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EB23590AA
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 01:51:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUeQl-0000Td-41; Thu, 08 Apr 2021 23:51:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1lUeQg-0000T0-Nt
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 23:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XLF2Hy47tG/NhXLeWFJjwjLlXpGjFs6Bt2Vh546exGI=; b=MdkG0AdcDxc5A2hf25KEnr0JTe
 kiKmXI/Ra1F9piclXtrvuvTE2lbDb1fP1L3ztq7b7xBeH6o/HeF9yXfPXvqKFmHYsv4G5jw7b2ap2
 rPIQqy9QjMmn7h5XSP25/hL9ez8UBChfD6NoCBujznlIW5ThHF2bNy9O10r84WODZlII=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XLF2Hy47tG/NhXLeWFJjwjLlXpGjFs6Bt2Vh546exGI=; b=ThtAoxnaEe1438248tdpwydssN
 ntiHmRv2vJauvcnz2P8F7AZd4HENchfJLbZ8pn552Ljc6oEuo0XgxuJ4uvHmyJESHhRnJQDFW4QNH
 QE/1OWO2i04YduyRvIP8kT3DPHK1n0UKV7q9Jm+78KUA9cpm20x5LpffQWUbaeJgviUI=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lUeQQ-0079BW-Hd
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 23:51:16 +0000
Received: by mail-lf1-f54.google.com with SMTP id w28so6823007lfn.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 08 Apr 2021 16:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XLF2Hy47tG/NhXLeWFJjwjLlXpGjFs6Bt2Vh546exGI=;
 b=U1nu8PCKZ2rC+hNkH/1FtHr0pHi1eBFqU8nKatafLTnVUf8YWjf3+Y9lxaTCmPnC6N
 1maOTah5U5Ugwluf4SbyJDC0T/VIm4gmhPdxCSV5suWLxAoQA6cU1UWIC534ya5fYLAp
 8IzK2dToo8y36YbKoGVCbAg0EPiSom+ZJL01Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XLF2Hy47tG/NhXLeWFJjwjLlXpGjFs6Bt2Vh546exGI=;
 b=nMVPzQLSFL3+IDbf/B74AlX34vGAWxWcIj5jAGTqbvgWgoU/RbysdEQFJVHksn40TN
 E/yzkp+NNZ4gxKZAKLjvOVkI/+2uSN33tY9Tt8d180HNUG7Ci/yUaDJ6YLsgSVet339U
 Bm6dvZozc+s5T7wDQq0ID7dyvUhAkAJXVNJAAzbvuRFcwKDK4EBuuF4ay18ohfGBdLcF
 KLmdXFV+VHWZExmZXu+zgZNDuuStIlZY9pwyL8pQqcxvDIw6ufhESkJWW4nYNHYC+BTA
 Cj+3xYYDOhLz8q16tm0Q9pR13kISDHKkgBcoJmeRo6RH8ZVJgK3F9REo1H4CTttIxVTJ
 YI/w==
X-Gm-Message-State: AOAM530CNrJLhbEOT0qq9FbOZW+fVTzkAtoBAWuseWdZARoI3uuP2w+u
 fxIqyKrOc9WY2R6GjehdGS27PcUdDGc+mA==
X-Google-Smtp-Source: ABdhPJwNXCW1qC/NtIjVeI81nL2NkVky8HbyP5Pug4FYjR9UpQIWI1TaKJ0LjhFL/+jjep8gnO4f2A==
X-Received: by 2002:ac2:490c:: with SMTP id n12mr8178454lfi.270.1617925855748; 
 Thu, 08 Apr 2021 16:50:55 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com.
 [209.85.167.51])
 by smtp.gmail.com with ESMTPSA id w24sm78442ljh.19.2021.04.08.16.50.54
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Apr 2021 16:50:54 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id g8so6772671lfv.12
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 08 Apr 2021 16:50:54 -0700 (PDT)
X-Received: by 2002:ac2:5974:: with SMTP id h20mr5012619lfp.40.1617925853980; 
 Thu, 08 Apr 2021 16:50:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210408145057.GN2531743@casper.infradead.org>
 <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789066013.6155.9816857201817288382.stgit@warthog.procyon.org.uk>
 <46017.1617897451@warthog.procyon.org.uk>
 <136646.1617916529@warthog.procyon.org.uk>
In-Reply-To: <136646.1617916529@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 8 Apr 2021 16:50:38 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
Message-ID: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.54 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lUeQQ-0079BW-Hd
Subject: Re: [V9fs-developer] [RFC][PATCH] mm: Split page_has_private() in
 two to better handle PG_private_2
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
Cc: CIFS <linux-cifs@vger.kernel.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Josef Bacik <josef@toxicpanda.com>, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Linux-MM <linux-mm@kvack.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Apr 8, 2021 at 2:15 PM David Howells <dhowells@redhat.com> wrote:
>
> mm: Split page_has_private() in two to better handle PG_private_2

From a look through the patch and some (limited) thinking about it, I
like the patch. I think it clarifies the two very different cases, and
makes it clear that one is about that page cleanup, and the other is
about the magical reference counting. The two are separate issues,
even if for PG_private both happen to be true.

So this seems sane to me.

That said, I had a couple of reactions:

> diff --git a/include/linux/page-flags.h b/include/linux/page-flags.h
> index 04a34c08e0a6..04cb440ce06e 100644
> --- a/include/linux/page-flags.h
> +++ b/include/linux/page-flags.h
> @@ -832,14 +832,27 @@ static inline void ClearPageSlabPfmemalloc(struct page *page)
>
>  #define PAGE_FLAGS_PRIVATE                             \
>         (1UL << PG_private | 1UL << PG_private_2)

I think this should be re-named to be PAGE_FLAGS_CLEANUP, because I
don't think it makes any other sense to "combine" the two PG_private*
bits any more. No?

> +static inline int page_private_count(struct page *page)
> +{
> +       return test_bit(PG_private, &page->flags) ? 1 : 0;
> +}

Why is this open-coding the bit test, rather than just doing

        return PagePrivate(page) ? 1 : 0;

instead? In fact, since test_bit() _should_ return a 'bool', I think even just

        return PagePrivate(page);

should work and give the same result, but I could imagine that some
architecture version of "test_bit()" might return some other non-zero
value (although honestly, I think that should be fixed if so).

                Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
