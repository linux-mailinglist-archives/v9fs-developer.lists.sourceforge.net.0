Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94941202A10
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Jun 2020 12:31:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jmxFq-0005NC-O3; Sun, 21 Jun 2020 10:31:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander.kapshuk@gmail.com>) id 1jmxFp-0005MT-H0
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 10:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LsMCxRhdCW91CmwifYJvdAgyVM3T+RUgnr+kb3EmnFs=; b=jYhjfJtXM9w+sxBEGy38W3gSbv
 ZpKJdmqdNcquHy4u3omKROBNOWr2P2RkqPNfSsZUQcIurVaxS9ZXTC2CTbmUG8+kVcwX1I8EftoVi
 aXM4ESTOV4y3C4syvoQwv0ZjlgqdonwekHg4ux0y6YSmjt1oEuI+p8KmNIb/pj1gEKXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LsMCxRhdCW91CmwifYJvdAgyVM3T+RUgnr+kb3EmnFs=; b=esiqSADslJhPd0OP5AJbZUZ1aM
 DIO8fn4Swgv2+5AbU0ZTB5p8JxQCZxEjo+Gd8lYMh0fNS2MNJWKJrx+cR3b68p7Hh4X+IUSAqkCOl
 XKbV+0Q63buePM8/9a08U6h38snNZLGWASrulXLrB6wFovWJCk5FdHFEoSTEfe7f3L58=;
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jmxFn-00AtIN-IE
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 10:31:13 +0000
Received: by mail-io1-f68.google.com with SMTP id o5so16264361iow.8
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 21 Jun 2020 03:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LsMCxRhdCW91CmwifYJvdAgyVM3T+RUgnr+kb3EmnFs=;
 b=SU1pgQI52ABIdOpJdSBMfxpi17aWi2VVmCyCts8803J66mBP10FI+0zBPbX/6OU63+
 SxrTicKKv36NpESSKXTBZVRyMOyVbag3Hx72KXQhkXAW7XXKIQxOkbCsALJGUrR52cVv
 A1HaEUHXGVUNZ2221m3ZwzwM/wTzVLBqO7mHVJ9ASXIBmIQM71hfXunqMzOoB8/QNZIV
 cJDIJwikKyD8JPzIpjjpFPsqjG8U1GgmzdH+PJE16NrpmgGMLn5Nm7NGcCeUIYxcj/oS
 9xvLFkCtbS2gq8BM7pxVT9oYe1Lj2sANQjBnCSpx4XcaQ8tzZoVCwpYHmKFO/YkiEHic
 SOXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LsMCxRhdCW91CmwifYJvdAgyVM3T+RUgnr+kb3EmnFs=;
 b=twiULXgs4VrmV8NETmvMLhButwTr5Nzjgb5kC5rzCkIQtNjA8zRT26PZ1v1TQIQSRD
 p8pKyhJCjyOfdVwI/Lxe+tHJ/4cFZ96qs5JYL33SSRhD6w8rGbPW0nq/p5aATZCmyetf
 d+Fc37Bupu9GnB2DtNXa3RV+d/AUFETGx358RFs5a/3c7iWHwR1Uvh3TuUjWgqJ1fMF8
 /28QRQjVP5F6awSwOa/mAeHqnEwkj7/1KddwI5hDzhfIygOL+pg1Iprg3QpCFCSPcK2I
 HEqhhhai7Qg+HHfDp7Y/RBi1v1RKjcykVlbOQ1J1kzl5RFsVOfsY3N59cwPTPmVcYpwC
 VmUg==
X-Gm-Message-State: AOAM532W8+IT6SFiYeprdM7rYJwEph/ss1IFXZsesPjcXSh9xzcu4l4X
 D8GNjwaS7GtZdoI4wqWj87PmnZLrTzAYhtPVoPg=
X-Google-Smtp-Source: ABdhPJwACX5THWhrfzFfUizf/8poXPvY+ktvbys5e+P0F6hUT0iHojEazcInM0IIsXlZ409X9IGqEHsDbhC1fbtMLQ8=
X-Received: by 2002:a05:6638:d05:: with SMTP id
 q5mr12005630jaj.2.1592735458655; 
 Sun, 21 Jun 2020 03:30:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200618190807.GA20699@nautica>
 <20200620201456.14304-1-alexander.kapshuk@gmail.com>
 <20200621084512.GA720@nautica>
In-Reply-To: <20200621084512.GA720@nautica>
From: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Date: Sun, 21 Jun 2020 13:30:20 +0300
Message-ID: <CAJ1xhMWe6qN9RcpmTkJVRkCs+5F=_JtdwsYuFfM7ZckwEkubhA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander.kapshuk[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 01.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.68 listed in list.dnswl.org]
X-Headers-End: 1jmxFn-00AtIN-IE
Subject: Re: [V9fs-developer] [PATCH] net/9p: Validate current->sighand in
 client.c
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Jun 21, 2020 at 11:45 AM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Alexander Kapshuk wrote on Sat, Jun 20, 2020:
> > Use (un)lock_task_sighand instead of spin_lock_irqsave and
> > spin_unlock_irqrestore to ensure current->sighand is a valid pointer as
> > suggested in the email referenced below.
>
> Thanks for v2! Patch itself looks good to me.
>
> I always add another `Link:` tag to the last version of the patch at the
> time of applying, so the message might be a bit confusing.
> Feel free to keep the link to the previous discussion but I'd rather
> just repeat a bit more of what we discussed (e.g. fix rcu not being
> dereferenced cleanly by using the task helpers as suggested) rather than
> just link to the thread
>
> Sorry for nitpicking but I think commit messages are important and it's
> better if they're understandable out of context, even if you give a link
> for further details for curious readers, it helps being able to just
> skim through git log.
>
>
> Either way I'll include the patch in my test run today or tomorrow, had
> promised it for a while...
>
> Cheers,
> --
> Dominique

Hi Dominique,

Thanks for your feedback.
Shall I simply resend the v2 patch with the commit message reworded as
you suggested, or should I make it a v3 patch instead?

One other thing I wanted to clarify is I got a message from kernel
test robot <lkp@intel.com>,
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/thread/TMTLPYU6A522JH2VCN3PNZVAP6EE5MDF/,
saying that on parisc my patch resulted in __lock_task_sighand being
undefined during modpost'ing.
I've noticed similar messages about other people's patches on the
linux-kernel mailing list with the responses stating that the issue
was at the compilation site rather than with the patch itself.
As far as I understand, that is the case with my patch also. So no
further action on that is required of me, is it?
Thanks.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
