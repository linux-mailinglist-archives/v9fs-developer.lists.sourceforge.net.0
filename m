Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D794319FBFD
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 19:46:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLVpk-0003xq-My; Mon, 06 Apr 2020 17:46:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1jLVpi-0003xa-0R
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 17:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nNmBf+GRC0EIGToMk4/t6rTIUh9OjAdpy4aFeKb4Rqc=; b=CzLLCwTKIm0vuUOJFx5bk4JAqv
 Nsjjn62q3ocyzYu9RqxMdeRDdLA6vALGF4Kg3LbWfx1yBmr5eJTZIrgMgdUdEWUA4F8G2/Y20oEa/
 4+ziOyoPlnv2LKoww+NgGLdPE6DFsxzcW4KA1/RVfY2vz2eSpFD909vHI0/oTXx5lbKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nNmBf+GRC0EIGToMk4/t6rTIUh9OjAdpy4aFeKb4Rqc=; b=jZmrSAKIPtgKtLDnEJ3HcxTf65
 g8hSr7WSMWCXtoGEcpll4KSc2x0jrQ1QxUkh6B2+zX9LvN6lgD8YA7IcPXPDjnb6+mrBrGopDp/nk
 cxbkmpTNbzQpOBfnfJjPRjpHvCTwYHjNdFq3xshy2iBoZ06Tw74sAdA9v9II8nue9PfY=;
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jLVpb-005kGQ-0b
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 17:46:49 +0000
Received: by mail-lj1-f196.google.com with SMTP id r7so573918ljg.13
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Apr 2020 10:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nNmBf+GRC0EIGToMk4/t6rTIUh9OjAdpy4aFeKb4Rqc=;
 b=hfU2c40KDKDREWI3c/+ZfwIxoUGC8kXZ7TPtVMQl00LsrJlpHdN1scbOc8M0YueuXz
 vQC0UqJcUs6XJVxo1sj6tZnoGwiW1ExbjzQZ41FY0L479xo0CkFn4/T04xa6mC5BTQ8Q
 g43VaoZI2VXzPbpA7qyuFqiAMi6P/SZuMDO8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nNmBf+GRC0EIGToMk4/t6rTIUh9OjAdpy4aFeKb4Rqc=;
 b=ZA0a2QX4Ls0UD4+6e496FEQn+a3nz8XBU2duFpYKPVI9CKM7r9WJN2zqJlLR++AZ/Z
 28Lh/sMXHbuCi3Jrt7fP37cULgBX/pTjTlQ4x733ifsUQCV53OyaVg7AZDKnJGNvdeb7
 feo5Cgnc8C264+cJATL77abZgfMeBBEgStTVKTvLGrgweOB3RUr3bUU2//wMDBnAw7Sl
 044LascBzQ5iHYrysTqhCql56OKf1hF3juQ4Gz15+qJZ3wkjF6Wbn2eJR24r4NmSHJD8
 jwiPlFDMhL08inNk5kh75Fldleyqc5/2UjRU1CN56mw0bpEvbBW9tKPvb9dDi3lH3xPM
 SkiQ==
X-Gm-Message-State: AGi0PuZc9wyOgCoEJAaEtyuFJs0raj8UhNqoVw01zjfBgvVrxNnHQ5wd
 d3CDTxfXgBsMM/DKANa5d5+6n44ncBI=
X-Google-Smtp-Source: APiQypJnL/lNARAWVSKD9kLK6X/98iDTY356d2ZgCcizlJVzGm9lspJPGUaQ0KWTrH+9zdDrU7nqZg==
X-Received: by 2002:a2e:9605:: with SMTP id v5mr248640ljh.258.1586195191422;
 Mon, 06 Apr 2020 10:46:31 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com.
 [209.85.167.49])
 by smtp.gmail.com with ESMTPSA id n22sm11402820lfe.8.2020.04.06.10.46.30
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 10:46:30 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id 131so159768lfh.11
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Apr 2020 10:46:30 -0700 (PDT)
X-Received: by 2002:ac2:4466:: with SMTP id y6mr2122522lfl.125.1586195189986; 
 Mon, 06 Apr 2020 10:46:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
 <20200406164057.GA18312@nautica>
 <20200406164641.GF21484@bombadil.infradead.org>
 <CAHk-=wiAiGMH=bw5N1nOVWYkE9=Pcx+mxyMwjYfGEt+14hFOVQ@mail.gmail.com>
 <20200406173957.GI21484@bombadil.infradead.org>
In-Reply-To: <20200406173957.GI21484@bombadil.infradead.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 6 Apr 2020 10:46:14 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjh0szm+btaHptV1_XMMih=c1zP5wU8MQmREVKmJSYUcA@mail.gmail.com>
Message-ID: <CAHk-=wjh0szm+btaHptV1_XMMih=c1zP5wU8MQmREVKmJSYUcA@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLVpb-005kGQ-0b
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.7
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sergey Alirzaev <l29ah@cock.li>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Apr 6, 2020 at 10:40 AM Matthew Wilcox <willy@infradead.org> wrote:
> >
> > But look at anybody who ever worked more with NFS mounts, and they got
> > used to having the 'intr' mount flag set and incomplete reads and
> > -EAGAIN as a result.
>
> That's why you had me implement TASK_KILLABLE ;-)

Oh, absolutely. We can *NOT* do this in general. Applications _will_
break if you end up just randomly breaking POSIX behavior.

But network filesystems are almost never fully POSIX anyway. And yes,
they do break some apps.  'intr' may not be a thing any more, but
other differences wrt various atomicity guarantees (or file locking)
etc still exist.

So the whole "network filesystems do odd things in corner cases" isn't
exactly unusual.

I think the O_NONBLOCK difference is one of the more benign ones.

I just think it should be documented more.

             Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
